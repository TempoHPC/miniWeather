rm desempenho_hpctoolkit.txt

awk 'NR==1 { tempoideal = $2; print tempoideal }

     NR>1  { tempoideal/=2; 
    
    	print tempoideal 
    
   }' tabela_MPI.txt > tempoideal.txt

# --------------------------------------------------------

awk 'NR == 1 {T1 = $2} 

	{ print $1, T1/$2 }' tabela_MPI.txt > speedup.txt


paste tabela_MPI.txt tempoideal.txt speedup.txt  >> desempenho_hpctoolkit.txt
cat desempenho_hpctoolkit.txt