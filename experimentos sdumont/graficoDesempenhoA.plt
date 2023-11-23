# título do gráfico
set title "Desempenho A"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "graficoDesempenhoA.png"

#  gráfico de linhas

plot "desempenhoA.txt" using 1:3 w linespoint title "Desempenho obtido", \
     "desempenhoA.txt" using 1:4 w linespoint title "Desempenho ideal"
