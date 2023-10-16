cp threads.txt tabelaAnteriorOPENMP.txt

echo "OPENMP" > tabelaAtualOPENMP.txt

function ProgramaOPENMP() {
    OMP_NUM_THREADS=$1 ./openmp
}

rm CPU_time_OPENMP.txt

np=(1 2 4 8 16 32)

for p in "${np[@]}"; do
    nucleos="${p} nucleos"
    for _ in {1..5}; do
        ProgramaOPENMP "$p" | grep "CPU Time:" | cut -c10- | tr '\n' '\t' >> CPU_time_OPENMP.txt
    done
    echo -e "$nucleos\t $(cat CPU_time_OPENMP.txt)" >> tabelaAtualOPENMP.txt
    rm CPU_time_OPENMP.txt
done

cat tabelaAtualOPENMP.txt
