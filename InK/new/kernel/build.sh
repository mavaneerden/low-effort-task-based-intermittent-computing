rm -rf build/
rm -rf install/

mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE=$1 .. -DCMAKE_TOOLCHAIN_FILE=../../../devices/msp430/toolchains/msp430fr5969.cmake

make install
