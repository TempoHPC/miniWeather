# título do gráfico
set title "benchmark class: B"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "grafico_B.png"

# eixo y (Desempenho)
set ylabel "Desempenho"
set ytics nomirror

# eixo y2 (Speedup)
set y2label "Speedup"
set y2tics nomirror

#  gráfico de linhas

plot "desempenhoB.txt" using 1:3 w linespoint title "Desempenho obtido", \
     "desempenhoB.txt" using 1:4 w linespoint title "Desempenho ideal", \
     "desempenhoB.txt" using 1:6 w linespoint title "Speedup obtido" axes x1y2, \
     "desempenhoB.txt" using 1:5 w linespoint title "Desempenho ideal" axes x1y2
