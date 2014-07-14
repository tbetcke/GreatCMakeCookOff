include(thispackage.cmake)
if(NOT DEFINED thisvar_zero)
  message(FATAL_ERROR "thisvar_zero undefined")
endif()
if(NOT thisvar_zero STREQUAL "@CMAKE_CURRENT_BINARY_DIR@/hello")
  message(FATAL_ERROR "wrong value for thisvar_zero")
endif()
if(NOT DEFINED thisvar_two)
  message(FATAL_ERROR "thisvar_two undefined")
endif()
if(NOT thisvar_two)
  message(FATAL_ERROR "wrong value for thisvar_two")
endif()
if(NOT DEFINED othervar_one)
  message(FATAL_ERROR "othervar_one undefined")
endif()
if(NOT othervar_one EQUAL 2)
  message(FATAL_ERROR "wrong value for othervar_one")
endif()
if(DEFINED othervar_two)
  message(FATAL_ERROR "othervar_two defined")
endif()
if(DEFINED othervarone)
  message(FATAL_ERROR "othervarone defined")
endif()
list(LENGTH alist alist_size)
if(NOT alist_size EQUAL 3)
    message(FATAL_ERROR "Incorrect list size: ${alist_size} vs 3")
endif()
list(GET alist 0 item)
if(NOT item EQUAL 42)
    message(FATAL_ERROR "Incorrect first item")
endif()
list(GET alist 1 item)
if(NOT item STREQUAL "this")
    message(FATAL_ERROR "Incorrect second item")
endif()
list(GET alist 2 item)
if(NOT item STREQUAL "that")
    message(FATAL_ERROR "Incorrect third item")
endif()

if(NOT alsoadded STREQUAL "hello world")
    message(FATAL_ERROR "First ALSOADD variable failed")
endif()

list(LENGTH alsoadded2 alsoadded2_size)
if(NOT alsoadded2_size EQUAL 3)
    message(FATAL_ERROR "Incorrect list size: ${alsoadded2_size} vs 3")
endif()
list(GET alsoadded2 0 item)
if(NOT item EQUAL 42)
    message(FATAL_ERROR "Incorrect first item")
endif()
list(GET alsoadded2 1 item)
if(NOT item STREQUAL "this")
    message(FATAL_ERROR "Incorrect second item")
endif()
list(GET alsoadded2 2 item)
if(NOT item STREQUAL "that")
    message(FATAL_ERROR "Incorrect third item")
endif()
