#!/bin/sh -login
#PBS -l nodes=1:ppn=1,mem=16gb,walltime=12:00:00
#PBS -M preeyano@msu.edu
#PBS -m abe
#PBS -N Condetri_${left}

cd ${PBS_O_WORKDIR}
perl ~/condetri_v2.1.pl -fastq1=${left} -fastq2=${right} -sc=33
