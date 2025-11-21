#!/bin/bash
#SBATCH --job-name=compute-bench-test       
#SBATCH --output=compute-bench-test.out 
#SBATCH --error=compute-bench-test.err  
#SBATCH --mem=5g
#SBATCH -n 1
#SBATCH -t 01-00:00:00
#SBATCH -p l40-gpu
#SBATCH --qos=gpu_access
#SBATCH --gres=gpu:1

# Load Apptainer module
module load apptainer

# Path to Apptainer image
IMAGE="/nas/longleaf/home/yashashm/hw5/compute-bench-test.sif"

# Run the container
apptainer exec $IMAGE python /nas/longleaf/home/yashashm/hw5/compute_bench.py

