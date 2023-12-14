# título do gráfico
set title "miniWeather com Scalasca"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "grafico_sbatch_mpi.png"


# eixo x Nucleos
set xlabel "Nucleos"
set xtics nomirror


# eixo y (Desempenho)
set ylabel "Desempenho"
set ytics nomirror


# espessura da linha
set style line 1 linewidth 4
set style line 2 linewidth 4

#  gráfico de linhas

plot "tabelaMPI.txt" using 1:3 with linespoint linestyle 1 title "Tempos Medidos"
