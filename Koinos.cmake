list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")

include(CheckGit)
CheckGitSetup()

find_program(CCACHE_PROGRAM ccache)
if(CCACHE_PROGRAM)
  set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE "${CCACHE_PROGRAM}")
  set(CMAKE_XCODE_ATTRIBUTE_CC           "${CMAKE_SOURCE_DIR}/ci/ccache_clang")
  set(CMAKE_XCODE_ATTRIBUTE_CXX          "${CMAKE_SOURCE_DIR}/ci/ccache_clang++")
  set(CMAKE_XCODE_ATTRIBUTE_LD           "${CMAKE_SOURCE_DIR}/ci/ccache_clang")
  set(CMAKE_XCODE_ATTRIBUTE_LDPLUSPLUS   "${CMAKE_SOURCE_DIR}/ci/ccache_clang++")
endif()

option(HUNTER_RUN_UPLOAD "Upload Hunter packages to binary cache server" OFF)

set(
  HUNTER_CACHE_SERVERS
  "https://github.com/koinos/hunter-cache"
  CACHE
  STRING
  "Default cache server"
)

set(
  HUNTER_PASSWORDS_PATH
  "${CMAKE_CURRENT_LIST_DIR}/Hunter/passwords.cmake"
  CACHE
  FILEPATH
  "Hunter passwords"
)

include(HunterGate)

HunterGate(
  URL "https://github.com/cpp-pm/hunter/archive/v0.25.0.tar.gz"
  SHA1 "a1296b351dbfaf036c92d85c1bdb461f615849fa"
  LOCAL
)

option(FORCE_COLORED_OUTPUT "Always produce ANSI-colored output (GNU/Clang only)." OFF)

# This is to force color output when using ccache with Unix Makefiles
if(${FORCE_COLORED_OUTPUT})
  if( "${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU" )
    add_compile_options(-fdiagnostics-color=always)
  elseif( "${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang" OR "${CMAKE_CXX_COMPILER_ID}" STREQUAL "AppleClang" )
    add_compile_options(-fcolor-diagnostics)
  endif ()
endif ()

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_VISIBILITY_PRESET hidden)
set(Boost_NO_BOOST_CMAKE ON)

if (MSVC)
  # warning level 4 and all warnings as errors
  add_compile_options(/W4 /WX)
else()
  # lots of warnings and all warnings as errors
  add_compile_options(-Werror -Wno-unknown-pragmas)
endif()

if(${CMAKE_GENERATOR} MATCHES "Xcode")
  set(CMAKE_XCODE_GENERATE_SCHEME YES)
endif()

include(BoostTestTargets)
include(KoinosUnitTests)

macro(koinos_coverage)
  set(options)
  set(oneValueArgs EXECUTABLE)
  set(multiValueArgs EXCLUDE)
  cmake_parse_arguments(KOINOS_COVERAGE "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})

  if(COVERAGE)
    include(CodeCoverage)
    append_coverage_compiler_flags()
    setup_target_for_coverage_lcov(
      NAME coverage
      LCOV_ARGS "--quiet" "--no-external"
      EXECUTABLE ${KOINOS_COVERAGE_EXECUTABLE}
      EXCLUDE ${KOINOS_COVERAGE_EXCLUDE})
  endif()
endmacro()

function(koinos_add_package PACKAGE)
  set(options LOCAL CONFIG REQUIRED)
  set(oneValueArgs NAME)
  set(multiValueArgs ADD_COMPONENTS FIND_COMPONENTS)
  cmake_parse_arguments(KOINOS_ADD_PACKAGE "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})

  list(APPEND HUNTER_ADD_PACKAGE_ARGS ${PACKAGE})

  if (KOINOS_ADD_PACKAGE_ADD_COMPONENTS)
    list(APPEND HUNTER_ADD_PACKAGE_ARGS COMPONENTS ${KOINOS_ADD_PACKAGE_ADD_COMPONENTS})
  endif()

  hunter_add_package(${HUNTER_ADD_PACKAGE_ARGS})

  list(APPEND FIND_PACKAGE_ARGS)

  if (KOINOS_ADD_PACKAGE_NAME)
    list(APPEND FIND_PACKAGE_ARGS ${KOINOS_ADD_PACKAGE_NAME})
  else()
    list(APPEND FIND_PACKAGE_ARGS ${PACKAGE})
  endif()
  
  if (${KOINOS_ADD_PACKAGE_CONFIG})
    list(APPEND FIND_PACKAGE_ARGS CONFIG)
  endif()

  if (${KOINOS_ADD_PACKAGE_REQUIRED})
    list(APPEND FIND_PACKAGE_ARGS REQUIRED)
  endif()

  if (KOINOS_ADD_PACKAGE_FIND_COMPONENTS)
    list(APPEND FIND_PACKAGE_ARGS COMPONENTS ${KOINOS_ADD_PACKAGE_FIND_COMPONENTS})
  endif()

  find_package(${FIND_PACKAGE_ARGS})

endfunction()
