
#![no_std]
#![no_main]

mod waveshare_rp2040_zero;

use core::iter::once;

use fugit::{RateExtU32, ExtU32};
use panic_halt as _;
use embedded_hal::timer::CountDown;
use waveshare_rp2040_zero::entry;
use waveshare_rp2040_zero::{
    hal::{
        clocks::{init_clocks_and_plls, Clock},
        pac,
        timer::Timer,
        watchdog::Watchdog,
        Sio,
        pio::PIOExt,
        usb::UsbBus,
        gpio::{FunctionI2C, Pin, PullUp},
        i2c::I2C
    },
    Pins, XOSC_CRYSTAL_FREQ,
};

use usb_device::{class_prelude::*, prelude::*};
use usbd_serial::SerialPort;

use smart_leds::{brightness, SmartLedsWrite, RGB8};
use ws2812_pio::Ws2812;

use bmp280_rs::{BMP280, I2CAddress, Config};

// Used to demonstrate writing formatted strings
use core::fmt::Write;
use heapless::String;

#[entry]
fn main() -> ! {
    let mut pac = pac::Peripherals::take().unwrap();
    
    let mut watchdog = Watchdog::new(pac.WATCHDOG);
    
    let clocks = init_clocks_and_plls(
        XOSC_CRYSTAL_FREQ,
        pac.XOSC,
        pac.CLOCKS,
        pac.PLL_SYS,
        pac.PLL_USB,
        &mut pac.RESETS,
        &mut watchdog,
    )
    .ok()
    .unwrap();
    let timer = Timer::new(pac.TIMER, &mut pac.RESETS, &clocks);

    let usb_bus = UsbBusAllocator::new(UsbBus::new(
        pac.USBCTRL_REGS,
        pac.USBCTRL_DPRAM,
        clocks.usb_clock,
        true,
        &mut pac.RESETS,
    ));
    // Use serial over USB
    let mut serial = SerialPort::new(&usb_bus);
    // Create a USB device with a fake VID and PID
    let mut usb_dev = UsbDeviceBuilder::new(&usb_bus, UsbVidPid(0x16c0, 0x27dd))
        .manufacturer("Fake company")
        .product("Serial port")
        .serial_number("PI_PICO")
        .device_class(2) // from: https://www.usb.org/defined-class-codes
        .build();

    let sio = Sio::new(pac.SIO);
    let pins = Pins::new(
        pac.IO_BANK0,
        pac.PADS_BANK0,
        sio.gpio_bank0,
        &mut pac.RESETS,
    );

    // Configure the addressable LED
    let (mut pio, sm0, _, _, _) = pac.PIO0.split(&mut pac.RESETS);
    let mut ws = Ws2812::new(
        // The onboard NeoPixel is attached to GPIO pin #16 on the Feather RP2040.
        pins.neopixel.into_function(),
        &mut pio,
        sm0,
        clocks.peripheral_clock.freq(),
        timer.count_down(),
    );
    ws.write(brightness(once(RGB8::new(255, 0, 0)), 50)).unwrap();
    
    // Configure two pins as being I²C, not GPIO
    let sda_pin: Pin<_, FunctionI2C, PullUp> = pins.gp4.reconfigure();
    let scl_pin: Pin<_, FunctionI2C, PullUp> = pins.gp5.reconfigure();
    // let not_an_scl_pin: Pin<_, FunctionI2C, PullUp> = pins.gpio20.reconfigure();

    // Create the I²C drive, using the two pre-configured pins. This will fail
    // at compile time if the pins are in the wrong mode, or if this I²C
    // peripheral isn't available on these pins!
    let mut i2c = I2C::i2c0(
        pac.I2C0,
        sda_pin,
        scl_pin, // Try `not_an_scl_pin` here
        400.kHz(),
        &mut pac.RESETS,
        &clocks.system_clock,
    );
    ws.write(brightness(once(RGB8::new(255, 0, 255)), 50)).unwrap();

    // Create a BMP280 driver
    let mut bmp = BMP280::new(&mut i2c, I2CAddress::SdoGrounded, Config::handheld_device_dynamic())
        .unwrap()
        .into_normal_mode(&mut i2c)
        .unwrap();
    ws.write(brightness(once(RGB8::new(0, 0, 255)), 50)).unwrap();
    
    let mut delay = timer.count_down();
    let mut i = 0;
    loop {
        if timer.get_counter().ticks() >= 2_000_000 {
            let mut text: String<64> = String::new();
            let temp = bmp.read_temperature(&mut i2c).unwrap() as f32 / 100.0;
            let pressure = bmp.read_pressure(&mut i2c).unwrap() as f32 / 256.0;
            
            writeln!(&mut text, "{} {}\r\n", temp, pressure).unwrap();
            serial.write(text.as_bytes()).unwrap();
            ws.write(brightness(once(RGB8::new(0, 255, 0)), i)).unwrap();
            i = (i + 1) % 100;
            

            delay.start(50.millis());
            let _ = nb::block!(delay.wait());
        }
        usb_dev.poll(&mut [&mut serial]);
    }
}
