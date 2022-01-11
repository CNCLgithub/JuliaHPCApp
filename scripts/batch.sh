#!/bin/bash
#SBATCH --job-name=JuliaHPCExample
#SBATCH --out="slurm_out/%A_%a.out"
#SBATCH --time=00:10:00
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=2GB
#SBATCH --partition=scavenge
#SBATCH --requeue
#SBATCH --array=0-200

export JULIA_PROJECT="${PWD}"
# singularity exec -c -B "${PWD}:${PWD}" cont.sif julia "${PWD}/scripts/main.jl"
singularity exec -c -B "${PWD}:${PWD}" cont.sif julia -J "${PWD}/JHPC.so" \
	                                                 "${PWD}/scripts/main.jl"
