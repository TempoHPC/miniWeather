# título do gráfico
set title "Desempenho em Função do Número de Núcleos"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "graficoOPENMP.png"

#  gráfico de linhas
plot "tabelaAtualOPENMP.txt" using 1:3 w linespoint
replot "tabelaAtualOPENMP.txt" using 1:5 w linespoint
replot "tabelaAtualOPENMP.txt" using 1:7 w linespoint
replot "tabelaAtualOPENMP.txt" using 1:9 w linespoint
replot "tabelaAtualOPENMP.txt" using 1:11 w linespoint
