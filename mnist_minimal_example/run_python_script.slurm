#!/bin/bash

#SBATCH --job-name=python_script    # job name
#SBATCH --output=result_%j.txt      # standard output
#SBATCH --nodes=1                   # number of nodes
#SBATCH --cpus-per-task=16          # number of cpu cores
#SBATCH --mem=32GB                  # memory per node
#SBATCH --time=17:00:00             # time limit (hh:mm:ss)
#SBATCH --gpus=1

#export CUDA_VISIBLE_DEVICES=""
source /home/sascha/miniconda3/etc/profile.d/conda.sh
conda activate iwu-datenmodellierung-digitale-zwilllinge-brennstoffzelle

export PYTHONPATH="/home/sascha/dev/iwu-datenmodellierung-digitale-zwilllinge-brennstoffzelle:$PYTHONPATH"

srun python train.py

