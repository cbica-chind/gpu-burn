#!/bin/bash
#SBATCH --partition=aishort
#SBATCH --gpus=a40:1
#SBATCH --cpus-per-gpu=16
#SBATCH --mem-per-gpu=360G
#SBATCH --time=1:00:00

make
