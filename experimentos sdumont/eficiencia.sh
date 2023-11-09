rm desempenho.txt

awk 'NR==1 { tempoideal = $3; 
	print tempoideal 
	
	for(i=1; i<=5; i++){
	 
	tempoideal = tempoideal/2; 
	print tempoideal 
}
	
}' tabelaA.txt > tempoidealA.txt

# --------------------------------------------------------
#errado-----------------------
awk 'NR==1 { tempo = $3; 

	for(i=1; i<=6; i++){ 
	tempo = tempo / i; 

	print tempo 
}

}' tabelaA.txt > speedupA.txt

echo -e "1"$'\n'"2"$'\n'"4"$'\n'"8"$'\n'"16"$'\n'"32"$'\n' > speedupideal.txt

paste tabelaA.txt tempoidealA.txt speedupideal.txt speedupA.txt  >> desempenho.txt
cat desempenho.txt
