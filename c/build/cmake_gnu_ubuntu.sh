#!/bin/bash

export TEST_MPI_COMMAND="mpirun -n 1"

./cmake_clean.sh

cmake -DCMAKE_CXX_COMPILER=mpic++                                                     \
      -DCXXFLAGS="-Ofast -march=native -DNO_INFORM -std=c++11"   \
      -DLDFLAGS="-lpnetcdf"                        \
      -DOPENMP_FLAGS="-fopenmp"                                                       \
      -DNX=200                                                                        \
      -DNZ=100                                                                        \
      -DDATA_SPEC="DATA_SPEC_GRAVITY_WAVES"                                           \
      -DSIM_TIME=1000                                                                 \
      ..
