cmake_minimum_required(VERSION 3.22)

project("InK2" LANGUAGES C)

include(GNUInstallDirs)

set(INK_INSTALL_DIR ${CMAKE_SOURCE_DIR}/install)
set(INK_LINKER_SCRIPT_TEMPLATE ${CMAKE_SOURCE_DIR}/linker/ink_template.ld)
set(INK_LINKER_SCRIPT ${CMAKE_SOURCE_DIR}/linker/ink.ld)

set(PUBLIC_HEADERS
    api/include/ink.h
    api/include/init.h
    api/include/address_translation.h
    api/include/thread.h
    api/include/scheduler.h
)

add_library(${PROJECT_NAME} STATIC)

target_sources(${PROJECT_NAME}
    PUBLIC
        api/address_translation.c
        api/init.c
        api/thread.c
        api/scheduler.c
    PRIVATE
        isr/isrmanager.c
        isr/persistentqueue.c
        mcu/msp430/fram.c
        scheduler/priority.c
        scheduler/scheduler.c
        scheduler/thread.c
        timer/mcu_specifics/clk.c
        timer/persistent_timer_commit/persistent_timer.c
        timer/timer.c
)

target_include_directories(${PROJECT_NAME} PRIVATE
    .
    # ${ARCHITECTURE_SPECIFIC_INCLUDES}
)

set(CMAKE_INSTALL_PREFIX ${INK_INSTALL_DIR})

install(FILES ${PUBLIC_HEADERS} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/ink)

install(TARGETS ${PROJECT_NAME}
    PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
    INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)

add_custom_command(OUTPUT ${INK_LINKER_SCRIPT}
                   DEPENDS ${INK_LINKER_SCRIPT_TEMPLATE}
                   COMMAND ${CMAKE_C_COMPILER} -P -E -x c -CC -I ${CMAKE_C_FLAGS} ${INK_LINKER_SCRIPT_TEMPLATE} > ${INK_LINKER_SCRIPT}
                   WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
                   COMMENT "Preprocessing linker script..."
                   VERBATIM
                   )
set_target_properties(${PROJECT_NAME} PROPERTIES LINK_DEPENDS ${INK_LINKER_SCRIPT})

add_custom_target(linker_script_preprocessor DEPENDS ${INK_LINKER_SCRIPT})
add_dependencies(${PROJECT_NAME} linker_script_preprocessor)


