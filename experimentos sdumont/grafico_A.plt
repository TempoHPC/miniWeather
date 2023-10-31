# título do gráfico
set title "benchmark class: A"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "grafico_A.png"

#  gráfico de linhas

plot "tabelaA.txt" using 1:3 w linespoint title "Desempenho"
