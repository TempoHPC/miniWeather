rm desempenho.txt

awk 'NR==1 { tempoideal = $3}
	{ print tempoideal, tempoideal/2 }' tabelaA.txt > tempoidealA.txt

# --------------------------------------------------------

awk 'NR == 1 {T1 = $3} 

	{ print $1, T1/$3 }' tabelaA.txt > speedupA.txt


paste tabelaA.txt tempoidealA.txt speedupA.txt  >> desempenho.txt
cat desempenho.txt

