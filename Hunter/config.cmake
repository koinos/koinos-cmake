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
   URL "https://github.com/facebook/rocksdb/archive/v8.8.1.tar.gz"
   SHA1 "ef3e82eb750013c9fec5220911213609613776d7"
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
      CMAKE_CXX_STANDARD=20
      CMAKE_CXX_STANDARD_REQUIRED=ON
)


hunter_config(gRPC
   VERSION 1.31.0-p0
   CMAKE_ARGS
      CMAKE_POSITION_INDEPENDENT_CODE=ON
      CMAKE_CXX_STANDARD=20
      CMAKE_CXX_STANDARD_REQUIRED=ON
)

hunter_config(abseil
   VERSION ${HUNTER_abseil_VERSION}
   CMAKE_ARGS
      CMAKE_POSITION_INDEPENDENT_CODE=ON
      CMAKE_CXX_STANDARD=20
      CMAKE_CXX_STANDARD_REQUIRED=ON
)

hunter_config(re2
   VERSION ${HUNTER_re2_VERSION}
   CMAKE_ARGS
      CMAKE_POSITION_INDEPENDENT_CODE=ON
      CMAKE_CXX_STANDARD=20
      CMAKE_CXX_STANDARD_REQUIRED=ON
)

hunter_config(c-ares
   VERSION ${HUNTER_c-ares_VERSION}
   CMAKE_ARGS
      CMAKE_POSITION_INDEPENDENT_CODE=ON
      CMAKE_CXX_STANDARD=20
      CMAKE_CXX_STANDARD_REQUIRED=ON
)

hunter_config(ZLIB
   VERSION ${HUNTER_ZLIB_VERSION}
   CMAKE_ARGS
      CMAKE_POSITION_INDEPENDENT_CODE=ON
      CMAKE_CXX_STANDARD=20
      CMAKE_CXX_STANDARD_REQUIRED=ON
)

if (EXISTS "${CMAKE_SOURCE_DIR}/external/log")
   hunter_config(koinos_log
      GIT_SUBMODULE "external/log"
      CMAKE_ARGS
         BUILD_TESTING=OFF
   )
else()
   hunter_config(koinos_log
      URL  "https://github.com/koinos/koinos-log-cpp/archive/d45b58b730cba2573e6098c3cdeb8f27a70645b2.tar.gz"
      SHA1 "9e7e27f81dd5d057d0981f070c17daeccf50d0de"
      CMAKE_ARGS
         BUILD_TESTING=OFF
   )
endif()

if (EXISTS "${CMAKE_SOURCE_DIR}/external/util")
   hunter_config(koinos_util
      GIT_SUBMODULE "external/util"
      CMAKE_ARGS
         BUILD_TESTING=OFF
   )
else()
   hunter_config(koinos_util
      URL  "https://github.com/koinos/koinos-util-cpp/archive/b0ea6d7f954d83381316cb19469669d3f9d610ab.tar.gz"
      SHA1 "95f62a9236e970fdfc7a6a2315fcff32225b3c27"
      CMAKE_ARGS
         BUILD_TESTING=OFF
   )
endif()

if (EXISTS "${CMAKE_SOURCE_DIR}/external/proto")
   hunter_config(koinos_proto
      GIT_SUBMODULE "external/proto"
      CMAKE_ARGS
         BUILD_TESTING=OFF
   )
else()
   hunter_config(koinos_proto
      URL  "https://github.com/koinos/koinos-proto-cpp/archive/ad0100b1e195ec069043923f94e22edac0dbacc2.tar.gz"
      SHA1 "86f0f8e198188bb53755c92a28b4b179e1066868"
      CMAKE_ARGS
         BUILD_TESTING=OFF
   )
endif()

if (EXISTS "${CMAKE_SOURCE_DIR}/external/exception")
   hunter_config(koinos_exception
      GIT_SUBMODULE "external/exception"
      CMAKE_ARGS
         BUILD_TESTING=OFF
   )
else()
   hunter_config(koinos_exception
      URL  "https://github.com/koinos/koinos-exception-cpp/archive/477b8c0e1d829fd82f33518f56de6376b745fd68.tar.gz"
      SHA1 "e59eee6ffbe348c6f50e2b1bb15339c30ca56c37"
      CMAKE_ARGS
         BUILD_TESTING=OFF
   )
endif()

if (EXISTS "${CMAKE_SOURCE_DIR}/external/crypto")
   hunter_config(koinos_crypto
      GIT_SUBMODULE "external/crypto"
      CMAKE_ARGS
         BUILD_TESTING=OFF
   )
else()
   hunter_config(koinos_crypto
      URL  "https://github.com/koinos/koinos-crypto-cpp/archive/34312c98bfe07304b6bb87219c17ac691a09c758.tar.gz"
      SHA1 "57b18f02a10b6ca43fdeb8e58059171b27814dbc"
      CMAKE_ARGS
         BUILD_TESTING=OFF
   )
endif()

if (EXISTS "${CMAKE_SOURCE_DIR}/external/mq")
   hunter_config(koinos_mq
      GIT_SUBMODULE "external/mq"
      CMAKE_ARGS
         BUILD_TESTING=OFF
   )
else()
   hunter_config(koinos_mq
      URL  "https://github.com/koinos/koinos-mq-cpp/archive/f0e9df75913c38c678d635037b875b01b41e9984.tar.gz"
      SHA1 "2fe4edd30c050a0a597dca98244736047c940fde"
      CMAKE_ARGS
         BUILD_TESTING=OFF
   )
endif()

if (EXISTS "${CMAKE_SOURCE_DIR}/external/state_db")
   hunter_config(koinos_state_db
      GIT_SUBMODULE "external/state_db"
      CMAKE_ARGS
         BUILD_TESTING=OFF
   )
else()
   hunter_config(koinos_state_db
      URL  "https://github.com/koinos/koinos-state-db-cpp/archive/8e9d50ed51389363d3b3fc989c3374c27ecb3534.tar.gz"
      SHA1 "cf64ee62873e17a1146cd77d8c155bf0d9340ac9"
      CMAKE_ARGS
         BUILD_TESTING=OFF
   )
endif()
