#!/bin/bash

#SBATCH --chdir=/home/alumno23/lab5-container
#SBATCH -J  GSCB
#SBATCH --cpus-per-task=1


module load singularity/3.8.0


echo "###########################################################################"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif data/kmer-13.py>>RESULTADOS.txt
echo "###########################################################################"


echo "###########################################################################"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif data/k-mer14.py>>RESULTADOS.txt
echo "###########################################################################"


echo "###########################################################################"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif data/k-mer13>>RESULTADOS.txt
echo "###########################################################################"


echo "###########################################################################"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif data/k-mer14>>RESULTADOS.txt
echo "###########################################################################"



module unload singularity/3.8.0
