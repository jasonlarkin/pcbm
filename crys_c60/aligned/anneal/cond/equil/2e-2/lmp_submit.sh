#!/bin/sh

qsub -l walltime=24:00:00 -l nodes=1:ppn=1 lmp.sh

