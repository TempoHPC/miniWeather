rm tabelaAtualMPI.txt
rm CPU_time_MPI.txt

function ProgramaMPI() {
    
    sbatch -N1 -n1 run_mpi.srm
}


for p in ${np[@]}; do
    nucleos="${p} nucleos"
    
        ProgramaMPI $p | grep "CPU Time:" | cut -c10- | tr '\n' '\t' >> CPU_time_MPI.txt
    
    echo -e "$nucleos\t$(cat CPU_time_MPI.txt)" >> tabelaAtualMPI.txt
    rm CPU_time_MPI.txt
done

cat tabelaAtualMPI.txt