# título do gráfico
set title "Speedup A"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "speedupA.png"

#  gráfico de linhas

plot "desempenhoA.txt" using 1:5 w linespoint title "Speedup ideal", \
     "desempenhoA.txt" using 1:6 w linespoint title "Speedup obtido"
