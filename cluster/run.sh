#!/bin/bash

#SBATCH --ntasks=6
#SBATCH --time=4:00:00
#SBATCH --job-name="calliope6"
#SBATCH --mem-per-cpu=50G
#SBATCH --mail-type=BEGIN,END

calliope run balancing-act-model/national/model.yaml --save_netcdf=results.nc --scenario=tm001,time-series-for-all-years,model-duration-1955

