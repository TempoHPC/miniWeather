# título do gráfico
set title "Tempos Mínimos"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "grafico_minimos.png"

#  gráfico de linhas

plot "minimos.txt" using 1:2 w linespoint title "OPENMP", \
     "minimos.txt" using 1:3 w linespoint title "MPI"

