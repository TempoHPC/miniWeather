echo "MPI" > tabela_mpi.txt
nucleos=1
echo $nucleos "nucleos" > processos.txt
mpirun -n 1 ./mpi | fgrep "CPU Time:" > CPU_time_MPI.txt

nucleos=2
echo $nucleos "nucleos" >> processos.txt
mpirun -n 2 ./mpi | fgrep "CPU Time:" >> CPU_time_MPI.txt

nucleos=4
echo $nucleos "nucleos" >> processos.txt
mpirun -n 4 ./mpi | fgrep "CPU Time:" >> CPU_time_MPI.txt

nucleos=8
echo $nucleos "nucleos" >> processos.txt
mpirun --oversubscribe -n 8 ./mpi | fgrep "CPU Time:" >> CPU_time_MPI.txt


paste processos.txt CPU_time_MPI.txt >> tabela_mpi.txt
cat tabela_mpi.txt

