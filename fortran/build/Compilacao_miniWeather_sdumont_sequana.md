# Compilação e execução do miniWeather no SDumont (sequana)


## Acesso ao SDumont
- Fazer login no SDumont

  ```bash
  ssh <username>@login.sdumont.lncc.br
  cd $SCRATCH
  ```


# Como Compilar o Modelo miniWeather

## Baixar o  modelo miniWeather

Baixando o código-fonte a partir do *fork* do repositório Git do miniWeather, utilizando *branch* lnccpibic:

```bash
$ git clone --single-branch --branch lnccpibic https://github.com/TempoHPC/miniWeather.git miniWeather_tempohpc
$ cd miniWeather_tempohpc/fortran/build
```

## Compilando o modelo miniWeather


## Preparação do ambiente

- Carregar os arquivos de configuração do ambiente e do spack, que estão na pasta `miniWeather_tempohpc/fortran/build` do repositório git.
  
- Carregar o arquivo `env_sequana_nvhpc.sh` 

  ```bash
  #!/bin/bash
  
  module load git/2.23_sequana
  module load python/3.9.1_sequana
  module load gcc/9.3_sequana
  module load cmake/3.23.2_sequana
  module use /scratch/cenapadrjsd/rpsouto/opt/nvidia/hpc_sdk/modulefiles
  module load nvhpc/22.11
  export NVLOCALRC=/scratch/cenapadrjsd/rpsouto/opt/nvidia/hpc_sdk/Linux_x86_64/localrc
  ```
  
  ```bash
  $ source env_sequana_nvhpc.sh
  ```
  
- Carregar o arquivo `env_sdumont_spack.sh` 

  ```bash
  #!/bin/bash
  workdir=/scratch/cenapadrjsd/rpsouto
  version=v0.18.1
  spackdir=${workdir}/spack/sequana/${version}
  . ${spackdir}/share/spack/setup-env.sh
  
  export   SPACK_USER_CONFIG_PATH=${workdir}/spack/sequana/.spack/${version}
  ```

  ```bash
  $ source env_sdumont_spack.sh
  ```

- Executar o comado *cmake* para gerar o arquivo Makefile de compilação, utilizando o script `cmake_sdumont_nvhpc.sh`:

  ```bash
  #!/bin/bash
  
  PARALLEL_NETCDF_ROOT=$(spack location -i parallel-netcdf@1.12.2%nvhpc@22.11)
  
  export TEST_MPI_COMMAND="mpirun -n 1"
  
  export OMPI_FC=nvfortran
  
  ./cmake_clean.sh
  
  cmake -DCMAKE_Fortran_COMPILER=mpif90               \
        -DFFLAGS="-DSINGLE_PREC -fastsse -O4 -Mfpapprox -Mfprelaxed -Mextend -DNO_INFORM -I${PARALLEL_NETCDF_ROOT}/include"           \
        -DLDFLAGS="-L${PARALLEL_NETCDF_ROOT}/lib -lpnetcdf"                                    \
        -DOPENMP_FLAGS="-mp -Minfo=mp"                                                                   \
        -DOPENACC_FLAGS:STRING="-acc -gpu=cc70,fastmath,loadcache:L1,pinned,unroll,fma,ptxinfo -Minfo=accel"               \
        -DOPENMP45_FLAGS:STRING="-Minfo=mp -mp=gpu -gpu=cc70,fastmath,loadcache:L1,pinned,unroll,fma,ptxinfo"              \
        -DDO_CONCURRENT_FLAGS:STRING="-stdpar=gpu -Minfo=stdpar -gpu=cc70,fastmath,loadcache:L1,unroll,fma,ptxinfo" \
        -DNX=2048 \
        -DNZ=1024 \
        -DSIM_TIME=10   \
        -DOUT_FREQ=2000 \
        ..
  ```

  ```bash
  $ source cmake_sdumont_nvhpc.sh
  ```

  

- Depois, basta dar o comando `make` para compilar os executáveis do miniWeather.

```bash
$ make
Scanning dependencies of target allocate_and_assumed_shape
[  3%] Building Fortran object CMakeFiles/allocate_and_assumed_shape.dir/exploration/miniWeather_serial_allocate_and_assumed_shape.F90.o
[  6%] Linking Fortran executable allocate_and_assumed_shape
[  6%] Built target allocate_and_assumed_shape
Scanning dependencies of target allocate_during_runtime_test
[  9%] Building Fortran object CMakeFiles/allocate_during_runtime_test.dir/exploration/miniWeather_serial_allocate_during_runtime.F90.o
[ 12%] Linking Fortran executable allocate_during_runtime_test
[ 12%] Built target allocate_during_runtime_test
Scanning dependencies of target allocate_and_assumed_shape_test
[ 15%] Building Fortran object CMakeFiles/allocate_and_assumed_shape_test.dir/exploration/miniWeather_serial_allocate_and_assumed_shape.F90.o
[ 18%] Linking Fortran executable allocate_and_assumed_shape_test
[ 18%] Built target allocate_and_assumed_shape_test
Scanning dependencies of target allocate_during_runtime
[ 21%] Building Fortran object CMakeFiles/allocate_during_runtime.dir/exploration/miniWeather_serial_allocate_during_runtime.F90.o
[ 25%] Linking Fortran executable allocate_during_runtime
[ 25%] Built target allocate_during_runtime
Scanning dependencies of target do_concurrent_test
[ 28%] Building Fortran object CMakeFiles/do_concurrent_test.dir/miniWeather_mpi_do_concurrent.F90.o


[ 93%] Linking Fortran executable openmp
[ 93%] Built target openmp
[100%] Linking Fortran executable do_concurrent
[100%] Built target do_concurrent
```

