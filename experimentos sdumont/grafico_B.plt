# título do gráfico
set title "benchmark class: B"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "grafico_B.png"

#  gráfico de linhas

plot "tabelaB.txt" using 1:3 w linespoint title "Desempenho"
