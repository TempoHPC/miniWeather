# título do gráfico
set title "Desempenho"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "graficoDesempenho.png"

#  gráfico de linhas

plot "Desempenho.txt" using 1:3 w linespoint title "Desempenho obtido", \
     "Desempenho.txt" using 1:4 w linespoint title "Desempenho ideal", \
     "Desempenho.txt" using 1:5 w linespoint title "speedup ideal", \
     "Desempenho.txt" using 1:6 w linespoint title "speedup obtido"
