hunter_config(Boost
   VERSION ${HUNTER_Boost_VERSION}
   CMAKE_ARGS
      USE_CONFIG_FROM_BOOST=ON
      Boost_USE_STATIC_LIBS=ON
      Boost_NO_BOOST_CMAKE=ON
)

hunter_config(Protobuf
   URL  "https://github.com/koinos/protobuf/archive/e1b1477875a8b022903b548eb144f2c7bf4d9561.tar.gz"
   SHA1 "5796707a98eec15ffb3ad86ff50e8eec5fa65e68"
   CMAKE_ARGS
      CMAKE_CXX_FLAGS=-fvisibility=hidden
      CMAKE_C_FLAGS=-fvisibility=hidden
)

hunter_config(rocksdb
   URL "https://github.com/facebook/rocksdb/archive/v6.15.2.tar.gz"
   SHA1 "daf7ef3946fd39c910acaaa57789af8515b39251"
   CMAKE_ARGS
      WITH_TESTS=OFF
      WITH_TOOLS=OFF
      WITH_JNI=OFF
      WITH_BENCHMARK_TOOLS=OFF
      WITH_CORE_TOOLS=OFF
      WITH_GFLAGS=OFF
      PORTABLE=ON
      FAIL_ON_WARNINGS=OFF
      ROCKSDB_BUILD_SHARED=OFF
      CMAKE_CXX_FLAGS=-fvisibility=hidden
      CMAKE_C_FLAGS=-fvisibility=hidden
)

hunter_config(fizzy
   URL "https://github.com/koinos/fizzy/archive/928e89736c3dc26006858619c9267a0595d6dc5d.tar.gz"
   SHA1 "b01e92622d11fedb69b603d9a6478449879f25d1"
)

hunter_config(rabbitmq-c
   URL "https://github.com/alanxz/rabbitmq-c/archive/b8e5f43b082c5399bf1ee723c3fd3c19cecd843e.tar.gz"
   SHA1 "35d4ce3e4f0a5348de64bbed25c6e1df72da2594"
   CMAKE_ARGS
      ENABLE_SSL_SUPPORT=OFF
)

hunter_config(libsecp256k1
   URL "https://github.com/soramitsu/soramitsu-libsecp256k1/archive/c7630e1bac638c0f16ee66d4dce7b5c49eecbaa5.tar.gz"
   SHA1 "0534fa8948f279b26fd102905215a56f0ad7fa18"
)

hunter_config(libsecp256k1-vrf
   URL "https://github.com/koinos/secp256k1-vrf/archive/db479e83be5685f652a9bafefaef77246fdf3bbe.tar.gz"
   SHA1 "62df75e061c4afd6f0548f1e8267cc3da6abee15"
)

hunter_config(yaml-cpp
   VERSION "0.6.3"
   CMAKE_ARGS
      CMAKE_CXX_FLAGS=-fvisibility=hidden
      CMAKE_C_FLAGS=-fvisibility=hidden
)

hunter_config(ethash
   URL "https://github.com/chfast/ethash/archive/refs/tags/v1.0.1.tar.gz"
   SHA1 "e8dabf60ce215b6763191ffd0ac835b89b7de5e0"
   CMAKE_ARGS
      CMAKE_CXX_STANDARD=17
      CMAKE_CXX_STANDARD_REQUIRED=ON
)


hunter_config(gRPC
   VERSION 1.31.0-p0
   CMAKE_ARGS
      CMAKE_POSITION_INDEPENDENT_CODE=ON
      CMAKE_CXX_STANDARD=17
      CMAKE_CXX_STANDARD_REQUIRED=ON
)

hunter_config(abseil
   VERSION ${HUNTER_abseil_VERSION}
   CMAKE_ARGS
      CMAKE_POSITION_INDEPENDENT_CODE=ON
      CMAKE_CXX_STANDARD=17
      CMAKE_CXX_STANDARD_REQUIRED=ON
)

hunter_config(re2
   VERSION ${HUNTER_re2_VERSION}
   CMAKE_ARGS
      CMAKE_POSITION_INDEPENDENT_CODE=ON
      CMAKE_CXX_STANDARD=17
      CMAKE_CXX_STANDARD_REQUIRED=ON
)

hunter_config(c-ares
   VERSION ${HUNTER_c-ares_VERSION}
   CMAKE_ARGS
      CMAKE_POSITION_INDEPENDENT_CODE=ON
      CMAKE_CXX_STANDARD=17
      CMAKE_CXX_STANDARD_REQUIRED=ON
)

hunter_config(ZLIB
   VERSION ${HUNTER_ZLIB_VERSION}
   CMAKE_ARGS
      CMAKE_POSITION_INDEPENDENT_CODE=ON
      CMAKE_CXX_STANDARD=17
      CMAKE_CXX_STANDARD_REQUIRED=ON
)

hunter_config(koinos_log
   URL  "https://github.com/koinos/koinos-log-cpp/archive/89b59cd48bd4e41ca1d377890af1de3d393f60f8.tar.gz"
   SHA1 "165c4ccf8c7f1ac2d03c450fbc9ed415447e35f9"
   CMAKE_ARGS
      BUILD_TESTS=OFF
)

hunter_config(koinos_util
   URL  "https://github.com/koinos/koinos-util-cpp/archive/dd3e15f0b08a99082b736b901bb78c0af4ed1982.tar.gz"
   SHA1 "e5b475c10885dc5426c16a3e1122267b4a1668e1"
   CMAKE_ARGS
      BUILD_TESTS=OFF
)

hunter_config(koinos_proto
   URL  "https://github.com/koinos/koinos-proto-cpp/archive/db90e99d6f8997861db6083efb8d0805bcd51d48.tar.gz"
   SHA1 "366952245578b37bc9991e0994b7585334de7d95"
   CMAKE_ARGS
      BUILD_TESTS=OFF
)

hunter_config(koinos_exception
   URL  "https://github.com/koinos/koinos-exception-cpp/archive/5501569e8bec1c97ddc1257e25ec1149bc2b50e9.tar.gz"
   SHA1 "5c6966904fa5d28b7ea86194ef2fb4ce68fbdb59"
   CMAKE_ARGS
      BUILD_TESTS=OFF
)

hunter_config(koinos_crypto
   URL  "https://github.com/koinos/koinos-crypto-cpp/archive/2f91acfd683b824439b9844095cdc2e89f371037.tar.gz"
   SHA1 "88a3d6f6a6d029aa287f85acb4a878dc844818b1"
   CMAKE_ARGS
      BUILD_TESTS=OFF
)

hunter_config(koinos_mq
   URL  "https://github.com/koinos/koinos-mq-cpp/archive/f5cdac05a46f9a3e5b8310559f6520d9b53ca9ca.tar.gz"
   SHA1 "342a62bfa72531a6defc5ace36efec0a095cf002"
   CMAKE_ARGS
      BUILD_TESTS=OFF
)

hunter_config(koinos_state_db
   URL  "https://github.com/koinos/koinos-state-db-cpp/archive/8e9d50ed51389363d3b3fc989c3374c27ecb3534.tar.gz"
   SHA1 "cf64ee62873e17a1146cd77d8c155bf0d9340ac9"
   CMAKE_ARGS
      BUILD_TESTS=OFF
)