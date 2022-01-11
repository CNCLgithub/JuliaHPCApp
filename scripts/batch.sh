#!/bin/bash
#SBATCH --job-name=JuliaHPCExample
#SBATCH --out="slurm-%j.out"
#SBATCH --time=00:10:00
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=2GB
#SBATCH --partition=scavenge
#SBATCH --requeue
#SBATCH --array=0-1199

singularity exec cont.sif julia scripts/main.jl
