# Copied from https://github.com/nsumner/clang-plugins-demo/blob/master/CMakeLists.txt

cmake_minimum_required(VERSION 3.12)
project(instrumentation)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules/")
list(APPEND CMAKE_MODULE_PATH "${LLVM_DIR}")

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
add_compile_options(
  "$<$<CXX_COMPILER_ID:GNU,Clang,AppleClang>:-fno-rtti;-Wall>"
  "$<$<AND:$<CXX_COMPILER_ID:GNU>,$<CONFIG:DEBUG>>:-fno-omit-frame-pointer>"
)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib")

############## LLVM CONFIGURATION #################

# LLVM_DIR must be set to the prefix of /share/llvm/cmake via commandline
find_package(LLVM REQUIRED CONFIG HINTS ${LLVM_DIR})
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

# We incorporate the CMake features provided by LLVM:
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)

# LLVM_DIR must be set to the prefix of /share/llvm/cmake via commandline
find_package(Clang REQUIRED)

message("LLVM STATUS:
  Definitions ${LLVM_DEFINITIONS}
  Includes    ${LLVM_INCLUDE_DIRS}
              ${CLANG_INCLUDE_DIRS}
  Libraries   ${LLVM_LIBRARY_DIRS}"
)

# Now set the LLVM header and library paths:
include_directories(SYSTEM ${LLVM_INCLUDE_DIRS} ${CLANG_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})
add_definitions(${LLVM_DEFINITIONS})

############## FINAL PROJECT CONFIG #################

# And the project header and library paths
include_directories(${CMAKE_SOURCE_DIR}/include)
link_directories(${LIBRARY_OUTPUT_PATH})
set(CMAKE_TEMP_LIBRARY_PATH "${PROJECT_BINARY_DIR}/lib")

# Find the libraries that correspond to the LLVM components
# that we wish to use
llvm_map_components_to_libnames(llvm_libs support core irreader)

execute_process(COMMAND bash "-c" "llvm-config --cxxflags" OUTPUT_VARIABLE compile_flags OUTPUT_STRIP_TRAILING_WHITESPACE)

execute_process(COMMAND bash "-c" "llvm-config --ldflags --libs --system-libs" OUTPUT_VARIABLE ld_flags OUTPUT_STRIP_TRAILING_WHITESPACE)

set(FUNCTION_LABELING_TARGET function_labeling)
add_executable("${FUNCTION_LABELING_TARGET}" src/function_labeling.cpp src/utils.cpp)
set_property(TARGET ${FUNCTION_LABELING_TARGET} APPEND PROPERTY COMPILE_FLAGS "-std=c++11 ${compile_flags}")
target_link_libraries(${FUNCTION_LABELING_TARGET}
    clangAST
    clangASTMatchers
    clangAnalysis
    clangBasic
    clangDriver
    clangEdit
    clangFrontend
    clangFrontendTool
    clangLex
    clangParse
    clangSema
    clangEdit
    clangRewrite
    clangRewriteFrontend
    clangStaticAnalyzerFrontend
    clangStaticAnalyzerCheckers
    clangStaticAnalyzerCore
    clangCrossTU
    clangIndex
    clangSerialization
    clangToolingCore
    clangTooling
    clangFormat
    ${llvm_libs}
)

set(POINTER_INSTRUMENTATION_MEMBERS_TARGET pointer_instrumentation_members)
add_executable("${POINTER_INSTRUMENTATION_MEMBERS_TARGET}" src/pointer_instrumentation_members.cpp src/utils.cpp)
set_property(TARGET ${POINTER_INSTRUMENTATION_MEMBERS_TARGET} APPEND PROPERTY COMPILE_FLAGS "-std=c++11 ${compile_flags}")
target_link_libraries(${POINTER_INSTRUMENTATION_MEMBERS_TARGET}
    clangAST
    clangASTMatchers
    clangAnalysis
    clangBasic
    clangDriver
    clangEdit
    clangFrontend
    clangFrontendTool
    clangLex
    clangParse
    clangSema
    clangEdit
    clangRewrite
    clangRewriteFrontend
    clangStaticAnalyzerFrontend
    clangStaticAnalyzerCheckers
    clangStaticAnalyzerCore
    clangCrossTU
    clangIndex
    clangSerialization
    clangToolingCore
    clangTooling
    clangFormat
    ${llvm_libs}
)

set(POINTER_INSTRUMENTATION_DEREFERENCE_TARGET pointer_instrumentation_dereference)
add_executable("${POINTER_INSTRUMENTATION_DEREFERENCE_TARGET}" src/pointer_instrumentation_dereference.cpp src/utils.cpp)
set_property(TARGET ${POINTER_INSTRUMENTATION_DEREFERENCE_TARGET} APPEND PROPERTY COMPILE_FLAGS "-std=c++11 ${compile_flags}")
target_link_libraries(${POINTER_INSTRUMENTATION_DEREFERENCE_TARGET}
    clangAST
    clangASTMatchers
    clangAnalysis
    clangBasic
    clangDriver
    clangEdit
    clangFrontend
    clangFrontendTool
    clangLex
    clangParse
    clangSema
    clangEdit
    clangRewrite
    clangRewriteFrontend
    clangStaticAnalyzerFrontend
    clangStaticAnalyzerCheckers
    clangStaticAnalyzerCore
    clangCrossTU
    clangIndex
    clangSerialization
    clangToolingCore
    clangTooling
    clangFormat
    ${llvm_libs}
)

set(GLOBAL_INSTRUMENTATION_TARGET variable_instrumentation)
add_executable("${GLOBAL_INSTRUMENTATION_TARGET}" src/variable_instrumentation.cpp src/utils.cpp)
set_property(TARGET ${GLOBAL_INSTRUMENTATION_TARGET} APPEND PROPERTY COMPILE_FLAGS "-std=c++11 ${compile_flags}")
target_link_libraries(${GLOBAL_INSTRUMENTATION_TARGET}
    clangAST
    clangASTMatchers
    clangAnalysis
    clangBasic
    clangDriver
    clangEdit
    clangFrontend
    clangFrontendTool
    clangLex
    clangParse
    clangSema
    clangEdit
    clangRewrite
    clangRewriteFrontend
    clangStaticAnalyzerFrontend
    clangStaticAnalyzerCheckers
    clangStaticAnalyzerCore
    clangCrossTU
    clangIndex
    clangSerialization
    clangToolingCore
    clangTooling
    clangFormat
    ${llvm_libs}
)
