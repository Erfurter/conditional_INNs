#!/bin/bash

#SBATCH --job-name=python_script    # Name des Jobs
#SBATCH --output=result_%j.txt      # Standard Ausgabe und Fehler
#SBATCH --nodes=1                   # Anzahl der Nodes
#SBATCH --cpus-per-task=16           # Anzahl der CPU-Kerne pro Task
#SBATCH --mem=32GB                  # Speicher pro Node
#SBATCH --time=17:00:00             # Zeitlimit (hh:mm:ss)
#SBATCH --gpus=1                    # Eine GPU pro Node verwenden


#export CUDA_VISIBLE_DEVICES=""
# Aktiviere Conda-Umgebung
source /home/sascha/miniconda3/etc/profile.d/conda.sh
conda activate iwu-datenmodellierung-digitale-zwilllinge-brennstoffzelle

export PYTHONPATH="/home/sascha/dev/iwu-datenmodellierung-digitale-zwilllinge-brennstoffzelle:$PYTHONPATH"

# Führe das Python-Skript aus
srun python train.py

