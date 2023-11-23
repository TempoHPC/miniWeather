rm desempenhoB.txt

awk 'NR==1 { tempoideal = $3; print tempoideal }

     NR>1  { tempoideal/=2; 
    
    	print tempoideal 

 }' tabelaB.txt > tempoidealB.txt

# --------------------------------------------------------

awk 'NR == 1 {T1 = $3} 

	{ print $1, T1/$3 }' tabelaB.txt > speedupB.txt


paste tabelaB.txt tempoidealB.txt speedupB.txt  >> desempenhoB.txt
cat desempenhoB.txt
