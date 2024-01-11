#![no_std]
#![no_main]

mod waveshare_rp2040_zero;

use core::iter::once;
use panic_halt as _;
use fugit::ExtU32;
use embedded_hal::timer::CountDown;
use waveshare_rp2040_zero::entry;
use waveshare_rp2040_zero::{
    hal::{
        clocks::{init_clocks_and_plls, Clock},
        pac,
        pio::PIOExt,
        timer::Timer,
        watchdog::Watchdog,
        Sio,
        usb::UsbBus,
    },
    Pins, XOSC_CRYSTAL_FREQ,
};
//Addressable LED imports
use smart_leds::{brightness, SmartLedsWrite, RGB8};
use ws2812_pio::Ws2812;
// USB imports
use usb_device::{class_prelude::*, prelude::*};
use usbd_serial::SerialPort;
use heapless::String;
use core::fmt::Write;

use rp2040_flash::flash;
const XIP_BASE: u32 = 0x10000000;
const PAGE_SIZE: u32 = 256;
const SECTOR_SIZE: u32 = 4 * 1024;
const FLASH_SIZE: u32 = 2 * 1024 * 1024;

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
    ws.write(brightness(once(RGB8::new(255, 0, 0)), 100)).unwrap();

    let mut buffer = [0u8; PAGE_SIZE as usize];

    let mut delay = timer.count_down();
    loop {
        if timer.get_counter().ticks() >= 2_000_000 {
            let mut text: String<64> = String::new();
            
            unsafe {
                let addr = XIP_BASE + FLASH_SIZE - SECTOR_SIZE;
                writeln!(&mut text, "Buff = {}| Ptr = {}!", buffer[0], *(addr as *const u8)).unwrap();
                let _ = serial.write(text.as_bytes());
                cortex_m::interrupt::free(|_cs| {
                    flash::flash_range_erase_and_program(FLASH_SIZE - SECTOR_SIZE, &buffer, true);
                });
                ws.write(brightness(once(RGB8::new(0, 255, 0)), *(addr as *const u8))).unwrap();
            }
            buffer[0] += 1;

            delay.start(10.millis());
            let _ = nb::block!(delay.wait());
        }

        usb_dev.poll(&mut [&mut serial]);
    }
}
