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
set style line 1 linewidth 4 pointtype 7 linecolor rgb "red"
set style line 2 linewidth 2 pointtype 5 linecolor rgb "blue"


# gráfico de linhas

plot "desempenhoA.txt" using 1:3 with linespoint linestyle 1 title "Tempo Medido", \
     "desempenhoA.txt" using 1:4 with linespoint linestyle 2 title "Tempo ideal", \
     "desempenhoA.txt" using 1:6 with linespoint linestyle 1 title "Speedup Medido" axes x1y2, \
     "desempenhoA.txt" using 1:5 with linespoint linestyle 2 title "Speedup ideal" axes x1y2

