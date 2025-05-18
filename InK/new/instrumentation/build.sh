mkdir build
cd build
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=True \
     -DLLVM_DIR=/usr/local/lib/cmake/llvm \
     ..
make