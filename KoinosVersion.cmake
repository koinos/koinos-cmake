macro(koinos_define_version)
  add_compile_definitions(KOINOS_MAJOR_VERSION=${PROJECT_VERSION_MAJOR})
  add_compile_definitions(KOINOS_MINOR_VERSION=${PROJECT_VERSION_MINOR})
  add_compile_definitions(KOINOS_PATCH_VERSION=${PROJECT_VERSION_PATCH})
endmacro()