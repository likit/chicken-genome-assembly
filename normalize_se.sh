#!/bin/sh -login
#PBS -l nodes=1:ppn=1,mem=48gb,walltime=12:00:00
#PBS -M preeyano@msu.edu
#PBS -m abe
#PBS -N Digignorm_single_${PBS_JOBID}

cd ${PBS_O_WORKDIR}

if [ -z $loadtable ]
then
    ~/khmer/scripts/normalize-by-median.py -C 20 -k 20 -N 4 -x 1e10 --savehash ${savetable} ${input} -R ${input}.log
else
    ~/khmer/scripts/normalize-by-median.py -C 20 -k 20 -N 4 -x 1e10 --savehash ${savetable} --loadhash ${loadtable} ${input} -R ${input}.log
fi
