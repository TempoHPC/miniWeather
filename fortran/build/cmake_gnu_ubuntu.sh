#!/bin/bash

export TEST_MPI_COMMAND="mpirun -n 1"

./cmake_clean.sh

PARALLEL_NETCDF_MODULE=/usr/lib/x86_64-linux-gnu/fortran/x86_64-linux-gnu-gfortran-9

cmake -DCMAKE_Fortran_COMPILER=mpif90                                                 \
      -DFFLAGS="-Ofast -march=native -ffree-line-length-none -DNO_INFORM -I${PARALLEL_NETCDF_MODULE}"   \
      -DLDFLAGS="-lpnetcdf"                        \
      -DOPENMP_FLAGS="-fopenmp"                                                       \
      -DNX=200                                                                        \
      -DNZ=100                                                                        \
      -DDATA_SPEC="DATA_SPEC_GRAVITY_WAVES"                                           \
      -DSIM_TIME=1000                                                            \
      ..
