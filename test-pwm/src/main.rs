#![no_std]
#![no_main]

mod waveshare_rp2040_zero;

use core::iter::once;
use embedded_hal::timer::CountDown;
use embedded_hal::PwmPin;
use fugit::ExtU32;
use micromath::F32Ext;
use panic_halt as _;
use waveshare_rp2040_zero::{
    entry,
    hal::{
        clocks::{init_clocks_and_plls, Clock},
        pac,
        pio::PIOExt,
        timer::Timer,
        watchdog::Watchdog,
        Sio,
        pwm,
        usb::UsbBus,
    },
    Pins,
    XOSC_CRYSTAL_FREQ,
};

//Addressable LED imports
use smart_leds::{brightness, SmartLedsWrite, RGB8};
use ws2812_pio::Ws2812;
//USB imports
use usb_device::{class_prelude::*, prelude::*};
use usbd_serial::SerialPort;
use heapless::String;
use core::fmt::Write;

struct PWMParams {
    sys_freq: u32,
    top: u16,
    div_int: u8,
    div_frac: u8, // 4 bits
}
fn compute_pwm_params(sys_freq: u32, freq: u32) -> PWMParams {
    let freq_count = freq * 65536;
    let mut div_int = sys_freq / freq_count;
    let mut div_frac = ((((sys_freq % freq_count) * 16) / freq_count) as f32).round() as u32;

    if div_frac >= 16 {
        div_int += 1;
        div_frac = 0;
    }
    PWMParams {
        sys_freq,
        top: 65535,
        div_int: div_int as u8,
        div_frac: div_frac as u8,
    }
}
fn get_count_from_us(us: u32, pwm_params: &PWMParams) -> u16 {
    let count = (us * (pwm_params.sys_freq/1_000_000)) as f32 / (pwm_params.div_int as f32 + (pwm_params.div_frac/16) as f32);
    let round = count.round() as u32;

    if round >= 65536 {
        65535
    } else {
        round as u16
    }
}

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
    let mut delay = timer.count_down();

    let sio = Sio::new(pac.SIO);
    let pins = Pins::new(
        pac.IO_BANK0,
        pac.PADS_BANK0,
        sio.gpio_bank0,
        &mut pac.RESETS,
    );

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
    ws.write(brightness(once(RGB8::new(0, 255, 0)), 100))
        .unwrap();

    let mut pwm_slices = pwm::Slices::new(pac.PWM, &mut pac.RESETS);
    let pwm = &mut pwm_slices.pwm5;
    pwm.clr_ph_correct(); // Not use phase correct PWM Datasheet 4.5.2.1
    // Require 20ms period period(s) = ((TOP + 1) * (DIV_INT + DIV_FRAC / 16)) / fclk_MHz
    let pwm_params = compute_pwm_params(clocks.peripheral_clock.freq().to_Hz(), 50);
    pwm.set_top(pwm_params.top);
    pwm.set_div_int(pwm_params.div_int);
    pwm.set_div_frac(pwm_params.div_frac);
    let servo_open: u16 = get_count_from_us(1000, &pwm_params); // Duty cycle 1000us
    let servo_neutral: u16 = get_count_from_us(1500, &pwm_params); // Duty cycle 1000us
    let servo_close: u16 = get_count_from_us(2000, &pwm_params); // Duty cycle 1000us
    pwm.enable();
    let servo_pwm = &mut pwm.channel_a;
    servo_pwm.output_to(pins.gp10);
    servo_pwm.set_duty(servo_close);


    while timer.get_counter().ticks() < 2_000_000 {
        usb_dev.poll(&mut [&mut serial]);
    }

    let mut text: String<64> = String::new();
    writeln!(&mut text, "System clock: {} | top: {} | div: {}+{}/16", pwm_params.sys_freq, pwm_params.top, pwm_params.div_int, pwm_params.div_frac).unwrap();
    let _ = serial.write(text.as_bytes());
    usb_dev.poll(&mut [&mut serial]);

    loop{
        servo_pwm.set_duty(servo_open);
        ws.write(brightness(once(RGB8::new(0, 255, 0)), 100))
            .unwrap();
        let mut text: String<64> = String::new();
        writeln!(&mut text, "Set duty: {}", servo_open).unwrap();
        let _ = serial.write(text.as_bytes());
        usb_dev.poll(&mut [&mut serial]);
        
        delay.start(2.secs());
        let _ = nb::block!(delay.wait());
        servo_pwm.set_duty(servo_neutral);
        ws.write(brightness(once(RGB8::new(0, 0, 255)), 100))
            .unwrap();
        let mut text: String<64> = String::new();
        writeln!(&mut text, "Set duty: {}", servo_neutral).unwrap();
        let _ = serial.write(text.as_bytes());
        usb_dev.poll(&mut [&mut serial]);

        delay.start(2.secs());
        let _ = nb::block!(delay.wait());
        servo_pwm.set_duty(servo_close);
        ws.write(brightness(once(RGB8::new(255, 0, 0)), 100))
            .unwrap();
        let mut text: String<64> = String::new();
        writeln!(&mut text, "Set duty: {}", servo_close).unwrap();
        let _ = serial.write(text.as_bytes());
        usb_dev.poll(&mut [&mut serial]);

        delay.start(2.secs());
        let _ = nb::block!(delay.wait());
    }
}
