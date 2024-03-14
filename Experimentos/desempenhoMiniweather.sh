rm desempenhompi.txt

awk 'NR==1 { tempoideal = $3; print tempoideal }

     NR>1  { tempoideal/=2; 
    
    	print tempoideal 
    
   }' minimos.txt > tempoideal.txt

# --------------------------------------------------------

awk 'NR == 1 {T1 = $3} 

	{ print $1, T1/$3 }' minimos.txt > speedup.txt


paste nucleos.txt  minimoMPI.txt tempoideal.txt speedup.txt  >> desempenhompi.txt
cat desempenhompi.txt