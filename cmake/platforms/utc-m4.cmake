set (CMAKE_SYSTEM_NAME        "Generic"      CACHE STRING "")
set (CMAKE_SYSTEM_PROCESSOR   "arm"          CACHE STRING "")
set (MACHINE                  "template"     CACHE STRING "")
set (CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER CACHE STRING "")
set (CMAKE_FIND_ROOT_PATH_MODE_LIBRARY NEVER CACHE STRING "")
set (CMAKE_FIND_ROOT_PATH_MODE_INCLUDE NEVER CACHE STRING "")

set (WITH_DOC OFF)
set (WITH_APPS OFF)

set (CROSS_PREFIX             "/home/sergey/projects/developUTC/source/arm-tools/gcc/bin/arm-none-eabi-" CACHE STRING "")

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

cmake_path (SET LIBMETAL_LIB         NORMALIZE "${CMAKE_CURRENT_SOURCE_DIR}/../libmetal/install/m4-generic-release/usr/local/lib/")
cmake_path (SET LIBMETAL_INCLUDE_DIR NORMALIZE "${CMAKE_CURRENT_SOURCE_DIR}/../libmetal/install/m4-generic-release/usr/local/include")

set(CMAKE_C_CXX_COMMON_FLAGS  "-Wno-unused-variable -Wno-unused-parameter -Wno-psabi -Wno-deprecated-declarations")
set(STM32_FLAGS               "-mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -mabi=aapcs")

set(CMAKE_C_FLAGS             "${CMAKE_C_CXX_COMMON_FLAGS} ${STM32_FLAGS}")
set(CMAKE_EXE_LINKER_FLAGS    "-flto --specs=nosys.specs")

include (CMakeForceCompiler)
CMAKE_FORCE_C_COMPILER   ("${CROSS_PREFIX}gcc" GNU)
CMAKE_FORCE_CXX_COMPILER ("${CROSS_PREFIX}g++" GNU)
