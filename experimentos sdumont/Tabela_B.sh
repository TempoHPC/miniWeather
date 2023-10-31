rm tabelaB.txt
rm CPU_timeB.txt

function ProgramaMPI() {
    srun -p cpu_dev -N1 -n $1 ./bt-mz.B.x
}

np=(1 2 4 8 16 24)

for p in ${np[@]}; do
    nucleos="${p} nucleos"
    
        ProgramaMPI $p | grep "Time in seconds = " | cut -c38-  >> CPU_timeB.txt
    
    echo -e "$nucleos\t$(cat CPU_timeB.txt)" >> tabelaB.txt
    rm CPU_timeB.txt
done

cat tabelaB.txt

