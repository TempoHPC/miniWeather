rm tabelaAtualMPI.txt
rm CPU_time_MPI.txt

function ProgramaMPI() {
    mpirun --oversubscribe -n $1 ../c/build/mpi
}

np=(1 2 4 8 16 32)

for p in ${np[@]}; do
    nucleos="${p} nucleos"
    for _ in {1..5}; do
        ProgramaMPI $p | grep "CPU Time:" | cut -c10- | tr '\n' '\t' >> CPU_time_MPI.txt
    done
    echo -e "$nucleos\t$(cat CPU_time_MPI.txt)" >> tabelaAtualMPI.txt
    rm CPU_time_MPI.txt
done

cat tabelaAtualMPI.txt


