#!/bin/bash
#SBATCH --job-name=JuliaHPCExample
#SBATCH --out="slurm-%j.out"
#SBATCH --time=00:10
#SBATCH --partition="scavenge"
#SBATCH --nodes=1 --ntasks=1 --cpus-per-task=2
#SBATCH --mem-per-cpu=2G
