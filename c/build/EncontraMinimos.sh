echo "Minimos" > minimos.txt
echo "OPENMP" > minimOPENMP.txt
echo "MPI" > minimoMPI.txt

# ----------------- mpi -------------------------
awk '{ minimo = 86400 }
{
    valores = $3 " " $5 " " $7 " " $9 " " $11
    split(valores, coluna, " ")

    for (i = 1; i <= 5; i++) {
        if (coluna[i] < minimo) {
            minimo = coluna[i]
        }
    }

    print minimo
}' tabelaAtualOPENMP.txt >> minimOPENMP.txt


# ----------------- openmp -----------------------
awk '{ minimo = 86400 }
{
    valores = $3 " " $5 " " $7 " " $9 " " $11
    split(valores, coluna, " ")

    for (i = 1; i <= 5; i++) {
        if (coluna[i] < minimo) {
            minimo = coluna[i]
        }
    }

    print minimo
}' tabelaAtualMPI.txt >> minimoMPI.txt



paste minimOPENMP.txt minimoMPI.txt >> minimos.txt

cat minimos.txt

