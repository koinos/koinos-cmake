list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")

option(STATIC_ANALYSIS "Run static analysis during build" OFF)
option(FORCE_COLORED_OUTPUT "Always produce ANSI-colored output (GNU/Clang only)." OFF)
option(HUNTER_RUN_UPLOAD "Upload Hunter packages to binary cache server" OFF)
option(COVERAGE "Run code coverage" OFF)

set(HUNTER_CACHE_SERVERS "https://github.com/koinos/hunter-cache"
  CACHE STRING "Koinos Hunter cache server")

set(HUNTER_PASSWORDS_PATH "${CMAKE_CURRENT_LIST_DIR}/Hunter/passwords.cmake"
  CACHE FILEPATH "Koinos Hunter passwords")

include(HunterGate)

HunterGate(
  URL "https://github.com/cpp-pm/hunter/archive/v0.25.0.tar.gz"
  SHA1 "a1296b351dbfaf036c92d85c1bdb461f615849fa"
  LOCAL
)

include(KoinosCompilerOptions)
include(KoinosStaticAnalysis)
include(KoinosCoverage)
include(KoinosTestTargets)
include(KoinosUnitTests)
include(KoinosFormat)
include(KoinosAddPackage)
include(KoinosVersion)
include(KoinosGenerator)
include(KoinosGit)

koinos_add_git_target()
