# Compilar com scorep o miniWeather no SDumont

- Após gerar o `Makefile`, antes de executá-lo com o comando `make`, devem ser editados os seguintes arquivos:
  - `CMakeFiles/mpi.dir/link.txt`
  - `CMakeFiles/mpi.dir/build.make`
  - `CMakeFiles/openmp.dir/link.txt`
  - `CMakeFiles/openmp.dir/build.make`
- Subsititunido-se 
  -`/scratch/app/openmpi/4.1.2_gnu+cuda-11.2/bin/mpic++`
- Por 
  -`scorep /scratch/app/openmpi/4.1.2_gnu+cuda-11.2/bin/mpic++`
