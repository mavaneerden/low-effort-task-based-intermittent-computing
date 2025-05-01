# CMAKE toolchain for the MSP430FR5969 microcontroller
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR msp430)

set(MSP430_GCC_VERSION "9.3.1.11")
set(DEVICE "msp430fr5969" CACHE STRING "")
string(TOUPPER ${DEVICE} DEVICE_DEFINE)
set(DEVICE_DEFINE "__${DEVICE_DEFINE}__")

# Clang/LLVM location
#set(LLVM_TOOLS_BINARY_DIR   "/home/user/msp430-llvm/llvm-visp/src/llvm-build/bin")

# MSP430 support files
set(PATH_MSP430_SUPPORT "${CMAKE_CURRENT_LIST_DIR}/../msp430-gcc/msp430-gcc-support-files/include" CACHE STRING "")
set(PATH_MSP430_LIB "${CMAKE_CURRENT_LIST_DIR}/../msp430-gcc/msp430-gcc-${MSP430_GCC_VERSION}-source-full/install/usr/local/msp430-elf" CACHE STRING "")
set(PATH_MSP430_GCC "${CMAKE_CURRENT_LIST_DIR}/../msp430-gcc/msp430-gcc-${MSP430_GCC_VERSION}-source-full/install/usr/local/bin" CACHE STRING "")

# Device specific driverlib
set(PATH_MSP430_DRIVERS "${CMAKE_CURRENT_LIST_DIR}/../driverlib/MSP430FR5xx_6xx" CACHE STRING "")

# default linker script
set(LINKER_SCRIPT
    "${CMAKE_CURRENT_LIST_DIR}/../msp430-gcc/msp430-gcc-support-files/include/${DEVICE}.ld"
    CACHE
    FILEPATH "linkerscript"
)

set(CMAKE_C_COMPILER    "${PATH_MSP430_GCC}/msp430-elf-gcc")
set(CMAKE_CXX_COMPILER  "${PATH_MSP430_GCC}/msp430-elf-g++")
set(CMAKE_AR            "${PATH_MSP430_GCC}/msp430-elf-ar")
set(CMAKE_LINKER        "${PATH_MSP430_GCC}/msp430-elf-ld")
set(CMAKE_NM            "${PATH_MSP430_GCC}/msp430-elf-nm")
set(CMAKE_OBJDUMP       "${PATH_MSP430_GCC}/msp430-elf-objdump")
set(CMAKE_STRIP         "${PATH_MSP430_GCC}/msp430-elf-strip")
set(CMAKE_RANLIB        "${PATH_MSP430_GCC}/msp430-elf-ranlib")
set(CMAKE_SIZE          "${PATH_MSP430_GCC}/msp430-elf-size")

# Compiler flags
set(COMMON_FLAGS "-I${PATH_MSP430_SUPPORT} -I${PATH_MSP430_LIB} -I${PATH_MSP430_DRIVERS} -g3 -gdwarf-2 -gstrict-dwarf -ggdb" CACHE STRING "") #-g -gdwarf-3 -gstrict-dwarf
set(MCU_SPECIFIC_CFLAGS "-MD -mmcu=${DEVICE} -mhwmult=f5series -msmall" CACHE STRING "")
set(LLVM_SPECIFIC_CFLAGS "--target=msp430 -D${DEVICE_DEFINE} -nobuiltininc -nostdinc++ -MD" CACHE STRING "")

# Set GCC and LLVM compiler flags
set(CMAKE_C_FLAGS "${MCU_SPECIFIC_CFLAGS} ${COMMON_FLAGS}" CACHE STRING "")
set(LLVM_C_FLAGS "${LLVM_SPECIFIC_CFLAGS} ${COMMON_FLAGS}" CACHE STRING "")

# Linker flags
set(CMAKE_EXE_LINKER_FLAGS "${MCU_SPECIFIC_LINKER_FLAGS} -L${PATH_MSP430_SUPPORT} -Wl,--gc-sections -Wl,-Map,\"${PROJECT_NAME}.map\" -Wl,-lgcc -Wl,-lc -g" CACHE STRING "") #-g

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)