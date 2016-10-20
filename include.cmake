if(NOT CGET_REQUESTED_VERSION)
       set(CGET_REQUESTED_VERSION release-1.8.0)
endif()

CGET_HAS_DEPENDENCY(ucm REGISTRY)

ucm_gather_flags(0 flags_config)
if(${flags} MATCHES "/MT")
  set(gtest_force_shared_crt OFF)
else()
  set(gtest_force_shared_crt ON)
endif()

CGET_HAS_DEPENDENCY(googletest GITHUB google/googletest VERSION "${CGET_REQUESTED_VERSION}" FINDNAME GTest OPTIONS -Dgtest_force_shared_crt=${gtest_force_shared_crt})
set(ARGS_NO_FIND_PACKAGE "true")
