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
const PROGRAM_SIZE: u32 = SECTOR_SIZE * 30; // Protect zone for program
const FLASH_SIZE: u32 = 2 * 1024 * 1024;
use littlefs2::driver::Storage;
use littlefs2::fs::Filesystem;
use littlefs2::path::PathBuf;
use littlefs2::io::SeekFrom;
use generic_array::typenum::U256;

struct RpRom;
impl Storage for RpRom {
    type CACHE_SIZE = U256;
    type LOOKAHEAD_SIZE = U256;

    const READ_SIZE: usize = 256;
    const WRITE_SIZE: usize = PAGE_SIZE as usize;
    const BLOCK_SIZE: usize = SECTOR_SIZE as usize;
    const BLOCK_COUNT: usize = (FLASH_SIZE-PROGRAM_SIZE / SECTOR_SIZE) as usize;
    const BLOCK_CYCLES: isize = 1000;

    fn read(&mut self, addr: usize, buf: &mut [u8]) -> Result<usize, littlefs2::io::Error> {
        for i in 0..(buf.len() / PAGE_SIZE as usize) {
            unsafe {
                let read_buffer = *((addr as u32 + XIP_BASE + PROGRAM_SIZE) as *const [u8; PAGE_SIZE as usize]);
                buf[(i*PAGE_SIZE as usize)..((i+1)*PAGE_SIZE as usize)].copy_from_slice(&read_buffer[..]);
            }
        }
        Ok(buf.len())
    }
    fn write(&mut self, addr: usize, buf: &[u8]) -> Result<usize, littlefs2::io::Error> {
        unsafe {
            cortex_m::interrupt::free(|_cs| {
                flash::flash_range_program(addr as u32 + PROGRAM_SIZE, &buf, true);
            });
        }
        Ok(buf.len())
    }
    fn erase(&mut self, addr: usize, len: usize) -> Result<usize, littlefs2::io::Error> {
        unsafe {
            cortex_m::interrupt::free(|_cs| {
                flash::flash_range_erase(addr as u32 + PROGRAM_SIZE, len as u32, true);
            });
        }
        Ok(len)
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

    while timer.get_counter().ticks() <= 1_000_000 {
        usb_dev.poll(&mut [&mut serial]);
    }
    let _ = serial.write(b"Hello !\r\n");

    let mut buffer = [0u8; 1];
    let mut storage = RpRom;
    match Filesystem::format(&mut storage) {
        Ok(_) => (),
        Err(e) => {
            let mut text: String<64> = String::new();            
            writeln!(&mut text, "Error formatting: {:?}", e).unwrap();
            let _ = serial.write(text.as_bytes());
        },
    }

    let _ = serial.write(b"Format done !\r\n");
    let mut alloc = Filesystem::allocate();
    let fs = Filesystem::mount(&mut alloc, &mut storage).unwrap();

    let mut delay = timer.count_down();
    let mut bright = [0u8; 1];
    loop {
        fs.open_file_with_options_and_then(
            |options| options.read(true).write(true).create(true),
            &PathBuf::from(b"example.txt"),
            |file| {
                file.write(&buffer)?;
                file.seek(SeekFrom::Start(0)).unwrap();
                assert_eq!(file.read(&mut bright)?, 1);
                Ok(())
            }
        ).unwrap();

        let mut text: String<64> = String::new();            
        writeln!(&mut text, "Buff = {}| Ptr = {}!", buffer[0], bright[0]).unwrap();
        let _ = serial.write(text.as_bytes());
        ws.write(brightness(once(RGB8::new(0, 255, 0)), bright[0])).unwrap();
        buffer[0] = buffer[0].wrapping_add(1);

        delay.start(50.millis());
        let _ = nb::block!(delay.wait());

        usb_dev.poll(&mut [&mut serial]);
    }
}
