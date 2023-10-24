# título do gráfico
set title "Mínimos OPENMP(+) & MPI(x)"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "grafico_minimos.png"

#  gráfico de linhas

plot "minimos.txt" using 1:2 w linespoint, \
     "minimos.txt" using 1:3 w linespoint

