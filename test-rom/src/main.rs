#![no_std]
#![no_main]

mod waveshare_rp2040_zero;

use core::iter::once;
use embedded_hal::timer::CountDown;
use fugit::ExtU32;
use panic_halt as _;
use waveshare_rp2040_zero::entry;
use waveshare_rp2040_zero::{
    hal::{
        clocks::{init_clocks_and_plls, Clock},
        pac,
        pio::PIOExt,
        timer::Timer,
        usb::UsbBus,
        watchdog::Watchdog,
        Sio,
    },
    Pins, XOSC_CRYSTAL_FREQ,
};
//Addressable LED imports
use smart_leds::{brightness, SmartLedsWrite, RGB8};
use ws2812_pio::Ws2812;
// USB imports
use core::fmt::Write;
use heapless::String;
use usb_device::{class_prelude::*, prelude::*};
use usbd_serial::SerialPort;

use rp2040_flash::flash;
const XIP_BASE: u32 = 0x10000000;
const PAGE_SIZE: u32 = 256;
const SECTOR_SIZE: u32 = 4 * 1024;
const PROGRAM_SIZE: u32 = SECTOR_SIZE * 67; // Protect zone for program
const FLASH_SIZE: u32 = 2 * 1024 * 1024;
use generic_array::typenum::{U256, U32};
use littlefs2::driver::Storage;
use littlefs2::fs::Filesystem;
use littlefs2::path::Path;

struct RpRom;
impl Storage for RpRom {
    type CACHE_SIZE = U256;
    type LOOKAHEAD_SIZE = U32;

    const READ_SIZE: usize = PAGE_SIZE as usize;
    const WRITE_SIZE: usize = PAGE_SIZE as usize;
    const BLOCK_SIZE: usize = SECTOR_SIZE as usize;
    const BLOCK_COUNT: usize = ((FLASH_SIZE - PROGRAM_SIZE) / SECTOR_SIZE) as usize;
    const BLOCK_CYCLES: isize = 100000;

    fn read(&mut self, addr: usize, buf: &mut [u8]) -> Result<usize, littlefs2::io::Error> {
        for i in 0..(buf.len() / PAGE_SIZE as usize) {
            unsafe {
                let read_buffer =
                    *((addr as u32 + XIP_BASE + PROGRAM_SIZE) as *const [u8; PAGE_SIZE as usize]);
                buf[(i * PAGE_SIZE as usize)..((i + 1) * PAGE_SIZE as usize)]
                    .copy_from_slice(&read_buffer[..]);
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
    ws.write(brightness(once(RGB8::new(255, 0, 0)), 100))
        .unwrap();

    while timer.get_counter().ticks() <= 2_000_000 {
        usb_dev.poll(&mut [&mut serial]);
    }
    let _ = serial.write(b"Start test !\r\n");

    let mut storage = RpRom;

    if !Filesystem::is_mountable(&mut storage) {
        let _ = serial.write(b"Format needed !\r\n");
        match Filesystem::format(&mut storage) {
            Ok(_) => (),
            Err(e) => {
                let mut text: String<64> = String::new();
                writeln!(&mut text, "Error formatting: {:?}", e).unwrap();
                let _ = serial.write(text.as_bytes());
                // rp2040_hal::halt();
            }
        }
        let _ = serial.write(b"Format done !\r\n");
    } else {
        let _ = serial.write(b"Not format needed !\r\n");
    }
    usb_dev.poll(&mut [&mut serial]);

    let mut alloc = Filesystem::allocate();
    let _ = serial.write(b"Filesystem alloc\r\n");
    let fs = Filesystem::mount(&mut alloc, &mut storage).unwrap();
    let _ = serial.write(b"Filesystem mount\r\n");
    usb_dev.poll(&mut [&mut serial]);

    let mut delay = timer.count_down();
    loop {
        let mut run_path: String<128> = String::new();
        // Create a new dir for the current run
        fs.read_dir_and_then(&Path::from_str_with_nul("/\0"), |dirs| {
            let dir_count = dirs.count() - 2; // -2 because of /. and /..
            if dir_count > 9999 {
                panic!("Too many runs, please clear the storage");
            }
            write!(&mut run_path, "run_{}", dir_count).unwrap();
            let _ = serial.write(b"Read dirs:\r\n");
            usb_dev.poll(&mut [&mut serial]);
            let _ = serial.write(run_path.as_bytes());
            usb_dev.poll(&mut [&mut serial]);
            let _ = serial.write(b"\r\n");
            usb_dev.poll(&mut [&mut serial]);
            let mut temp_str: String<128> = String::new();
            write!(&mut temp_str, "{}\0", run_path).unwrap();
            fs.create_dir(&Path::from_str_with_nul(&temp_str)).unwrap();
            let _ = serial.write(b"Create run dir\r\n");
            Ok(())
        })
        .unwrap();

        let mut temp_path: String<128> = String::new();
        write!(&mut temp_path, "{}/log\0", run_path).unwrap();

        fs.open_file_with_options_and_then(
            |options| options.read(true).append(true).create(true),
            &Path::from_str_with_nul(temp_path.as_str()),
            |file| {
                file.write(b"Test write file !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\0")?;

                let _ = serial.write(b"Write to file\r\n");
                Ok(())
            },
        )
        .unwrap();
        let _ = serial.write(b"Finish test!!\r\n");

        delay.start(1.secs());
        let _ = nb::block!(delay.wait());

        usb_dev.poll(&mut [&mut serial]);
    }
}
