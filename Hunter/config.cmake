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
         BUILD_EXAMPLES=OFF
   )
else()
   hunter_config(koinos_log
      URL  "https://github.com/koinos/koinos-log-cpp/archive/a1ba8a239e0b4615d06eb7838aa75f3fed060c91.tar.gz"
      SHA1 "ad694efa89eab3dbe7b34912f163f981968af487"
      CMAKE_ARGS
         BUILD_TESTING=OFF
         BUILD_EXAMPLES=OFF
   )
endif()

if (EXISTS "${CMAKE_SOURCE_DIR}/external/util")
   hunter_config(koinos_util
      GIT_SUBMODULE "external/util"
      CMAKE_ARGS
         BUILD_TESTING=OFF
         BUILD_EXAMPLES=OFF
   )
else()
   hunter_config(koinos_util
      URL  "https://github.com/koinos/koinos-util-cpp/archive/d493e8b3085fa692f62e48779d4b7f5a70910f4f.tar.gz"
      SHA1 "4c051ccf98d28d2b282c3201bff695ca3076a13d"
      CMAKE_ARGS
         BUILD_TESTING=OFF
         BUILD_EXAMPLES=OFF
   )
endif()

if (EXISTS "${CMAKE_SOURCE_DIR}/external/proto")
   hunter_config(koinos_proto
      GIT_SUBMODULE "external/proto"
      CMAKE_ARGS
         BUILD_TESTING=OFF
         BUILD_EXAMPLES=OFF
   )
else()
   hunter_config(koinos_proto
      URL  "https://github.com/koinos/koinos-proto-cpp/archive/212f9dc325958a7cf8c023448c810c5556d9ba58.tar.gz"
      SHA1 "13e2e170acc6a6d61cbd2c611ecde69f36428c5f"
      CMAKE_ARGS
         BUILD_TESTING=OFF
         BUILD_EXAMPLES=OFF
   )
endif()

if (EXISTS "${CMAKE_SOURCE_DIR}/external/exception")
   hunter_config(koinos_exception
      GIT_SUBMODULE "external/exception"
      CMAKE_ARGS
         BUILD_TESTING=OFF
         BUILD_EXAMPLES=OFF
   )
else()
   hunter_config(koinos_exception
      URL  "https://github.com/koinos/koinos-exception-cpp/archive/8aaca1095abbb99f063f39b82666c8a56a3f6695.tar.gz"
      SHA1 "e4aafdf57a7890aa312f35055a2485840ba7f9ee"
      CMAKE_ARGS
         BUILD_TESTING=OFF
         BUILD_EXAMPLES=OFF
   )
endif()

if (EXISTS "${CMAKE_SOURCE_DIR}/external/crypto")
   hunter_config(koinos_crypto
      GIT_SUBMODULE "external/crypto"
      CMAKE_ARGS
         BUILD_TESTING=OFF
         BUILD_EXAMPLES=OFF
   )
else()
   hunter_config(koinos_crypto
      URL  "https://github.com/koinos/koinos-crypto-cpp/archive/1876fdd12b0ea8dd4c067b7b2357f11a5cdecf29.tar.gz"
      SHA1 "d9888dfa3387f527c6d50ac146354c035cfdf30b"
      CMAKE_ARGS
         BUILD_TESTING=OFF
         BUILD_EXAMPLES=OFF
   )
endif()

if (EXISTS "${CMAKE_SOURCE_DIR}/external/mq")
   hunter_config(koinos_mq
      GIT_SUBMODULE "external/mq"
      CMAKE_ARGS
         BUILD_TESTING=OFF
         BUILD_EXAMPLES=OFF
   )
else()
   hunter_config(koinos_mq
      URL  "https://github.com/koinos/koinos-mq-cpp/archive/758086501610f83d46ba88c9265660edb649e576.tar.gz"
      SHA1 "4471a63e975a14e38ad1a75d0399bd89df7ee870"
      CMAKE_ARGS
         BUILD_TESTING=OFF
         BUILD_EXAMPLES=OFF
   )
endif()

if (EXISTS "${CMAKE_SOURCE_DIR}/external/state_db")
   hunter_config(koinos_state_db
      GIT_SUBMODULE "external/state_db"
      CMAKE_ARGS
         BUILD_TESTING=OFF
         BUILD_EXAMPLES=OFF
   )
else()
   hunter_config(koinos_state_db
      URL  "https://github.com/koinos/koinos-state-db-cpp/archive/b75092767e60d4d4b9a035a171767efec1eb8b0a.tar.gz"
      SHA1 "9a5375c465f40ba4dcbac739bc2590614ad8b302"
      CMAKE_ARGS
         BUILD_TESTING=OFF
         BUILD_EXAMPLES=OFF
   )
endif()
