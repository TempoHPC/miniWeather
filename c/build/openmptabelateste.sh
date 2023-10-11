cp threads.txt tabelaAnteriorOPENMP.txt;
 
echo "OPENMP" > tabelaAtualOPENMP.txt

 function ProgramaOPENMP(){
	
	OMP_NUM_THREADS=$nucleos ./openmp

}
	
rm CPU_time_openmp.txt

  for i in {1..5}; do
    
	nucleos=1
	#echo $nucleos "nucleo" >> processos.txt
	ProgramaOPENMP | grep "CPU Time:" | cut -c10-  > CPU_time_openmp.txt

	nucleos=2
	#echo $nucleos "nucleos" >> processos.txt
	ProgramaOPENMP | grep "CPU Time:" | cut -c10- >> CPU_time_openmp.txt

	nucleos=4
	#echo $nucleos "nucleos" >> processos.txt
	ProgramaOPENMP | grep "CPU Time:" | cut -c10- >> CPU_time_openmp.txt

	nucleos=8
	#echo $nucleos "nucleos" >> processos.txt
	ProgramaOPENMP | grep "CPU Time:" | cut -c10- >> CPU_time_openmp.txt
	
	nucleos=16
	#echo $nucleos "nucleos" >> processos.txt
	ProgramaOPENMP | grep "CPU Time:" | cut -c10- >> CPU_time_openmp.txt
	
	nucleos=32
	#echo $nucleos "nucleos" >> processos.txt
	ProgramaOPENMP | grep "CPU Time:" | cut -c10- >> CPU_time_openmp.txt

	paste tabelaAnteriorOPENMP.txt CPU_time_openmp.txt > tabelaAtualOPENMP.txt
	cp tabelaAtualOPENMP.txt tabelaAnteriorOPENMP.txt;
    
	
    done
    
    
cat tabelaAtualOPENMP.txt
