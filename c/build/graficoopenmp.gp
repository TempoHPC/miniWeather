# título do gráfico
set title 'Desempenho em Função do Número de Núcleos'

# formato do arquivo de saída 
set terminal pngcairo

# arquivo de saída
set output 'graficoopenmp.png'

# rótulos dos eixos
set xlabel 'Núcleos'
set ylabel 'Tempo (segundos)'



# categorias de núcleos
set xtics ('1 nucleos' 0, '2 nucleos' 1, '4 nucleos' 2, '8 nucleos' 3, '16 nucleos' 4, '32 nucleos' 5)

#  estilo de linha
set style line 1 lc rgb 'blue' lt 1 lw 2
set style line 2 lc rgb 'red' lt 1 lw 2
set style line 3 lc rgb 'green' lt 1 lw 2
set style line 4 lc rgb 'orange' lt 1 lw 2
set style line 5 lc rgb 'purple' lt 1 lw 2

#  gráfico de linhas
plot 'tabelaAtualOPENMP.txt' using 2:xtic(1) title 'Execução 1' with lines ls 1, \
     '' using 3 title 'Execução 2' with lines ls 2, \
     '' using 4 title 'Execução 3' with lines ls 3, \
     '' using 5 title 'Execução 4' with lines ls 4, \
     '' using 6 title 'Execução 5' with lines ls 5
