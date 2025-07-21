# Debugging & flashing for MSP430 using MSP430-GCC
To debug and flash the binaries created by MSP430-GCC on the MSP430, we need a tool called `mspdebug`.
The ubuntu package comes with several bugs, so we must use the master branch of the `mspdebug` repository.

## List of components
- `mspdebug`: master branch of https://github.com/dlbeer/mspdebug, used to install `mspdebug`.
- `MSPDebugStack`: modified master branch of https://github.com/jonathangjertsen/rpi-msp430, used to install `libmsp430.so` (a dependency of `mspdebug`).