#![no_std]
#![no_main]

mod waveshare_rp2040_zero;

use core::iter::once;
use panic_halt as _;
use rp2040_flash::flash;
use smart_leds::{brightness, SmartLedsWrite, RGB8};
use waveshare_rp2040_zero::entry;
use waveshare_rp2040_zero::{
    hal::{
        clocks::{init_clocks_and_plls, Clock},
        multicore::{Multicore, Stack},
        pac,
        pio::PIOExt,
        timer::Timer,
        watchdog::Watchdog,
        Sio,
    },
    Pins, XOSC_CRYSTAL_FREQ,
};
use ws2812_pio::Ws2812;

const LOCKOUT_CORE: u32 = 0x0069;
const UNLOCKOUT_CORE: u32 = 0x4200;

#[entry]
fn main() -> ! {
    let mut pac = pac::Peripherals::take().unwrap();

    let mut vt = rp2040_hal::vector_table::VectorTable::new();
    vt.init(&mut pac.PPB);
    vt.register_handler(pac::Interrupt::SIO_IRQ_PROC0 as usize, fifo_wait_in_ram);
    unsafe {
        vt.activate(&mut pac.PPB);
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

    let mut sio = Sio::new(pac.SIO);
    let pins = Pins::new(
        pac.IO_BANK0,
        pac.PADS_BANK0,
        sio.gpio_bank0,
        &mut pac.RESETS,
    );

    let timer = Timer::new(pac.TIMER, &mut pac.RESETS, &clocks);
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

    let mut mc = Multicore::new(&mut pac.PSM, &mut pac.PPB, &mut sio.fifo);
    let cores = mc.cores();
    let core1 = &mut cores[1];
    let sys_clk_hz = clocks.system_clock.freq().to_Hz();
    let _ = core1.spawn(unsafe { &mut CORE1_STACK.mem }, move || {
        core1_task(sys_clk_hz);
    });

    critical_section::with(|_| unsafe {
        pac::NVIC::unmask(pac::Interrupt::SIO_IRQ_PROC0);
    });

    // Infinite colour wheel loop
    loop {
        ws.write(brightness(once(RGB8::new(255, 255, 255)), 100))
            .unwrap();
        delay.delay_ms(100);

        ws.write(brightness(once(RGB8::new(255, 255, 255)), 0))
            .unwrap();
        delay.delay_ms(100);
    }
}

#[inline(never)]
#[link_section = ".data.ram_func"]
extern "C" fn fifo_wait_in_ram() {
    // critical_section::with(|_| {
    if fifo_is_read_ready() {
        if fifo_read() != LOCKOUT_CORE {
            return;
        }

        loop {
            if fifo_is_read_ready() && fifo_read() == UNLOCKOUT_CORE {
                break;
            }
        }
    }

    // Drain the FIFO before returning
    while fifo_is_read_ready() {
        let _ = fifo_read();
    }
    // });
}

#[link_section = ".data.ram_func"]
pub fn fifo_is_read_ready() -> bool {
    let sio = unsafe { &(*pac::SIO::ptr()) };
    sio.fifo_st.read().vld().bit_is_set()
}

#[link_section = ".data.ram_func"]
pub fn fifo_read() -> u32 {
    let sio = unsafe { &(*pac::SIO::ptr()) };
    sio.fifo_rd.read().bits()
}

const PAGE_SIZE: u32 = 256;
const SECTOR_SIZE: u32 = 4 * 1024;
const PROGRAM_SIZE: u32 = SECTOR_SIZE * 100; // Protect zone for program
static mut CORE1_STACK: Stack<4096> = Stack::new();
fn core1_task(sys_freq: u32) -> ! {
    let pac = unsafe { pac::Peripherals::steal() };
    let core = unsafe { pac::CorePeripherals::steal() };
    let mut sio = Sio::new(pac.SIO);

    let mut delay = cortex_m::delay::Delay::new(core.SYST, sys_freq);

    loop {
        delay.delay_ms(3000);
        sio.fifo.write_blocking(LOCKOUT_CORE);
        delay.delay_ms(100);
        unsafe {
            // Simulate writing to flash
            cortex_m::interrupt::free(|_cs| {
                flash::flash_range_program(PROGRAM_SIZE, &[0x00; PAGE_SIZE as usize], true);
            });
        }
        delay.delay_ms(900);
        sio.fifo.write_blocking(UNLOCKOUT_CORE);
    }
}
