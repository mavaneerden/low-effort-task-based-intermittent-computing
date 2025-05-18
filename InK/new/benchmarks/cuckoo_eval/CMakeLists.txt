# Parameters:
# - BENCHMARK_NAME: name of the benchmark
# - INK_VERSION: 'new' or 'legacy'
# - INK_INCLULDE_DIR: include directory containing ink.h
# - INK_LIB: path to the InK library file

cmake_minimum_required(VERSION 3.22)

set(BENCHMARK_NAME cuckoo_eval)

include(ink_instrumentation)

project("${BENCHMARK_NAME}" LANGUAGES C)

add_executable(${PROJECT_NAME})

# target_compile_options(
#     ${INK_BENCHMARK_COMPILE_OPTIONS}
# )

target_include_directories(${PROJECT_NAME} PUBLIC
    ${INK_INCLUDE_DIR}
    ${ARCHITECTURE_SPECIFIC_INCLUDES}
)

target_link_libraries(${PROJECT_NAME}
    ${INK_LIB}
    /usr/lib/libdriverlib.a
)

ink_instrument_file(main.c)
ink_instrument_file(thread1.c)
