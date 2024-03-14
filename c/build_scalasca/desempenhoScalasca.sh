rm desempenhoScalasca.txt


# TEMPO IDEAL

awk 'NR==1 { tempoideal = $3; print tempoideal }

     NR>1  { tempoideal/=2; 
    
    	print tempoideal 
    
   }' tabelaMPI.txt > tempoideal.txt

# SPEEDUP OBTIDO

awk 'NR == 1 {T1 = $3} 

	{ print $1, T1/$3 }' tabelaMPI.txt > speedup.txt


paste tabelaMPI.txt tempoideal.txt speedup.txt  >> desempenhoScalasca.txt
cat desempenhoScalasca.txt