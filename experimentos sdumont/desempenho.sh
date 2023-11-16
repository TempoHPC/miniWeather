rm desempenho.txt

awk 'NR==1 { tempoideal = $3}
    { tempoideal/=2

	print tempoideal

 }' tabelaA.txt > tempoidealA.txt

# --------------------------------------------------------

awk 'NR == 1 {T1 = $3} 

	{ print $1, T1/$3 }' tabelaA.txt > speedupA.txt


paste tabelaA.txt tempoidealA.txt speedupA.txt  >> desempenho.txt
cat desempenho.txt

