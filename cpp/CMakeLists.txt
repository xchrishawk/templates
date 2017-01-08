#
# CMakeLists.txt
# Chris Vig (chris@invictus.so)
#

# -- Project Configuration --

cmake_minimum_required(VERSION 2.8)
project(${TEMPLATE_PROJECT_NAME})

# -- Main Executable --

add_executable(${CMAKE_PROJECT_NAME}
  src/main.cpp)

add_custom_target(run
  COMMAND ${CMAKE_PROJECT_NAME}
  DEPENDS ${CMAKE_PROJECT_NAME}
  WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
  COMMENT "Running ${TEMPLATE_PROJECT_NAME}...")
