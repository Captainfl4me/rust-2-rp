#![no_std]
#![no_main]

mod waveshare_rp2040_zero;

use core::iter::once;
use embedded_hal::timer::CountDown;
use embedded_hal::PwmPin;
use fugit::ExtU32;
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
    },
    Pins,
    XOSC_CRYSTAL_FREQ,
};

//Addressable LED imports
use smart_leds::{brightness, SmartLedsWrite, RGB8};
use ws2812_pio::Ws2812;

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
    pwm.set_top(65089);
    pwm.set_div_int(3);
    pwm.set_div_frac(11);
    let servo_open: u16 = 1000 * 12 / (3+11/16); // Duty cycle 1000us
    let servo_neutral: u16 = 1500 * 12 / (3+11/16); // Duty cycle 1000us
    let servo_close: u16 = 1800 * 12 / (3+11/16); // Duty cycle 1800us
    pwm.enable();
    let servo_pwm = &mut pwm.channel_a;
    servo_pwm.output_to(pins.gp10);
    servo_pwm.set_duty(servo_close);

    loop{
        servo_pwm.set_duty(servo_open);
        ws.write(brightness(once(RGB8::new(0, 255, 0)), 100))
            .unwrap();
        
        delay.start(2.secs());
        let _ = nb::block!(delay.wait());
        servo_pwm.set_duty(servo_neutral);
        ws.write(brightness(once(RGB8::new(0, 0, 255)), 100))
            .unwrap();

        delay.start(2.secs());
        let _ = nb::block!(delay.wait());
        servo_pwm.set_duty(servo_close);
        ws.write(brightness(once(RGB8::new(255, 0, 0)), 100))
            .unwrap();

        delay.start(2.secs());
        let _ = nb::block!(delay.wait());
    }
}
