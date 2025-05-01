# Parameters:
# - BENCHMARK_NAME: name of the benchmark
# - INK_VERSION: 'new' or 'legacy'
# - INK_INCLULDE_DIR: include directory containing ink.h
# - INK_LIB: path to the InK library file

cmake_minimum_required(VERSION 3.22)

set(BENCHMARK_NAME blink)

project("${BENCHMARK_NAME}_${INK_VERSION}" LANGUAGES C)

add_executable(${PROJECT_NAME}
    main.c
    thread_instrumented.c
)

# target_compile_options(
#     ${BENCHMARK_COMPILE_OPTIONS}
# )

target_include_directories(${PROJECT_NAME} PUBLIC
    ${INK_INCLUDE_DIR}
    ${ARCHITECTURE_SPECIFIC_INCLUDES}
)

target_link_libraries(${PROJECT_NAME}
    ${INK_LIB}
    /usr/lib/libdriverlib.a
)
