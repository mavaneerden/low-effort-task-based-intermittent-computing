set(INK_INSTRUMENTATION_DIR ${CMAKE_CURRENT_LIST_DIR}/../instrumentation)
set(INK_INSTRUMENTATION_SCRIPT ${INK_INSTRUMENTATION_DIR}/run.sh)

function(ink_instrument_target ARG_TARGET)
    get_target_property(SRCS ${ARG_TARGET} SOURCES)
    get_target_property(INCLUDE_DIRS ${ARG_TARGET} INCLUDE_DIRECTORIES)

    set(INCLUDE_DIRS_ARG "")
    foreach(INCLUDE_DIR ${INCLUDE_DIRS})
        set(INCLUDE_DIRS_ARG "${INCLUDE_DIRS_ARG}--extra-arg=-I${INCLUDE_DIR} ")
    endforeach()

    set(NEW_SRCS)

    foreach(SRC ${SRCS})
        # Get absolute file path & directory
        get_filename_component(ABSOLUTE_FILE_PATH "${SRC}"
                       REALPATH BASE_DIR "${CMAKE_CURRENT_LIST_DIR}")
        get_filename_component(ABSOLUTE_FILE_DIRECTORY ${ABSOLUTE_FILE_PATH} DIRECTORY)

        # Get file name
        get_filename_component(FILE_NAME ${SRC} NAME_WE)

        # Get relative directory
        file(RELATIVE_PATH RELATIVE_PATH ${CMAKE_CURRENT_LIST_DIR} ${ABSOLUTE_FILE_PATH})
        get_filename_component(FILE_DIRECTORY ${RELATIVE_PATH} DIRECTORY)

        # Get output file
        set(OUTPUT_FILE_NAME ${FILE_NAME}_instrumented.c)
        set(OUTPUT_FILE_PATH ${ABSOLUTE_FILE_DIRECTORY}/${OUTPUT_FILE_NAME})

        list(APPEND NEW_SRCS ${OUTPUT_FILE_PATH})

        add_custom_command(
            OUTPUT ${OUTPUT_FILE_PATH}
            COMMAND "${INK_INSTRUMENTATION_SCRIPT}" "${ABSOLUTE_FILE_PATH}" "${OUTPUT_FILE_NAME}" "${INCLUDE_DIRS_ARG} --extra-arg=-D${DEVICE_DEFINE}"
            WORKING_DIRECTORY ${INK_INSTRUMENTATION_DIR}
            COMMENT "Instrumenting source file '${ABSOLUTE_FILE_PATH}'..."
            VERBATIM
        )
    endforeach()

    # Replace original sources with the new instrumented sources
    set_property(
        TARGET ${ARG_TARGET}
        PROPERTY
            SOURCES ${NEW_SRCS}
    )
endfunction()
