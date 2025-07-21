#!/bin/bash

### Build InK library ###
cd ../kernel
./build.sh $1 $2
cd ../benchmarks

### Build benchmarks ###
rm -rf build/
rm -rf bin/
mkdir build
cd build

# Configure
cmake -DCMAKE_BUILD_TYPE=$1 .. -DCMAKE_TOOLCHAIN_FILE=../../../../devices/msp430/toolchains/msp430fr5969.cmake -DRAISE_PIN=$2
# Install
make -j$(nproc)

cd ..
mkdir -p as
shopt -s nullglob

for i in bin/*; do

../../../devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/install/usr/local/bin/msp430-elf-objdump -d -S $i > as/$(basename ${i})_source.S
../../../devices/msp430/msp430-gcc/msp430-gcc-9.3.1.11-source-full/install/usr/local/bin/msp430-elf-objdump -d $i > as/$(basename ${i}).S

done
