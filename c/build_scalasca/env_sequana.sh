#!/bin/bash

module load sequana/current
module load git/2.23_sequana
module load cmake/3.23.2_sequana
module load python/3.9.1_sequana
alias python='python3.9'
alias python3='python3.9'
module load openmpi/gnu/4.1.2+cuda-11.2_sequana

workdir=/scratch/cenapadrjsd/rpsouto
version=v0.17.1
partition=sequana
spackdir=${workdir}/spack/${partition}/${version}
. ${spackdir}/share/spack/setup-env.sh

export SPACK_USER_CONFIG_PATH=${workdir}/.spack/${partition}/${version}

spack load scalasca
spack load parallel-netcdf

