if(NOT VERSION)
       set(VERSION release-1.8.0)
endif()

CGET_HAS_DEPENDENCY(googletest GITHUB google/googletest VERSION "${VERSION}" FINDNAME GTest)
set(ARGS_NO_FIND_PACKAGE "true")
