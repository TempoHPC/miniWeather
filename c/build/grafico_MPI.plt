# título do gráfico
set title "Desempenho MPI"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "grafico_MPI.png"

#  gráfico de linhas

plot "tabelaAtualMPI.txt" using 1:3 w linespoint, \
     "tabelaAtualMPI.txt" using 1:5 w linespoint, \
     "tabelaAtualMPI.txt" using 1:7 w linespoint, \
     "tabelaAtualMPI.txt" using 1:9 w linespoint, \
     "tabelaAtualMPI.txt" using 1:11 w linespoint

