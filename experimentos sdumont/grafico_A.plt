# título do gráfico
set title "benchmark class: A"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "grafico_A.png"

# eixo y Desempenho
set ylabel "Desempenho"
set ytics nomirror

# eixo y2 Speedup
set y2label "Speedup"
set y2tics nomirror

# gráfico de linhas
plot "desempenhoA.txt" using 1:3 w linespoint title "Desempenho obtido", \
     "desempenhoA.txt" using 1:4 w linespoint title "Desempenho ideal", \
     "desempenhoA.txt" using 1:6 w linespoint title "Speedup obtido" axes x1y2, \
     "desempenhoA.txt" using 1:5 w linespoint title "Speedup ideal" axes x1y2
