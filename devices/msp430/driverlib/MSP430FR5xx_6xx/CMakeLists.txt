cmake_minimum_required(VERSION 3.22)

project("driverlib" LANGUAGES C)

include(GNUInstallDirs)

FILE(GLOB SOURCES *.c)
FILE(GLOB_RECURSE HEADERS *.h)

add_library(${PROJECT_NAME} STATIC)

target_sources(${PROJECT_NAME} PUBLIC ${SOURCES})
target_include_directories(${PROJECT_NAME} PUBLIC .)

install(TARGETS ${PROJECT_NAME} DESTINATION "/usr/lib/")
