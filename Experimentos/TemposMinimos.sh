rm minimos.txt

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
}' tabelaAtualOPENMP.txt > minimOPENMP.txt


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
}' tabelaAtualMPI.txt > minimoMPI.txt

echo -e "1"$'\n'"2"$'\n'"4"$'\n'"8"$'\n'"16"$'\n'"32"$'\n' > nucleos.txt

paste nucleos.txt minimOPENMP.txt minimoMPI.txt >> minimos.txt

cat minimos.txt

