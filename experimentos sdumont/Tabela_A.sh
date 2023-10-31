rm tabelaA.txt
rm CPU_timeA.txt

function ProgramaMPI() {
    srun -p cpu_dev -N1 -n $1 ./bt-mz.A.x
}

np=(1 2 4 8 16 24)

for p in ${np[@]}; do
    nucleos="${p} nucleos"
    
        ProgramaMPI $p | grep "Time in seconds = " | cut -c38-  >> CPU_timeA.txt
    
    echo -e "$nucleos\t$(cat CPU_timeA.txt)" >> tabelaA.txt
    rm CPU_timeA.txt
done

cat tabelaA.txt

