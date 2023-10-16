cp processos.txt tabelaAnteriorMPI.txt;
 
echo "MPI" > tabelaAtualMPI.txt

 function ProgramaMPI(){
	mpirun --oversubscribe -n $nucleos ./mpi

}
	
rm CPU_time_MPI.txt

  for i in {1..5}; do
    
	nucleos=1
	#echo $nucleos "nucleo" >> processos.txt
	ProgramaMPI | grep "CPU Time:" | cut -c10-  > CPU_time_MPI.txt

	nucleos=2
	#echo $nucleos "nucleos" >> processos.txt
	ProgramaMPI | grep "CPU Time:" | cut -c10- >> CPU_time_MPI.txt

	nucleos=4
	#echo $nucleos "nucleos" >> processos.txt
	ProgramaMPI | grep "CPU Time:" | cut -c10- >> CPU_time_MPI.txt

	nucleos=8
	#echo $nucleos "nucleos" >> processos.txt
	ProgramaMPI | grep "CPU Time:" | cut -c10- >> CPU_time_MPI.txt
	
	nucleos=16
	#echo $nucleos "nucleos" >> processos.txt
	ProgramaMPI | grep "CPU Time:" | cut -c10- >> CPU_time_MPI.txt
	
	nucleos=32
	#echo $nucleos "nucleos" >> processos.txt
	ProgramaMPI | grep "CPU Time:" | cut -c10- >> CPU_time_MPI.txt

	paste tabelaAnteriorMPI.txt CPU_time_MPI.txt >tabelaAtualMPI.txt
	cp tabelaAtualMPI.txt tabelaAnteriorMPI.txt;
    
	
    done
    
    
cat tabelaAtualMPI.txt