- Para submeter a execução, por exemplo, do `miniWeather mpi`, rodar o script de submissão `run_nvhpc.srm`:

```bash
#!/bin/bash
#SBATCH --nodes=1                       # here the number of nodes
#SBATCH --ntasks=1                      # here total number of mpi tasks
#SBATCH -p sequana_gpu_dev               # target partition
#SBATCH --cpus-per-task=1
#SBATCH --threads-per-core=1
#SBATCH -J miniWeather                       # job name
#SBATCH --time=00:10:00                 # time limit
#SBATCH --exclusive                     # to have exclusive use of your nodes

echo "Cluster configuration:"
echo "==="
echo "Partition: " $SLURM_JOB_PARTITION
echo "Number of nodes: " $SLURM_NNODES
echo "Number of MPI processes: " $SLURM_NTASKS " (" $SLURM_NNODES " nodes)"
echo "Number of threads per MPI process: " $SLURM_CPUS_PER_TASK

###################################
#           COMPILER              #
###################################
#source $SLURM_SUBMIT_DIR/env_sdumont_spack.sh
#source $SLURM_SUBMIT_DIR/env_sequana_nvhpc.sh

export LD_LIBRARY_PATH=/scratch/cenapadrjsd/rpsouto/usr/lib64:$LD_LIBRARY_PATH

module load git/2.23_sequana
module load python/3.9.1_sequana
module load gcc/9.3_sequana
module load cmake/3.23.2_sequana
module use /scratch/cenapadrjsd/rpsouto/opt/nvidia/hpc_sdk/modulefiles
module load nvhpc/22.11
export NVLOCALRC=/scratch/cenapadrjsd/rpsouto/opt/nvidia/hpc_sdk/Linux_x86_64/localrc

workdir=/scratch/cenapadrjsd/rpsouto
version=v0.18.1
spackdir=${workdir}/spack/sequana/${version}
. ${spackdir}/share/spack/setup-env.sh

export SPACK_USER_CONFIG_PATH=${workdir}/spack/sequana/.spack/${version}

export LD_LIBRARY_PATH=$(spack location -i parallel-netcdf@1.12.2%nvhpc@22.11)/lib:$LD_LIBRARY_PATH

executable=${1}

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

export OMPI_MCA_opal_warn_on_missing_libcuda=0

mpirun -n $SLURM_NTASKS \
./${executable} 

resultdir=resultdir/${executable}/NUMNODES-${SLURM_JOB_NUM_NODES}/MPI-${SLURM_NTASKS}_OMP-${SLURM_CPUS_PER_TASK}_JOBID-${SLURM_JOBID}

mkdir -p ${resultdir}
mv slurm-${SLURM_JOBID}.out ${resultdir}/
mv output.nc ${resultdir}/

```

```bash
$ sbatch -N1 -n8 -c1 run_nvhpc.srm mpi
Submitted batch job 11419089
```
```bash
$ squeue --me
             JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
          11419089 sequana_g miniWeat  rpsouto  R       0:28      1 sdumont8046
```

- Ao final, terá sido gerada uma pasta contendo o arquivo slurm referente ao job, e o arquivo `output.nc` contendo o resultado da simulação.

```bash
$ ls resultdir/mpi/NUMNODES-1/MPI-8_OMP-1_JOBID-11419089/
output.nc  slurm-11419089.out
```

```bash
Cluster configuration:
===
Partition:  sequana_gpu_dev
Number of nodes:  1
Number of MPI processes:  8  ( 1  nodes)
Number of threads per MPI process:  1
 nx_glob, nz_glob:         2048         1024
 dx,dz:     9.765625        9.765625    
 dt:    3.2552086E-02
 *** OUTPUT ***
 CPU Time:     14.61175600000000     
 d_mass:    2.0972939E-07
 d_te:     -1.8797911E-05
```

- Pode-se rodar também a com a opção `do_concurrent` (em GPU)

```bash
$ sbatch -N1 -n1 -c1 run_nvhpc.srm do_concurrent 
Submitted batch job 11419096
```

```bash
$ ls resultdir/do_concurrent/NUMNODES-1/MPI-1_OMP-1_JOBID-11419096/
output.nc  slurm-11419096.out
```

```
Cluster configuration:
===
Partition:  sequana_gpu_dev
Number of nodes:  1
Number of MPI processes:  1  ( 1  nodes)
Number of threads per MPI process:  1
 nx_glob, nz_glob:         2048         1024
 dx,dz:     9.765625        9.765625    
 dt:    3.2552086E-02
 *** OUTPUT ***
 CPU Time:     2.228857000000000     
 d_mass:    7.3405283E-07
 d_te:     -1.9019937E-05
```



