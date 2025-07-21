# Parameters:
# - BENCHMARK_NAME: name of the benchmark
# - INK_VERSION: 'new' or 'legacy'
# - INK_INCLULDE_DIR: include directory containing ink.h
# - INK_LIB: path to the InK library file

cmake_minimum_required(VERSION 3.22)

project("InK_Benchmarks" LANGUAGES C)

set(ARCHITECTURE_SPECIFIC_INCLUDES
    ${MSP430_INCLUDES}
)

set(INK_INCLUDE_DIR ${CMAKE_CURRENT_LIST_DIR}/../kernel)
set(INK_LIB ${CMAKE_CURRENT_LIST_DIR}/../kernel/install/lib/libInKLegacy.a)
set(DRIVERLIB ${CMAKE_CURRENT_LIST_DIR}/../../../devices/msp430/driverlib/build/MSP430FR5xx_6xx/libdriverlib.a)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/bin)

add_subdirectory(ar_eval)
add_subdirectory(bitcount_eval)
add_subdirectory(cem_eval)
add_subdirectory(cuckoo_eval)
add_subdirectory(dijkstra_eval)
add_subdirectory(fft_eval)
add_subdirectory(rsa_eval)
