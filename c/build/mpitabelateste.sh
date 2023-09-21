cp processos.txt tabelaAnterior.txt;

echo "MPI" > tabelaAtual.txt

function ProgramaMPI() {

    np=(1 2 4 8 16 32);
    for p in ${np[@]}; do
        mpirun --oversubscribe -n $p ./mpi 
    done
}

rm CPU_time_MPI2.txt

for i in {1..5}; do
    ProgramaMPI | grep "CPU Time:" | cut -c10- >> CPU_time_MPI2.txt

	paste tabelaAnterior.txt CPU_time_MPI2.txt > tabelaAtual.txt
	cp tabelaAtual.txt tabelaAnterior.txt;
   

done

cat tabelaAtual.txt
