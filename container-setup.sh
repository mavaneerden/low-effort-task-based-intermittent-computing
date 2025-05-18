# Build libmsp430.so for mspdebug
cd devices/msp430/debugger
./setup.sh
cd ../../../

# Build msp430-gcc
cd devices/msp430/msp430-gcc/
./build.sh
cd ../../../

# Build driverlib
cd devices/msp430/driverlib/
./build.sh Release
cd ../../../

cd llvm
./build.sh
cd ../

LLVM_INSTALL_DIR=$(pwd)/llvm/llvm-project/install/opt/llvm

export PATH=$LLVM_INSTALL_DIR/bin:$PATH
