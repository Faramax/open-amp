set (CMAKE_SYSTEM_NAME        "Generic"      CACHE STRING "")
set (CMAKE_SYSTEM_PROCESSOR   "arm"          CACHE STRING "")
set (MACHINE                  "template"     CACHE STRING "")
set (CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER CACHE STRING "")
set (CMAKE_FIND_ROOT_PATH_MODE_LIBRARY NEVER CACHE STRING "")
set (CMAKE_FIND_ROOT_PATH_MODE_INCLUDE NEVER CACHE STRING "")

set (WITH_DOC OFF)
set (WITH_APPS OFF)

set(ARM_TOOLS_PATH           "/home/sergey/projects/developUTC/source/arm-tools")
set(STM32_TOOLCHAIN_PATH     "${ARM_TOOLS_PATH}/gcc")
set(CROSS_PREFIX             "${STM32_TOOLCHAIN_PATH}/bin/arm-none-eabi-")

set(STM32_FLAGS               "-mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -mabi=aapcs")
set(CMAKE_C_FLAGS             "${CMAKE_C_CXX_COMMON_FLAGS} ${STM32_FLAGS} -x c -std=c99")

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
set(CMAKE_C_COMPILER         "${CROSS_PREFIX}gcc")
set(CMAKE_CXX_COMPILER       "${CROSS_PREFIX}g++")
set(CMAKE_ASM_COMPILER       "${CROSS_PREFIX}gcc")

#set(STM32_CMAKE_PATH         "${CMAKE_CURRENT_LIST_DIR}/../../../stm32-cmake")
#include(${STM32_CMAKE_PATH}/cmake/stm32_gcc.cmake)

cmake_path (SET LIBMETAL_LIB         NORMALIZE "${CMAKE_SOURCE_DIR}/../libmetal/install/usr/local/lib/")
cmake_path (SET LIBMETAL_INCLUDE_DIR NORMALIZE "${CMAKE_SOURCE_DIR}/../libmetal/install/usr/local/include")