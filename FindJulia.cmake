if(NOT JULIA_FOUND)
  find_program(JULIA_EXECUTABLE julia DOC "Julia executable")
  if(NOT JULIA_EXECUTABLE) 
    message(FATAL_ERROR "Julia executable not found")
  endif()
  message(STATUS "[julia] ${JULIA_EXECUTABLE}")
  exec_program( ${JULIA_EXECUTABLE} ARGS -e "\"println(Pkg.dir())\"" OUTPUT_VARIABLE JULIA_INSTALL)
  message(STATUS "[julia] package directory: ${JULIA_INSTALL}")
  if(NOT JULIA_INSTALL) 
    message(FATAL_ERROR "Could not determine julia package directory")
  endif()
  set(JULIA_INSTALL ${JULIA_INSTALL} CACHE PATH "Path where Julia packages should be installed.")
  set(JULIA_FOUND TRUE CACHE INTERNAL "Whethe Julia was found")
endif()
