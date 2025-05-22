# Parameters:
# - BENCHMARK_NAME: name of the benchmark
# - INK_VERSION: 'new' or 'legacy'
# - INK_INCLULDE_DIR: include directory containing ink.h
# - INK_LIB: path to the InK library file

cmake_minimum_required(VERSION 3.22)

set(BENCHMARK_NAME sound_fft)

include(ink_instrumentation)

project("${BENCHMARK_NAME}" LANGUAGES C)

add_executable(${PROJECT_NAME})

# target_compile_options(
#     ${INK_BENCHMARK_COMPILE_OPTIONS}
# )

file(GLOB DSPLIB_SOURCE_FILES CONFIGURE_DEPENDS
    "dsplib/source/filter/*.c"
    "dsplib/source/lea/*.c"
    "dsplib/source/matrix/*.c"
    "dsplib/source/transform/*.c"
    "dsplib/source/utility/*.c"
    "dsplib/source/vector/*.c"
)

message(WARNING ${DSPLIB_SOURCE_FILES})

target_sources(${PROJECT_NAME} PUBLIC
    ${DSPLIB_SOURCE_FILES}
)

target_include_directories(${PROJECT_NAME} PUBLIC
    ..
    .
    dsplib/include
    ${INK_INCLUDE_DIR}
    ${ARCHITECTURE_SPECIFIC_INCLUDES}
)

target_link_libraries(${PROJECT_NAME}
    ${INK_LIB}
    /usr/lib/libdriverlib.a
)

ink_instrument_file(main.c)
ink_instrument_file(thread1.c)
