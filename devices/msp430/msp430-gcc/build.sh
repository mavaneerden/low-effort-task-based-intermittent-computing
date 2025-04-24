#!/bin/bash

# Build script taken from https://github.com/TUDSSL/TICS/blob/master/msp430-gcc-tics/build.sh
msp430_gcc_version="9.3.1.11"
dirname="msp430-gcc-${msp430_gcc_version}-source-full"
buildscript="README-build.sh"

download_sources() {
    filename="$dirname.tar.bz2"
    download_url="https://dr-download.ti.com/software-development/ide-configuration-compiler-or-debugger/MD-LlCjWuAbzH/9.3.1.2/${filename}"

    if [ -d $dirname/gcc ]; then
        if [ $(ls $dirname -1 | wc -l) -gt 1 ]; then
            echo "More than gcc directory in $dirname"
            echo "This will extract the origional files to $dirname"
            echo "And will remove changed files not in the gcc directory"
            read -p "Would you like to overwrite the directory (y/N)? " -n 1 -r
            if [[ $REPLY =~ ^[Yy]$ ]]; then
                "Overwriting files..."
            else
                echo "Not overwriting files."
                return 1
            fi
        fi
    fi

    if [ ! -f $filename ]; then
        echo "Downloading $filename"
        wget "$download_url"
    fi

    echo "Extracting $filename"
    tar xvjf $filename --exclude=gcc
    echo "Done!"
    return 1
}

# Download the missing MSP430-GCC sources from Texas Instruments
echo "Downloading and extracting GCC sources"
download_sources

if [ -d $dirname/install ]; then
    # Copy the binaries so they are visible in the command line
    sudo cp -r $dirname/install/usr/local/bin /usr/local

    echo "MSP430-GCC already installed"
    exit 1
fi

# Build MSP430-GCC
cd $dirname
if [ ! -f $buildscript ]; then
    echo "Build script: $buildscript not found"
    exit 1
fi

# Make a "fast" version of the build script (make -j)
echo "Creating fast version of the build script"
sed "s/make$/make -j$(nproc)/g" ./$buildscript > ./fast-$buildscript

# Make build script executable
echo "Running build script"
chmod +x fast-$buildscript
./fast-$buildscript

# Copy the binaries so they are visible in the command line
sudo cp -r install/usr/local/bin /usr/local/
