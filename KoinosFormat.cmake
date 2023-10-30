find_program(CLANG_FORMAT clang-format)

add_custom_target(format.check)
add_custom_Target(format.fix)

function(koinos_add_format_target NAME)
  
  if (CLANG_FORMAT)
    get_target_property(TARGET_SOURCES ${NAME} SOURCES)
    get_target_property(TARGET_SOURCE_DIR ${NAME} SOURCE_DIR)
    list(TRANSFORM TARGET_SOURCES PREPEND "${TARGET_SOURCE_DIR}/")
    add_custom_target(
      ${NAME}.format.check
      COMMAND ${CLANG_FORMAT} --style=file:${PROJECT_SOURCE_DIR}/.clang-format --dry-run --Werror ${TARGET_SOURCES}
    )
    add_dependencies(format.check ${NAME}.format.check)

    add_custom_target(
      ${NAME}.format.fix
      COMMAND ${CLANG_FORMAT} --style=file:${PROJECT_SOURCE_DIR}/.clang-format -i ${TARGET_SOURCES}
    )
    add_dependencies(format.fix ${NAME}.format.fix)
  endif()
endfunction()