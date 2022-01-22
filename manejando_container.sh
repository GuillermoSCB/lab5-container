#!/bin/bash


#SBATCH --chdir=/home/alumno23/lab5-container
#SBATCH -J  GSCB
#SBATCH --cpus-per-task=1
#SBATCH --output=output_manejando_container.sh



module load singularity


echo "#################### Esto es un ls del directorio #########################"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ls
echo "###########################################################################"



echo "#################### Esto es un pwd del directorio ########################"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif pwd
echo "###########################################################################"



echo "#################### Esta es la version de python ##########################"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif python --version
echo "###########################################################################"

echo "#################### Esta es la version del compilador ####################"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif g++ --version
echo "###########################################################################"


echo "#################### Esta es la version del compilador ####################"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif data/k-mer13
echo "###########################################################################"
#time data/k-mer13


