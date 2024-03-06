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


# espessura da linha
set style line 1 linewidth 2


# gráfico de linhas
plot "tabela_MPI.txt" using 1:2 with linespoint linestyle 1 
