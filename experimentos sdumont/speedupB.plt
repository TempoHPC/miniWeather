# título do gráfico
set title "Speedup B"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "speedupB.png"

#  gráfico de linhas

plot "desempenhoB.txt" using 1:5 w linespoint title "Speedup ideal", \
     "desempenhoB.txt" using 1:6 w linespoint title "Speedup obtido"
