set(INK_INSTRUMENTATION_DIR ${CMAKE_CURRENT_LIST_DIR}/../instrumentation)
set(INK_INSTRUMENTATION_SCRIPT ${INK_INSTRUMENTATION_DIR}/run.sh)

function(INK_INSTRUMENT_FILE FILE_PATH)
    set(ABSOLUTE_FILE_PATH ${CMAKE_CURRENT_LIST_DIR}/${FILE_PATH})

    get_filename_component(FILE_NAME ${FILE_PATH} NAME_WE)
    get_filename_component(FILE_DIRECTORY ${FILE_PATH} DIRECTORY)
    set(OUTPUT_FILE ${PROJECT_BINARY_DIR}/${FILE_DIRECTORY}/${FILE_NAME}_instrumented.c)

    add_custom_command(
        OUTPUT ${OUTPUT_FILE}
        COMMAND ${INK_INSTRUMENTATION_SCRIPT} ${ABSOLUTE_FILE_PATH} ${OUTPUT_FILE} 2>/dev/null
        WORKING_DIRECTORY ${INK_INSTRUMENTATION_DIR}
        COMMENT "Instrumenting source file '${ABSOLUTE_FILE_PATH}'..."
        VERBATIM
    )

    set_property(
        TARGET ${PROJECT_NAME}
        APPEND PROPERTY
            SOURCES ${OUTPUT_FILE}
    )
endfunction()