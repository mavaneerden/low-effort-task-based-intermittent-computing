### Build InK library ###
cd ../kernel
./build.sh $1
cd ../benchmarks

### Build instrumentation tool ###
cd ../instrumentation
./build.sh
cd ../benchmarks

### Build benchmarks ###
rm -rf build/
rm -rf bin/
mkdir build
cd build

# Configure
cmake -DCMAKE_BUILD_TYPE=$1 .. -DCMAKE_TOOLCHAIN_FILE=../../../../devices/msp430/toolchains/msp430fr5969.cmake
# Install
make