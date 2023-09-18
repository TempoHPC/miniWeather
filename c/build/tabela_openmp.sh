echo "OPENMP" > tabela_openmp.txt

    for i in {1..5}; do
    echo $i"ª Execução opnmp-----------" > threads.txt
    echo "-----------------------" > CPU_time_openmp.txt
        nucleos=1
        echo $nucleos "nucleos " >> threads.txt
        OMP_NUM_THREADS=$nucleos ./openmp | fgrep "CPU Time:" >> CPU_time_openmp.txt

        nucleos=2
        echo $nucleos "nucleos " >> threads.txt
        OMP_NUM_THREADS=$nucleos ./openmp | fgrep "CPU Time:" >> CPU_time_openmp.txt

        nucleos=4
        echo $nucleos "nucleos " >> threads.txt
        OMP_NUM_THREADS=$nucleos ./openmp | fgrep "CPU Time:" >> CPU_time_openmp.txt

        nucleos=8
        echo $nucleos "nucleos " >> threads.txt
        OMP_NUM_THREADS=$nucleos ./openmp | fgrep "CPU Time:" >> CPU_time_openmp.txt

        paste threads.txt CPU_time_openmp.txt >> tabela_openmp.txt
    done


cat tabela_openmp.txt
