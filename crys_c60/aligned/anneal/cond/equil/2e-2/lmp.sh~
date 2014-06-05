#!/bin/bash
cd $PBS_O_WORKDIR
module load openmpi-psm-gcc

RUNPATH=/home/jason/Dropbox/pcbm_pdb/crys_c60/aligned/anneal/cond/2e-2
EXEPATH=/home/jason/lammps/lammps-2Nov10/src

mpirun -np `cat $PBS_NODEFILE | wc -l` $EXEPATH/lmp_generic < $RUNPATH/lmp.in.cond

