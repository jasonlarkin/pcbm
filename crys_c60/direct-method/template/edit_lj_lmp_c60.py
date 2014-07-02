import csv
import numpy as np
import os


uc_x_uc=2
mols_in_uc=4
latt_const="16.00"
temperature=500

if uc_x_uc == 2:
   ucx="2x2"
elif uc_x_uc ==2:
   ucx="1x1"

structure_header="/home-research/caroling/projects/pv/c60/fcc/structs_c60_lattconsts/" + ucx + "/C60_"  + latt_const + "AA.struct"
experiment_header=  str(temperature) + "K_" + latt_const 
lj_block=""
pair_coeff_header="pair_coeff * * tersoff /home-research/caroling/projects/lammps_templates/potentials/C." + str(uc_x_uc**3*mols_in_uc)+".tersoff " 
group_header="C type = "
filein= 'HEAT.in'
foutname= 'HEAT.out'
fout=open(foutname,'wb')

for fullerenes in xrange(1, uc_x_uc**3*mols_in_uc+1):
    pair_coeff_header+= str(fullerenes) + "\t"
    group_header+= str(fullerenes) + "\t"
    for fullerenes_inner in xrange(1, uc_x_uc**3*mols_in_uc+1):
       if fullerenes_inner > fullerenes:
         lj_block+="pair_coeff " + str(fullerenes) + "\t" + str(fullerenes_inner) + " 0.00286 3.465 \n"
    

with open(filein, mode="r") as file:
   for line in file:
      line = line.replace("$GROUP_HEAD$", group_header)
      line = line.replace("$PAIR_COEFF_HEAD$", pair_coeff_header)
      line = line.replace("$PAIR_COEFF_BODY$", lj_block) 
      line = line.replace("$N_UC$", str(uc_x_uc))
      line = line.replace("$STRUCTURE_FILE$", structure_header)
      line = line.replace("$TEMP$", str(temperature))
      line = line.replace("$EXP$", experiment_header)
      line = line.replace("\r", "")
      fout.write(line)
fout.close()
file.close()
