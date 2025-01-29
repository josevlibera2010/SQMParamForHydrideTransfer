#!/bin/bash
#SBATCH --job-name="CCR_HYD"
#SBATCH --output=%j.out
#SBATCH --error=%j.err
#SBATCH --ntasks=40
#SBATCH --mem=25GB
#SBATCH --cpus-per-task=1

module purge
################## load the software modules ###############################################################################
module load xtb
module load amber24

export I_MPI_COMPATIBILITY=3 #Necessary for the string to work
export AMBERHOME=</PATH/To/amber24>
source $AMBERHOME/amber.sh

################# necesary for xtb api paralelization ######################################################################
export OMP_NUM_THREADS=1,1
export OMP_STACKSIZE=20G
export OMP_MAX_ACTIVE_LEVELS=1
export MKL_NUM_THREADS=1
ulimit -s unlimited

################# XTBPATH must point to the folder containing the parameter file "param_gfn2-xtb.txt" #######################
DIR=$(pwd)
export XTBPATH=${DIR}

###################################### Running the ASM calculations with sander #############################################
NNODES=40
PARM="ccr_deut.prmtop"

rm -rf ${DIR}/results
mkdir -p ${DIR}/results

bash in.sh ${NNODES} ${DIR} ${PARM}

srun $AMBERHOME/bin/sander.MPI -ng ${NNODES} -groupfile ${DIR}/group_file
