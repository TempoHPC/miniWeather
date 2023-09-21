cp processos.txt tabelaAnterior.txt;
 
echo "MPI" > tabelaAtual.txt
 
 function CompFicticia(){
	echo CompFicticia
	echo "CPU Time:" $(((100+RANDOM%10)/$nucleos))

}
rm CPU_time_MPI.txt

  for i in {1..5}; do
    	np=(1 2 4 8 16 32);
 	for p in ${np[@]}; do 
	nucleos=$p
	#echo $nucleos "nucleo" >> processos.txt
	CompFicticia | grep "CPU Time:" | cut -c10-  > CPU_time_MPI.txt

	nucleos=$p
	#echo $nucleos "nucleos" >> processos.txt
	CompFicticia | grep "CPU Time:" | cut -c10- >> CPU_time_MPI.txt

	nucleos=$p
	#echo $nucleos "nucleos" >> processos.txt
	CompFicticia | grep "CPU Time:" | cut -c10- >> CPU_time_MPI.txt

	nucleos=$p
	#echo $nucleos "nucleos" >> processos.txt
	CompFicticia | grep "CPU Time:" | cut -c10- >> CPU_time_MPI.txt
	
	nucleos=$p
	#echo $nucleos "nucleos" >> processos.txt
	CompFicticia | grep "CPU Time:" | cut -c10- >> CPU_time_MPI.txt

	nucleos=$p
	#echo $nucleos "nucleos" >> processos.txt
	CompFicticia | grep "CPU Time:" | cut -c10- >> CPU_time_MPI.txt


	paste tabelaAnterior.txt CPU_time_MPI.txt >tabelaAtual.txt
	cp tabelaAtual.txt tabelaAnterior.txt;
    
	#cat tabelaAtual.txt
	done
    done
    
    
cat tabelaAtual.txt

