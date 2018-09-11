#!/bin/bash
set -e
mkdir build_ci && cd build_ci

cmake .. -DCMAKE_PREFIX_PATH=$PREFIX -DCMAKE_BUILD_TYPE=Release

make -j${CPU_COUNT}

cp condatest* $PREFIX/bin
