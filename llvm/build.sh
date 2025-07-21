BASE_DIR="$(pwd)/llvm-project"

if [ ! -d llvm-project ]; then
    echo "Download LLVM..."
    git clone --filter=blob:none --sparse --depth 1 --branch "llvmorg-20.1.4" https://github.com/llvm/llvm-project.git
    cd llvm-project
    git sparse-checkout add llvm clang cmake
    mv clang llvm/tools/
    cd ..
fi

if [ ! -d llvm-project/build ]; then
    echo "Build LLVM..."
    cd llvm-project
    mkdir -p build
    cd build
    cmake -G "Unix Makefiles" \
        -DLLVM_OPTIMIZED_TABLEGEN=1 -DLLVM_TARGETS_TO_BUILD="MSP430;X86" \
        -DCMAKE_BUILD_TYPE=Release -DCMAKE_LINKER=/usr/bin/ld.gold \
        -DCMAKE_INSTALL_PREFIX=/opt/llvm \
        -DLLVM_INCLUDE_TESTS=OFF -DLLVM_INCLUDE_BENCHMARKS=OFF \
        ../llvm
    make -j$(( $(nproc) - 2 ))
    cd ..
fi

echo "Install LLVM..."
cd llvm-project
mkdir -p install
cd build
make DESTDIR=$BASE_DIR/install install
cd ..

