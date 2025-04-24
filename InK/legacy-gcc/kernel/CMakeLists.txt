cmake_minimum_required(VERSION 3.22)

project("InKLegacy" LANGUAGES C)

include(GNUInstallDirs)

set(INK_INSTALL_DIR ${CMAKE_SOURCE_DIR}/install)
set(INK_LINKER_SCRIPT_TEMPLATE ${CMAKE_SOURCE_DIR}/linker/ink_template.ld)
set(INK_LINKER_SCRIPT ${CMAKE_SOURCE_DIR}/linker/ink.ld)

add_library(${PROJECT_NAME} STATIC
    isr/isrmanager.c
    isr/persistentqueue.c
    mcu/msp430/dma.c
    mcu/msp430/msp430fr5969.c
    scheduler/priority.c
    scheduler/scheduler.c
    scheduler/thread.c
    timer/mcu_specifics/clk.c
    timer/persistent_timer_commit/persistent_timer.c
    timer/timer.c
    main.c
)

target_include_directories(${PROJECT_NAME} PRIVATE
    .
    # ${ARCHITECTURE_SPECIFIC_INCLUDES}
)

set(CMAKE_INSTALL_PREFIX
    "${INK_INSTALL_DIR}"
    CACHE PATH "Where the library will be installed to" FORCE
)

set_target_properties(${PROJECT_NAME} PROPERTIES PUBLIC_HEADER ink.h)

install(TARGETS ${PROJECT_NAME}
    EXPORT "${PROJECT_NAME}Targets"
    PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}
    INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)
