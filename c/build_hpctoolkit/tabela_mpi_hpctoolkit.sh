rm tabela_MPI.txt

    du profiling/ -d 3 | grep MPI|sort -n |awk -F- '{ print $3}'|awk -F_ '{ print $1}'  > nucleos.txt

        expDirB=/scratch/cenapadrjsd/isabel.barboza/miniWeather/c/build_scalasca
            export     expDirB=/scratch/cenapadrjsd/isabel.barboza/miniWeather/c/build_hpctoolkit
        
        dirSpeedUp="scorep_sum_MPI-*_JOBID-*"
            export     dirSpeedUp="profiling/hpctoolkit/NUMNODES-1/MPI-*_JOBID-*"
        
    du $expDirB/profiling/ -d 3 | grep MPI|sort -n |awk '{print "grep \"CPU Time:\"", $2"/slurm-*.out"}' | bash | cut -d ":" -f 2| cut  -d" " -f 2 >  CPUTime_MPI.txt
    
    paste nucleos.txt CPUTime_MPI.txt >> tabela_MPI.txt

rm CPUTime_MPI.txt

cat tabela_MPI.txt
