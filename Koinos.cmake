list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")

option(STATIC_ANALYSIS "Run static analysis during build" OFF)
option(FORCE_COLORED_OUTPUT "Always produce ANSI-colored output (GNU/Clang only)" OFF)
option(HUNTER_RUN_UPLOAD "Upload Hunter packages to binary cache server" OFF)
option(COVERAGE "Run code coverage" OFF)
option(BUILD_TESTING "Build tests" ON)
option(BUILD_EXAMPLES "Build examples" ON)

set(SANITIZER "None" CACHE STRING "Sanitizer build type, options are: None Address Stack Thread")
set_property(CACHE SANITIZER PROPERTY STRINGS None Address Stack Thread)

set(HUNTER_CACHE_SERVERS "https://github.com/koinos/hunter-cache"
  CACHE STRING "Koinos Hunter cache server")

set(HUNTER_PASSWORDS_PATH "${CMAKE_CURRENT_LIST_DIR}/Hunter/passwords.cmake"
  CACHE FILEPATH "Koinos Hunter passwords")

include(HunterGate)

HunterGate(
  URL "https://github.com/cpp-pm/hunter/archive/v0.25.5.tar.gz"
  SHA1 "a20151e4c0740ee7d0f9994476856d813cdead29"
  FILEPATH "${CMAKE_CURRENT_LIST_DIR}/Hunter/config.cmake"
)

include(KoinosCompilerOptions)
include(KoinosStaticAnalysis)
include(KoinosCoverage)
include(KoinosUnitTests)
include(KoinosFormat)
include(KoinosAddPackage)
include(KoinosVersion)
include(KoinosGenerator)
include(KoinosGit)
include(KoinosInstall)

koinos_add_git_target()
