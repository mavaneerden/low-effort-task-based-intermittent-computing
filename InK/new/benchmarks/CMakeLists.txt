# Parameters:
# - BENCHMARK_NAME: name of the benchmark
# - INK_VERSION: 'new' or 'legacy'
# - INK_INCLULDE_DIR: include directory containing ink.h
# - INK_LIB: path to the InK library file

cmake_minimum_required(VERSION 3.22)

project("InK_Benchmarks" LANGUAGES C)

set(INK_INCLUDE_DIR ${CMAKE_CURRENT_LIST_DIR}/../kernel)
set(INK_LIB ${CMAKE_CURRENT_LIST_DIR}/../kernel/install/lib/libInKLegacy.a)
set(INK_LINKER_SCRIPT ${CMAKE_CURRENT_LIST_DIR}/../kernel/linker/ink.ld)

set(CMAKE_EXE_LINKER_FLAGS "-T${INK_LINKER_SCRIPT} ${CMAKE_EXE_LINKER_FLAGS}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/bin)

add_subdirectory(blink)
