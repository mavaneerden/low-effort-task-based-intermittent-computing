cmake_minimum_required(VERSION 3.22)

project("InK_Benchmarks" LANGUAGES C)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/../cmake)

include(ink_variables)

set(ARCHITECTURE_SPECIFIC_INCLUDES
    ${MSP430_INCLUDES}
)

set(CMAKE_EXE_LINKER_FLAGS "${INK_LINKER_FLAGS} ${CMAKE_EXE_LINKER_FLAGS}")
set(CMAKE_C_FLAGS "${INK_C_FLAGS} ${CMAKE_C_FLAGS}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/bin)

add_subdirectory(ar_eval)
add_subdirectory(bitcount_eval)
add_subdirectory(blink)
add_subdirectory(cem_eval)
add_subdirectory(cuckoo_eval)
add_subdirectory(dijkstra_eval)
add_subdirectory(fft_eval)
add_subdirectory(rsa_eval)
