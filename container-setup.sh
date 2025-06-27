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

# Build llvm
# cd llvm
# ./build.sh
# cd ../

# Add pip to the ancient python version
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
python3 get-pip.py
rm get-pip.py

# Install an ancient version of numpy
python3 -m pip install --upgrade pip
python3 -m pip install numpy
python3 -m pip install matplotlib

LLVM_INSTALL_DIR=$(pwd)/llvm/llvm-project/install/opt/llvm

export PATH=$LLVM_INSTALL_DIR/bin:$PATH
