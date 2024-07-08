#!/bin/bash

#SBATCH --ntasks=6
#SBATCH --time=24:00:00
#SBATCH --job-name="calliope6"
#SBATCH --mem-per-cpu=50G
#SBATCH --mail-type=BEGIN,END

module load gurobi/10.0.3
calliope run balancing-act-model/national/model.yaml \
--save_netcdf=results_daily.nc --scenario=tm001,time-series-for-all-years,model-duration-1955
