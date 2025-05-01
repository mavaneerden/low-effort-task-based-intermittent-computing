rm -rf build/
mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE=$1 .. -DCMAKE_TOOLCHAIN_FILE=../../../devices/msp430/toolchains/msp430fr5969.cmake

sudo make install
