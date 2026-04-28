#!/bin/bash
#SBATCH --partition=ai
#SBATCH --nodes=1
#SBATCH --gpus=a100:1
#SBATCH --mem-per-gpu=180G
#SBATCH --cpus-per-gpu=32
#SBATCH --time=24:00:00
#SBATCH --reservation=chind_14

module load cuda/12.2
uname -a
nvidia-smi

echo "Burn with doubles..."
./gpu_burn -d 1400

echo "Burn with tensor cores..."
./gpu_burn -tc 1400

