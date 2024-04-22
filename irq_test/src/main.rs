#![no_std]
#![no_main]

mod waveshare_rp2040_zero;

use core::cell::RefCell;
use core::iter::once;
use critical_section::Mutex;
use fugit::ExtU32;
use panic_halt as _;
use smart_leds::{brightness, SmartLedsWrite, RGB8};
use waveshare_rp2040_zero::entry;
use waveshare_rp2040_zero::{
    hal::{
        self,
        clocks::{init_clocks_and_plls, Clock},
        pac,
        pio::PIOExt,
        timer::{Alarm, Timer},
        watchdog::Watchdog,
        Sio,
    },
    Pins, XOSC_CRYSTAL_FREQ,
};
use cortex_m::prelude::*;
use ws2812_pio::Ws2812;

static mut ALARM: Mutex<RefCell<Option<hal::timer::Alarm0>>> = Mutex::new(RefCell::new(None));

#[entry]
fn main() -> ! {
    let mut pac = pac::Peripherals::take().unwrap();

    let mut vt = rp2040_hal::vector_table::VectorTable::new();
    vt.init(&mut pac.PPB);
    vt.register_handler(pac::Interrupt::TIMER_IRQ_0 as usize, timer_irq_0);
    unsafe {
        vt.activate(&mut pac.PPB);
        pac::NVIC::unmask(pac::Interrupt::TIMER_IRQ_0);
    }

    let core = pac::CorePeripherals::take().unwrap();

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

    let sio = Sio::new(pac.SIO);
    let pins = Pins::new(
        pac.IO_BANK0,
        pac.PADS_BANK0,
        sio.gpio_bank0,
        &mut pac.RESETS,
    );

    let mut timer = Timer::new(pac.TIMER, &mut pac.RESETS, &clocks);
    let mut alarm_0 = timer.alarm_0().unwrap();
    let mut delay = cortex_m::delay::Delay::new(core.SYST, clocks.system_clock.freq().to_Hz());

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
    ws.write(brightness(once(RGB8::new(255, 0, 0)), 100))
        .unwrap();

    critical_section::with(|cs| {
        let _ = alarm_0.schedule(2.secs());
        alarm_0.enable_interrupt();

        unsafe {
            ALARM.borrow(cs).replace(Some(alarm_0));
        }
        // Unmask the timer0 IRQ so that it will generate an interrupt
        unsafe {
            pac::NVIC::unmask(pac::Interrupt::TIMER_IRQ_0);
        }
    });

    // Infinite colour wheel loop
    let mut n: u8 = 0;
    loop {
        ws.write(brightness(once(wheel(n)), 100)).unwrap();
        n = n.wrapping_add(1);

        delay.delay_ms(25);
    }
}

/// Convert a number from `0..=255` to an RGB color triplet.
///
/// The colours are a transition from red, to green, to blue and back to red.
fn wheel(mut wheel_pos: u8) -> RGB8 {
    wheel_pos = 255 - wheel_pos;
    if wheel_pos < 85 {
        // No green in this sector - red and blue only
        (255 - (wheel_pos * 3), 0, wheel_pos * 3).into()
    } else if wheel_pos < 170 {
        // No red in this sector - green and blue only
        wheel_pos -= 85;
        (0, wheel_pos * 3, 255 - (wheel_pos * 3)).into()
    } else {
        // No blue in this sector - red and green only
        wheel_pos -= 170;
        (wheel_pos * 3, 255 - (wheel_pos * 3), 0).into()
    }
}

#[inline(always)]
#[link_section = ".data.ram_func"]
extern "C" fn timer_irq_0() {
    critical_section::with(|cs| {
        let alarm = unsafe { ALARM.borrow(cs).take() };
        if let Some(mut alarm) = alarm {
            alarm.clear_interrupt();
        }

        let mut pac = unsafe { pac::Peripherals::steal() };
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
        let sio = Sio::new(pac.SIO);
        let pins = Pins::new(
            pac.IO_BANK0,
            pac.PADS_BANK0,
            sio.gpio_bank0,
            &mut pac.RESETS,
        );

        let mut delay = timer.count_down();

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

        ws.write(brightness(once(RGB8::new(255, 255, 255)), 100))
            .unwrap();

        delay.start(2.secs());
        let _ = nb::block!(delay.wait());
    });
}
