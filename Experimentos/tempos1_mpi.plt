# título do gráfico
set title "miniWeather sem Scalasca"

# formato do arquivo de saída 
set term "png"

# arquivo de saída
set output "graficoMPIsemScalasca.png"


# eixo x Nucleos
set xlabel "Nucleos"
set xtics nomirror


# eixo y (Desempenho)
set ylabel "Desempenho"
set ytics nomirror


# espessura da linha
set style line 1 linewidth 4


#  gráfico de linhas

plot "tabelaAtualMPI.txt" using 1:3 with linespoint linestyle 1 title "Tempos Medidos"
