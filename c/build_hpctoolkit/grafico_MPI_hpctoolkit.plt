# título do gráfico
set title "Desempenho com HPCtoolkit"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "grafico_hpctookit.png"

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

plot "desempenho_hpctoolkit.txt" using 1:2 with linespoint linestyle 1 title "Tempo Medido", \
     "desempenho_hpctoolkit.txt" using 1:3 with linespoint linestyle 2 title "Tempo ideal", \
     "desempenho_hpctoolkit.txt" using 1:5 with linespoint linestyle 1 title "Speedup Medido" axes x1y2, \
     "desempenho_hpctoolkit.txt" using 1:4 with linespoint linestyle 2 title "Speedup ideal" axes x1y2