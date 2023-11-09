rm desempenho.txt


awk '{ tempo = 0 }
{
    for(i=1; i<=5; i++){
    tempo= $1$1/2;
    print tempo
    
}
	print tempo
    
}' tabelaA.txt > tempoidealA.txt

#--------------------------------------------------------

awk '{ tempo = 0 }
{
	for(i=1; i<=5; i++){
		
	tempo= $1$1/$1$$i; 
	
	}
	
	print tempo
}
    
}' tabelaA.txt > speedupA.txt

echo -e "1"$'\n'"2"$'\n'"4"$'\n'"8"$'\n'"16"$'\n'"32"$'\n' > speedupideal.txt

paste tabelaA.txt tempoidealA.txt speedupA speedupideal.txt >> desempenho.txt

cat desempenho.txt

