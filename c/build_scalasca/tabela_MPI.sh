rm tabela_MPI.txt
    
        expDirB=/scratch/cenapadrjsd/isabel.barboza/miniWeather/c/build_scalasca
        dirSpeedUp="scorep_sum_MPI-*_JOBID-*"
        #grep "CPU Time:" /scratch/cenapadrjsd/isabel.barboza/miniWeather/c/build_scalasca/scorep_sum_MPI-*_JOBID-*/slurm-*.out | sort -t- -k2,2 -n | cut -d ":" -f 3 > CPU_time_MPI.txt
        grep "CPU Time:" $expDirB/$dirSpeedUp/slurm-*.out | sort -t- -k2,2 -n | cut -d ":" -f 3 > CPUTime_MPI.txt
        paste nucleos.txt CPUTime_MPI.txt >> tabela_MPI.txt

rm CPUTime_MPI.txt

cat tabela_MPI.txt
