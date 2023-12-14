rm tabelaMPI.txt
    
        grep "CPU Time:" /scratch/cenapadrjsd/isabel.barboza/miniWeather/c/build_scalasca/scorep_sum_MPI-*_JOBID-*/slurm-*.out | sort -t- -k2,2 -n > tempos.txt
        grep "CPU Time:" tempos.txt | cut -d ":" -f 3 >> CPU_time_MPI.txt
        paste nucleos.txt CPU_time_MPI.txt >> tabelaMPI.txt

rm CPU_time_MPI.txt


cat tabelaMPI.txt
