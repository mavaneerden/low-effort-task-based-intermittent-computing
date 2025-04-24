# Build libmsp430.so for mspdebug
cd devices/msp430/debugger
./setup.sh
cd ../../../

# Build msp430-gcc
cd devices/msp430/msp430-gcc/
./build.sh
cd ../../../
