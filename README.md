# Rust 2 RP2040

Repos with example code to use RUST with RP2040 microcontroller.

Package name|Description
--|--
basic-blink|RGB wheel with adressable built-in LED
multicore-serial|Use of the two core and test for writing and reading on serial console
bmp-280|Basic reading of BMP280 pressure and temperature and displaying on serial console
test-rom|Basic write and read to ROM (see last section additional deps)
test-pwm|Basic PWM generator for modelism servo (3 states test)
uart|Uart Writing

## Compile

If its the first time using rust with RP2040 you will need two dependencies (the target and elf2uf2-rs) to flash the microcontroller. In this case run the two commands:

```
rustup target add thumbv6m-none-eabi
cargo install elf2uf2-rs
```

To compile and flash the RP2040, just press the BOOT button while plugging the board in the computer. Then, just run ```cargo run --release --bin PACKAGE_NAME```.

## Additional dependancies

To be able to compile the test-rom example with little-fs you will need a [C compiler](https://github.com/rust-lang/cc-rs?tab=readme-ov-file#compile-time-requirements) and [GNU ARM toolchain](https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads)
