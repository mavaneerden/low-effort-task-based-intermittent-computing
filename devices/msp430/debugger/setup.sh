# Install libmsp430.so
cd MSPDebugStack
./setup.sh
cd ..

# Install mspdebug 0.25
cd mspdebug
make
sudo make install
cd ..