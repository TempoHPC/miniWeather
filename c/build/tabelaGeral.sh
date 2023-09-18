chmod +x ./tabela_mpi.sh
./tabela_mpi.sh

chmod +x ./tabela_openmp.sh
./tabela_openmp.sh

paste tabela_mpi.txt tabela_openmp.txt > tabela_geral.txt
cat tabela_geral.txt
