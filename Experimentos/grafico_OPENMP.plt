# título do gráfico
set title "Desempenho OPENMP"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "grafico_OPENMP.png"

#  gráfico de linhas

plot "tabelaAtualOPENMP.txt" using 1:3 w linespoint, \
     "tabelaAtualOPENMP.txt" using 1:5 w linespoint, \
     "tabelaAtualOPENMP.txt" using 1:7 w linespoint, \
     "tabelaAtualOPENMP.txt" using 1:9 w linespoint, \
     "tabelaAtualOPENMP.txt" using 1:11 w linespoint

