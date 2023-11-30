# título do gráfico
set title "benchmark class: A"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "grafico_A.png"

# eixo x Nucleos
set xlabel "Nucleos"
set xtics nomirror

# eixo y Desempenho
set ylabel "Desempenho"
set ytics nomirror

# eixo y2 Speedup
set y2label "Speedup"
set y2tics nomirror

# espessura da linha
set style line 1 linewidth 4
set style line 2 linewidth 4


# gráfico de linhas
plot "desempenhoA.txt" using 1:3 with linespoint linestyle 1 title "Tempo obtido", \
     "desempenhoA.txt" using 1:4 with linespoint title "Tempo ideal", \
     "desempenhoA.txt" using 1:6 with linespoint linestyle 2 title "Speedup obtido" axes x1y2, \
     "desempenhoA.txt" using 1:5 with point title "Speedup ideal" axes x1y2

