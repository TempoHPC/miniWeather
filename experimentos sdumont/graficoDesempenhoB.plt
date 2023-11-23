# título do gráfico
set title "Desempenho B"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "graficoDesempenhoB.png"

#  gráfico de linhas

plot "desempenhoB.txt" using 1:3 w linespoint title "Desempenho obtido", \
     "desempenhoB.txt" using 1:4 w linespoint title "Desempenho ideal"
