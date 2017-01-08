#!/bin/sh
set -e
mkdir -p build/
cd build/
cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
make ${TEMPLATE_PROJECT_NAME}
make ${TEMPLATE_PROJECT_NAME}_tests
