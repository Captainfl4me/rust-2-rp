# Rust 2 RP2040

Repos with example code to use RUST with RP2040 microcontroller.

Package|Description
--|--
basic-blink|RGB wheel with adressable built-in LED
multicore-serial|Use of the two core and test for writing and reading on serial console
bmp-280|Basic reading of BMP280 pressure and temperature and displaying on serial console

## Compile

To compile and flash the RP2040, just press the BOOT button while plugging the board in the computer. Then, just run ```cargo run --release --bin PACKAGE_NAME```.
