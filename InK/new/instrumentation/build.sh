compile_tics="OFF"

if [ -z "$1" ]; then
    compile_tics="OFF"
else
    compile_tics="ON"
fi


mkdir build
cd build
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=True \
      -DCOMPILE_TICS=$compile_tics \
     -DLLVM_DIR=/usr/local/lib/cmake/llvm \
     ..
make