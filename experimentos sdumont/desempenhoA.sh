rm desempenhoA.txt

awk 'NR==1 { tempoideal = $3; print tempoideal }

     NR>1  { tempoideal/=2; 
    
    	print tempoideal 
    
   }' tabelaA.txt > tempoidealA.txt

# --------------------------------------------------------

awk 'NR == 1 {T1 = $3} 

	{ print $1, T1/$3 }' tabelaA.txt > speedupA.txt


paste tabelaA.txt tempoidealA.txt speedupA.txt  >> desempenhoA.txt
cat desempenhoA.txt

