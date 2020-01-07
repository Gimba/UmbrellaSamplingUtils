#!/bin/bash

#0
pmemd -O -i umbrella_config/min_1_0.umbin -o umbrella_productions/min_1_0.out -p WT_C2.prmtop -c WT_C2.inpcrd -r umbrella_productions/min_1_0.rst -inf umbrella_productions/min_1_0.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_0.umbin -o umbrella_productions/rel_1_0.out -p WT_C2.prmtop -c umbrella_productions/min_1_0.rst -r umbrella_productions/rel_1_0.rst -inf umbrella_productions/rel_1_0.mdinfo -ref umbrella_productions/min_1_0.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_0.umbin -o umbrella_productions/rel_2_25C_0.out -p WT_C2.prmtop -c umbrella_productions/rel_1_0.rst -r umbrella_productions/rel_2_25C_0.rst -inf umbrella_productions/rel_2_25C_0.mdinfo -ref umbrella_productions/rel_1_0.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_0.umbin -o umbrella_productions/rel_3_25C_0.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_0.rst -r umbrella_productions/rel_3_25C_0.rst -inf umbrella_productions/rel_3_25C_0.mdinfo -ref umbrella_productions/rel_2_25C_0.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_0.umbin -o umbrella_productions/prod_25C_0.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_0.rst -r umbrella_productions/prod_25C_0.rst -inf umbrella_productions/prod_25C_0.mdinfo -x umbrella_productions/prod_25C_0.nc -ref umbrella_productions/rel_3_25C_0.rst 

#-1
pmemd -O -i umbrella_config/min_1_-1.umbin -o umbrella_productions/min_1_-1.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_0.rst -r umbrella_productions/min_1_-1.rst -inf umbrella_productions/min_1_-1.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-1.umbin -o umbrella_productions/rel_1_-1.out -p WT_C2.prmtop -c umbrella_productions/min_1_-1.rst -r umbrella_productions/rel_1_-1.rst -inf umbrella_productions/rel_1_-1.mdinfo -ref umbrella_productions/min_1_-1.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-1.umbin -o umbrella_productions/rel_2_25C_-1.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-1.rst -r umbrella_productions/rel_2_25C_-1.rst -inf umbrella_productions/rel_2_25C_-1.mdinfo -ref umbrella_productions/rel_1_-1.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-1.umbin -o umbrella_productions/rel_3_25C_-1.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-1.rst -r umbrella_productions/rel_3_25C_-1.rst -inf umbrella_productions/rel_3_25C_-1.mdinfo -ref umbrella_productions/rel_2_25C_-1.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-1.umbin -o umbrella_productions/prod_25C_-1.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-1.rst -r umbrella_productions/prod_25C_-1.rst -inf umbrella_productions/prod_25C_-1.mdinfo -x umbrella_productions/prod_25C_-1.nc -ref umbrella_productions/rel_3_25C_-1.rst 

#-2
pmemd -O -i umbrella_config/min_1_-2.umbin -o umbrella_productions/min_1_-2.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-1.rst -r umbrella_productions/min_1_-2.rst -inf umbrella_productions/min_1_-2.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-2.umbin -o umbrella_productions/rel_1_-2.out -p WT_C2.prmtop -c umbrella_productions/min_1_-2.rst -r umbrella_productions/rel_1_-2.rst -inf umbrella_productions/rel_1_-2.mdinfo -ref umbrella_productions/min_1_-2.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-2.umbin -o umbrella_productions/rel_2_25C_-2.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-2.rst -r umbrella_productions/rel_2_25C_-2.rst -inf umbrella_productions/rel_2_25C_-2.mdinfo -ref umbrella_productions/rel_1_-2.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-2.umbin -o umbrella_productions/rel_3_25C_-2.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-2.rst -r umbrella_productions/rel_3_25C_-2.rst -inf umbrella_productions/rel_3_25C_-2.mdinfo -ref umbrella_productions/rel_2_25C_-2.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-2.umbin -o umbrella_productions/prod_25C_-2.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-2.rst -r umbrella_productions/prod_25C_-2.rst -inf umbrella_productions/prod_25C_-2.mdinfo -x umbrella_productions/prod_25C_-2.nc -ref umbrella_productions/rel_3_25C_-2.rst 

#-3
pmemd -O -i umbrella_config/min_1_-3.umbin -o umbrella_productions/min_1_-3.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-2.rst -r umbrella_productions/min_1_-3.rst -inf umbrella_productions/min_1_-3.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-3.umbin -o umbrella_productions/rel_1_-3.out -p WT_C2.prmtop -c umbrella_productions/min_1_-3.rst -r umbrella_productions/rel_1_-3.rst -inf umbrella_productions/rel_1_-3.mdinfo -ref umbrella_productions/min_1_-3.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-3.umbin -o umbrella_productions/rel_2_25C_-3.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-3.rst -r umbrella_productions/rel_2_25C_-3.rst -inf umbrella_productions/rel_2_25C_-3.mdinfo -ref umbrella_productions/rel_1_-3.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-3.umbin -o umbrella_productions/rel_3_25C_-3.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-3.rst -r umbrella_productions/rel_3_25C_-3.rst -inf umbrella_productions/rel_3_25C_-3.mdinfo -ref umbrella_productions/rel_2_25C_-3.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-3.umbin -o umbrella_productions/prod_25C_-3.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-3.rst -r umbrella_productions/prod_25C_-3.rst -inf umbrella_productions/prod_25C_-3.mdinfo -x umbrella_productions/prod_25C_-3.nc -ref umbrella_productions/rel_3_25C_-3.rst 

#-4
pmemd -O -i umbrella_config/min_1_-4.umbin -o umbrella_productions/min_1_-4.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-3.rst -r umbrella_productions/min_1_-4.rst -inf umbrella_productions/min_1_-4.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-4.umbin -o umbrella_productions/rel_1_-4.out -p WT_C2.prmtop -c umbrella_productions/min_1_-4.rst -r umbrella_productions/rel_1_-4.rst -inf umbrella_productions/rel_1_-4.mdinfo -ref umbrella_productions/min_1_-4.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-4.umbin -o umbrella_productions/rel_2_25C_-4.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-4.rst -r umbrella_productions/rel_2_25C_-4.rst -inf umbrella_productions/rel_2_25C_-4.mdinfo -ref umbrella_productions/rel_1_-4.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-4.umbin -o umbrella_productions/rel_3_25C_-4.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-4.rst -r umbrella_productions/rel_3_25C_-4.rst -inf umbrella_productions/rel_3_25C_-4.mdinfo -ref umbrella_productions/rel_2_25C_-4.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-4.umbin -o umbrella_productions/prod_25C_-4.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-4.rst -r umbrella_productions/prod_25C_-4.rst -inf umbrella_productions/prod_25C_-4.mdinfo -x umbrella_productions/prod_25C_-4.nc -ref umbrella_productions/rel_3_25C_-4.rst 

#-5
pmemd -O -i umbrella_config/min_1_-5.umbin -o umbrella_productions/min_1_-5.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-4.rst -r umbrella_productions/min_1_-5.rst -inf umbrella_productions/min_1_-5.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-5.umbin -o umbrella_productions/rel_1_-5.out -p WT_C2.prmtop -c umbrella_productions/min_1_-5.rst -r umbrella_productions/rel_1_-5.rst -inf umbrella_productions/rel_1_-5.mdinfo -ref umbrella_productions/min_1_-5.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-5.umbin -o umbrella_productions/rel_2_25C_-5.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-5.rst -r umbrella_productions/rel_2_25C_-5.rst -inf umbrella_productions/rel_2_25C_-5.mdinfo -ref umbrella_productions/rel_1_-5.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-5.umbin -o umbrella_productions/rel_3_25C_-5.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-5.rst -r umbrella_productions/rel_3_25C_-5.rst -inf umbrella_productions/rel_3_25C_-5.mdinfo -ref umbrella_productions/rel_2_25C_-5.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-5.umbin -o umbrella_productions/prod_25C_-5.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-5.rst -r umbrella_productions/prod_25C_-5.rst -inf umbrella_productions/prod_25C_-5.mdinfo -x umbrella_productions/prod_25C_-5.nc -ref umbrella_productions/rel_3_25C_-5.rst 

#-6
pmemd -O -i umbrella_config/min_1_-6.umbin -o umbrella_productions/min_1_-6.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-5.rst -r umbrella_productions/min_1_-6.rst -inf umbrella_productions/min_1_-6.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-6.umbin -o umbrella_productions/rel_1_-6.out -p WT_C2.prmtop -c umbrella_productions/min_1_-6.rst -r umbrella_productions/rel_1_-6.rst -inf umbrella_productions/rel_1_-6.mdinfo -ref umbrella_productions/min_1_-6.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-6.umbin -o umbrella_productions/rel_2_25C_-6.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-6.rst -r umbrella_productions/rel_2_25C_-6.rst -inf umbrella_productions/rel_2_25C_-6.mdinfo -ref umbrella_productions/rel_1_-6.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-6.umbin -o umbrella_productions/rel_3_25C_-6.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-6.rst -r umbrella_productions/rel_3_25C_-6.rst -inf umbrella_productions/rel_3_25C_-6.mdinfo -ref umbrella_productions/rel_2_25C_-6.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-6.umbin -o umbrella_productions/prod_25C_-6.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-6.rst -r umbrella_productions/prod_25C_-6.rst -inf umbrella_productions/prod_25C_-6.mdinfo -x umbrella_productions/prod_25C_-6.nc -ref umbrella_productions/rel_3_25C_-6.rst 

#-7
pmemd -O -i umbrella_config/min_1_-7.umbin -o umbrella_productions/min_1_-7.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-6.rst -r umbrella_productions/min_1_-7.rst -inf umbrella_productions/min_1_-7.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-7.umbin -o umbrella_productions/rel_1_-7.out -p WT_C2.prmtop -c umbrella_productions/min_1_-7.rst -r umbrella_productions/rel_1_-7.rst -inf umbrella_productions/rel_1_-7.mdinfo -ref umbrella_productions/min_1_-7.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-7.umbin -o umbrella_productions/rel_2_25C_-7.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-7.rst -r umbrella_productions/rel_2_25C_-7.rst -inf umbrella_productions/rel_2_25C_-7.mdinfo -ref umbrella_productions/rel_1_-7.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-7.umbin -o umbrella_productions/rel_3_25C_-7.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-7.rst -r umbrella_productions/rel_3_25C_-7.rst -inf umbrella_productions/rel_3_25C_-7.mdinfo -ref umbrella_productions/rel_2_25C_-7.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-7.umbin -o umbrella_productions/prod_25C_-7.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-7.rst -r umbrella_productions/prod_25C_-7.rst -inf umbrella_productions/prod_25C_-7.mdinfo -x umbrella_productions/prod_25C_-7.nc -ref umbrella_productions/rel_3_25C_-7.rst 

#-8
pmemd -O -i umbrella_config/min_1_-8.umbin -o umbrella_productions/min_1_-8.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-7.rst -r umbrella_productions/min_1_-8.rst -inf umbrella_productions/min_1_-8.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-8.umbin -o umbrella_productions/rel_1_-8.out -p WT_C2.prmtop -c umbrella_productions/min_1_-8.rst -r umbrella_productions/rel_1_-8.rst -inf umbrella_productions/rel_1_-8.mdinfo -ref umbrella_productions/min_1_-8.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-8.umbin -o umbrella_productions/rel_2_25C_-8.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-8.rst -r umbrella_productions/rel_2_25C_-8.rst -inf umbrella_productions/rel_2_25C_-8.mdinfo -ref umbrella_productions/rel_1_-8.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-8.umbin -o umbrella_productions/rel_3_25C_-8.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-8.rst -r umbrella_productions/rel_3_25C_-8.rst -inf umbrella_productions/rel_3_25C_-8.mdinfo -ref umbrella_productions/rel_2_25C_-8.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-8.umbin -o umbrella_productions/prod_25C_-8.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-8.rst -r umbrella_productions/prod_25C_-8.rst -inf umbrella_productions/prod_25C_-8.mdinfo -x umbrella_productions/prod_25C_-8.nc -ref umbrella_productions/rel_3_25C_-8.rst 

#-9
pmemd -O -i umbrella_config/min_1_-9.umbin -o umbrella_productions/min_1_-9.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-8.rst -r umbrella_productions/min_1_-9.rst -inf umbrella_productions/min_1_-9.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-9.umbin -o umbrella_productions/rel_1_-9.out -p WT_C2.prmtop -c umbrella_productions/min_1_-9.rst -r umbrella_productions/rel_1_-9.rst -inf umbrella_productions/rel_1_-9.mdinfo -ref umbrella_productions/min_1_-9.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-9.umbin -o umbrella_productions/rel_2_25C_-9.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-9.rst -r umbrella_productions/rel_2_25C_-9.rst -inf umbrella_productions/rel_2_25C_-9.mdinfo -ref umbrella_productions/rel_1_-9.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-9.umbin -o umbrella_productions/rel_3_25C_-9.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-9.rst -r umbrella_productions/rel_3_25C_-9.rst -inf umbrella_productions/rel_3_25C_-9.mdinfo -ref umbrella_productions/rel_2_25C_-9.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-9.umbin -o umbrella_productions/prod_25C_-9.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-9.rst -r umbrella_productions/prod_25C_-9.rst -inf umbrella_productions/prod_25C_-9.mdinfo -x umbrella_productions/prod_25C_-9.nc -ref umbrella_productions/rel_3_25C_-9.rst 

#-10
pmemd -O -i umbrella_config/min_1_-10.umbin -o umbrella_productions/min_1_-10.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-9.rst -r umbrella_productions/min_1_-10.rst -inf umbrella_productions/min_1_-10.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-10.umbin -o umbrella_productions/rel_1_-10.out -p WT_C2.prmtop -c umbrella_productions/min_1_-10.rst -r umbrella_productions/rel_1_-10.rst -inf umbrella_productions/rel_1_-10.mdinfo -ref umbrella_productions/min_1_-10.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-10.umbin -o umbrella_productions/rel_2_25C_-10.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-10.rst -r umbrella_productions/rel_2_25C_-10.rst -inf umbrella_productions/rel_2_25C_-10.mdinfo -ref umbrella_productions/rel_1_-10.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-10.umbin -o umbrella_productions/rel_3_25C_-10.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-10.rst -r umbrella_productions/rel_3_25C_-10.rst -inf umbrella_productions/rel_3_25C_-10.mdinfo -ref umbrella_productions/rel_2_25C_-10.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-10.umbin -o umbrella_productions/prod_25C_-10.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-10.rst -r umbrella_productions/prod_25C_-10.rst -inf umbrella_productions/prod_25C_-10.mdinfo -x umbrella_productions/prod_25C_-10.nc -ref umbrella_productions/rel_3_25C_-10.rst 

#-11
pmemd -O -i umbrella_config/min_1_-11.umbin -o umbrella_productions/min_1_-11.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-10.rst -r umbrella_productions/min_1_-11.rst -inf umbrella_productions/min_1_-11.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-11.umbin -o umbrella_productions/rel_1_-11.out -p WT_C2.prmtop -c umbrella_productions/min_1_-11.rst -r umbrella_productions/rel_1_-11.rst -inf umbrella_productions/rel_1_-11.mdinfo -ref umbrella_productions/min_1_-11.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-11.umbin -o umbrella_productions/rel_2_25C_-11.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-11.rst -r umbrella_productions/rel_2_25C_-11.rst -inf umbrella_productions/rel_2_25C_-11.mdinfo -ref umbrella_productions/rel_1_-11.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-11.umbin -o umbrella_productions/rel_3_25C_-11.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-11.rst -r umbrella_productions/rel_3_25C_-11.rst -inf umbrella_productions/rel_3_25C_-11.mdinfo -ref umbrella_productions/rel_2_25C_-11.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-11.umbin -o umbrella_productions/prod_25C_-11.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-11.rst -r umbrella_productions/prod_25C_-11.rst -inf umbrella_productions/prod_25C_-11.mdinfo -x umbrella_productions/prod_25C_-11.nc -ref umbrella_productions/rel_3_25C_-11.rst 

#-12
pmemd -O -i umbrella_config/min_1_-12.umbin -o umbrella_productions/min_1_-12.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-11.rst -r umbrella_productions/min_1_-12.rst -inf umbrella_productions/min_1_-12.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-12.umbin -o umbrella_productions/rel_1_-12.out -p WT_C2.prmtop -c umbrella_productions/min_1_-12.rst -r umbrella_productions/rel_1_-12.rst -inf umbrella_productions/rel_1_-12.mdinfo -ref umbrella_productions/min_1_-12.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-12.umbin -o umbrella_productions/rel_2_25C_-12.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-12.rst -r umbrella_productions/rel_2_25C_-12.rst -inf umbrella_productions/rel_2_25C_-12.mdinfo -ref umbrella_productions/rel_1_-12.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-12.umbin -o umbrella_productions/rel_3_25C_-12.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-12.rst -r umbrella_productions/rel_3_25C_-12.rst -inf umbrella_productions/rel_3_25C_-12.mdinfo -ref umbrella_productions/rel_2_25C_-12.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-12.umbin -o umbrella_productions/prod_25C_-12.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-12.rst -r umbrella_productions/prod_25C_-12.rst -inf umbrella_productions/prod_25C_-12.mdinfo -x umbrella_productions/prod_25C_-12.nc -ref umbrella_productions/rel_3_25C_-12.rst 

#-13
pmemd -O -i umbrella_config/min_1_-13.umbin -o umbrella_productions/min_1_-13.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-12.rst -r umbrella_productions/min_1_-13.rst -inf umbrella_productions/min_1_-13.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-13.umbin -o umbrella_productions/rel_1_-13.out -p WT_C2.prmtop -c umbrella_productions/min_1_-13.rst -r umbrella_productions/rel_1_-13.rst -inf umbrella_productions/rel_1_-13.mdinfo -ref umbrella_productions/min_1_-13.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-13.umbin -o umbrella_productions/rel_2_25C_-13.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-13.rst -r umbrella_productions/rel_2_25C_-13.rst -inf umbrella_productions/rel_2_25C_-13.mdinfo -ref umbrella_productions/rel_1_-13.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-13.umbin -o umbrella_productions/rel_3_25C_-13.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-13.rst -r umbrella_productions/rel_3_25C_-13.rst -inf umbrella_productions/rel_3_25C_-13.mdinfo -ref umbrella_productions/rel_2_25C_-13.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-13.umbin -o umbrella_productions/prod_25C_-13.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-13.rst -r umbrella_productions/prod_25C_-13.rst -inf umbrella_productions/prod_25C_-13.mdinfo -x umbrella_productions/prod_25C_-13.nc -ref umbrella_productions/rel_3_25C_-13.rst 

#-14
pmemd -O -i umbrella_config/min_1_-14.umbin -o umbrella_productions/min_1_-14.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-13.rst -r umbrella_productions/min_1_-14.rst -inf umbrella_productions/min_1_-14.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-14.umbin -o umbrella_productions/rel_1_-14.out -p WT_C2.prmtop -c umbrella_productions/min_1_-14.rst -r umbrella_productions/rel_1_-14.rst -inf umbrella_productions/rel_1_-14.mdinfo -ref umbrella_productions/min_1_-14.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-14.umbin -o umbrella_productions/rel_2_25C_-14.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-14.rst -r umbrella_productions/rel_2_25C_-14.rst -inf umbrella_productions/rel_2_25C_-14.mdinfo -ref umbrella_productions/rel_1_-14.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-14.umbin -o umbrella_productions/rel_3_25C_-14.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-14.rst -r umbrella_productions/rel_3_25C_-14.rst -inf umbrella_productions/rel_3_25C_-14.mdinfo -ref umbrella_productions/rel_2_25C_-14.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-14.umbin -o umbrella_productions/prod_25C_-14.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-14.rst -r umbrella_productions/prod_25C_-14.rst -inf umbrella_productions/prod_25C_-14.mdinfo -x umbrella_productions/prod_25C_-14.nc -ref umbrella_productions/rel_3_25C_-14.rst 

#-15
pmemd -O -i umbrella_config/min_1_-15.umbin -o umbrella_productions/min_1_-15.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-14.rst -r umbrella_productions/min_1_-15.rst -inf umbrella_productions/min_1_-15.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-15.umbin -o umbrella_productions/rel_1_-15.out -p WT_C2.prmtop -c umbrella_productions/min_1_-15.rst -r umbrella_productions/rel_1_-15.rst -inf umbrella_productions/rel_1_-15.mdinfo -ref umbrella_productions/min_1_-15.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-15.umbin -o umbrella_productions/rel_2_25C_-15.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-15.rst -r umbrella_productions/rel_2_25C_-15.rst -inf umbrella_productions/rel_2_25C_-15.mdinfo -ref umbrella_productions/rel_1_-15.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-15.umbin -o umbrella_productions/rel_3_25C_-15.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-15.rst -r umbrella_productions/rel_3_25C_-15.rst -inf umbrella_productions/rel_3_25C_-15.mdinfo -ref umbrella_productions/rel_2_25C_-15.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-15.umbin -o umbrella_productions/prod_25C_-15.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-15.rst -r umbrella_productions/prod_25C_-15.rst -inf umbrella_productions/prod_25C_-15.mdinfo -x umbrella_productions/prod_25C_-15.nc -ref umbrella_productions/rel_3_25C_-15.rst 

#-16
pmemd -O -i umbrella_config/min_1_-16.umbin -o umbrella_productions/min_1_-16.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-15.rst -r umbrella_productions/min_1_-16.rst -inf umbrella_productions/min_1_-16.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-16.umbin -o umbrella_productions/rel_1_-16.out -p WT_C2.prmtop -c umbrella_productions/min_1_-16.rst -r umbrella_productions/rel_1_-16.rst -inf umbrella_productions/rel_1_-16.mdinfo -ref umbrella_productions/min_1_-16.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-16.umbin -o umbrella_productions/rel_2_25C_-16.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-16.rst -r umbrella_productions/rel_2_25C_-16.rst -inf umbrella_productions/rel_2_25C_-16.mdinfo -ref umbrella_productions/rel_1_-16.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-16.umbin -o umbrella_productions/rel_3_25C_-16.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-16.rst -r umbrella_productions/rel_3_25C_-16.rst -inf umbrella_productions/rel_3_25C_-16.mdinfo -ref umbrella_productions/rel_2_25C_-16.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-16.umbin -o umbrella_productions/prod_25C_-16.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-16.rst -r umbrella_productions/prod_25C_-16.rst -inf umbrella_productions/prod_25C_-16.mdinfo -x umbrella_productions/prod_25C_-16.nc -ref umbrella_productions/rel_3_25C_-16.rst 

#-17
pmemd -O -i umbrella_config/min_1_-17.umbin -o umbrella_productions/min_1_-17.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-16.rst -r umbrella_productions/min_1_-17.rst -inf umbrella_productions/min_1_-17.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-17.umbin -o umbrella_productions/rel_1_-17.out -p WT_C2.prmtop -c umbrella_productions/min_1_-17.rst -r umbrella_productions/rel_1_-17.rst -inf umbrella_productions/rel_1_-17.mdinfo -ref umbrella_productions/min_1_-17.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-17.umbin -o umbrella_productions/rel_2_25C_-17.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-17.rst -r umbrella_productions/rel_2_25C_-17.rst -inf umbrella_productions/rel_2_25C_-17.mdinfo -ref umbrella_productions/rel_1_-17.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-17.umbin -o umbrella_productions/rel_3_25C_-17.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-17.rst -r umbrella_productions/rel_3_25C_-17.rst -inf umbrella_productions/rel_3_25C_-17.mdinfo -ref umbrella_productions/rel_2_25C_-17.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-17.umbin -o umbrella_productions/prod_25C_-17.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-17.rst -r umbrella_productions/prod_25C_-17.rst -inf umbrella_productions/prod_25C_-17.mdinfo -x umbrella_productions/prod_25C_-17.nc -ref umbrella_productions/rel_3_25C_-17.rst 

#-18
pmemd -O -i umbrella_config/min_1_-18.umbin -o umbrella_productions/min_1_-18.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-17.rst -r umbrella_productions/min_1_-18.rst -inf umbrella_productions/min_1_-18.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-18.umbin -o umbrella_productions/rel_1_-18.out -p WT_C2.prmtop -c umbrella_productions/min_1_-18.rst -r umbrella_productions/rel_1_-18.rst -inf umbrella_productions/rel_1_-18.mdinfo -ref umbrella_productions/min_1_-18.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-18.umbin -o umbrella_productions/rel_2_25C_-18.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-18.rst -r umbrella_productions/rel_2_25C_-18.rst -inf umbrella_productions/rel_2_25C_-18.mdinfo -ref umbrella_productions/rel_1_-18.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-18.umbin -o umbrella_productions/rel_3_25C_-18.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-18.rst -r umbrella_productions/rel_3_25C_-18.rst -inf umbrella_productions/rel_3_25C_-18.mdinfo -ref umbrella_productions/rel_2_25C_-18.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-18.umbin -o umbrella_productions/prod_25C_-18.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-18.rst -r umbrella_productions/prod_25C_-18.rst -inf umbrella_productions/prod_25C_-18.mdinfo -x umbrella_productions/prod_25C_-18.nc -ref umbrella_productions/rel_3_25C_-18.rst 

#-19
pmemd -O -i umbrella_config/min_1_-19.umbin -o umbrella_productions/min_1_-19.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-18.rst -r umbrella_productions/min_1_-19.rst -inf umbrella_productions/min_1_-19.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-19.umbin -o umbrella_productions/rel_1_-19.out -p WT_C2.prmtop -c umbrella_productions/min_1_-19.rst -r umbrella_productions/rel_1_-19.rst -inf umbrella_productions/rel_1_-19.mdinfo -ref umbrella_productions/min_1_-19.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-19.umbin -o umbrella_productions/rel_2_25C_-19.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-19.rst -r umbrella_productions/rel_2_25C_-19.rst -inf umbrella_productions/rel_2_25C_-19.mdinfo -ref umbrella_productions/rel_1_-19.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-19.umbin -o umbrella_productions/rel_3_25C_-19.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-19.rst -r umbrella_productions/rel_3_25C_-19.rst -inf umbrella_productions/rel_3_25C_-19.mdinfo -ref umbrella_productions/rel_2_25C_-19.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-19.umbin -o umbrella_productions/prod_25C_-19.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-19.rst -r umbrella_productions/prod_25C_-19.rst -inf umbrella_productions/prod_25C_-19.mdinfo -x umbrella_productions/prod_25C_-19.nc -ref umbrella_productions/rel_3_25C_-19.rst 

#-20
pmemd -O -i umbrella_config/min_1_-20.umbin -o umbrella_productions/min_1_-20.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-19.rst -r umbrella_productions/min_1_-20.rst -inf umbrella_productions/min_1_-20.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-20.umbin -o umbrella_productions/rel_1_-20.out -p WT_C2.prmtop -c umbrella_productions/min_1_-20.rst -r umbrella_productions/rel_1_-20.rst -inf umbrella_productions/rel_1_-20.mdinfo -ref umbrella_productions/min_1_-20.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-20.umbin -o umbrella_productions/rel_2_25C_-20.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-20.rst -r umbrella_productions/rel_2_25C_-20.rst -inf umbrella_productions/rel_2_25C_-20.mdinfo -ref umbrella_productions/rel_1_-20.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-20.umbin -o umbrella_productions/rel_3_25C_-20.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-20.rst -r umbrella_productions/rel_3_25C_-20.rst -inf umbrella_productions/rel_3_25C_-20.mdinfo -ref umbrella_productions/rel_2_25C_-20.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-20.umbin -o umbrella_productions/prod_25C_-20.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-20.rst -r umbrella_productions/prod_25C_-20.rst -inf umbrella_productions/prod_25C_-20.mdinfo -x umbrella_productions/prod_25C_-20.nc -ref umbrella_productions/rel_3_25C_-20.rst 

#-21
pmemd -O -i umbrella_config/min_1_-21.umbin -o umbrella_productions/min_1_-21.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-20.rst -r umbrella_productions/min_1_-21.rst -inf umbrella_productions/min_1_-21.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-21.umbin -o umbrella_productions/rel_1_-21.out -p WT_C2.prmtop -c umbrella_productions/min_1_-21.rst -r umbrella_productions/rel_1_-21.rst -inf umbrella_productions/rel_1_-21.mdinfo -ref umbrella_productions/min_1_-21.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-21.umbin -o umbrella_productions/rel_2_25C_-21.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-21.rst -r umbrella_productions/rel_2_25C_-21.rst -inf umbrella_productions/rel_2_25C_-21.mdinfo -ref umbrella_productions/rel_1_-21.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-21.umbin -o umbrella_productions/rel_3_25C_-21.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-21.rst -r umbrella_productions/rel_3_25C_-21.rst -inf umbrella_productions/rel_3_25C_-21.mdinfo -ref umbrella_productions/rel_2_25C_-21.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-21.umbin -o umbrella_productions/prod_25C_-21.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-21.rst -r umbrella_productions/prod_25C_-21.rst -inf umbrella_productions/prod_25C_-21.mdinfo -x umbrella_productions/prod_25C_-21.nc -ref umbrella_productions/rel_3_25C_-21.rst 

#-22
pmemd -O -i umbrella_config/min_1_-22.umbin -o umbrella_productions/min_1_-22.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-21.rst -r umbrella_productions/min_1_-22.rst -inf umbrella_productions/min_1_-22.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-22.umbin -o umbrella_productions/rel_1_-22.out -p WT_C2.prmtop -c umbrella_productions/min_1_-22.rst -r umbrella_productions/rel_1_-22.rst -inf umbrella_productions/rel_1_-22.mdinfo -ref umbrella_productions/min_1_-22.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-22.umbin -o umbrella_productions/rel_2_25C_-22.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-22.rst -r umbrella_productions/rel_2_25C_-22.rst -inf umbrella_productions/rel_2_25C_-22.mdinfo -ref umbrella_productions/rel_1_-22.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-22.umbin -o umbrella_productions/rel_3_25C_-22.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-22.rst -r umbrella_productions/rel_3_25C_-22.rst -inf umbrella_productions/rel_3_25C_-22.mdinfo -ref umbrella_productions/rel_2_25C_-22.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-22.umbin -o umbrella_productions/prod_25C_-22.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-22.rst -r umbrella_productions/prod_25C_-22.rst -inf umbrella_productions/prod_25C_-22.mdinfo -x umbrella_productions/prod_25C_-22.nc -ref umbrella_productions/rel_3_25C_-22.rst 

#-23
pmemd -O -i umbrella_config/min_1_-23.umbin -o umbrella_productions/min_1_-23.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-22.rst -r umbrella_productions/min_1_-23.rst -inf umbrella_productions/min_1_-23.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-23.umbin -o umbrella_productions/rel_1_-23.out -p WT_C2.prmtop -c umbrella_productions/min_1_-23.rst -r umbrella_productions/rel_1_-23.rst -inf umbrella_productions/rel_1_-23.mdinfo -ref umbrella_productions/min_1_-23.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-23.umbin -o umbrella_productions/rel_2_25C_-23.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-23.rst -r umbrella_productions/rel_2_25C_-23.rst -inf umbrella_productions/rel_2_25C_-23.mdinfo -ref umbrella_productions/rel_1_-23.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-23.umbin -o umbrella_productions/rel_3_25C_-23.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-23.rst -r umbrella_productions/rel_3_25C_-23.rst -inf umbrella_productions/rel_3_25C_-23.mdinfo -ref umbrella_productions/rel_2_25C_-23.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-23.umbin -o umbrella_productions/prod_25C_-23.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-23.rst -r umbrella_productions/prod_25C_-23.rst -inf umbrella_productions/prod_25C_-23.mdinfo -x umbrella_productions/prod_25C_-23.nc -ref umbrella_productions/rel_3_25C_-23.rst 

#-24
pmemd -O -i umbrella_config/min_1_-24.umbin -o umbrella_productions/min_1_-24.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-23.rst -r umbrella_productions/min_1_-24.rst -inf umbrella_productions/min_1_-24.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-24.umbin -o umbrella_productions/rel_1_-24.out -p WT_C2.prmtop -c umbrella_productions/min_1_-24.rst -r umbrella_productions/rel_1_-24.rst -inf umbrella_productions/rel_1_-24.mdinfo -ref umbrella_productions/min_1_-24.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-24.umbin -o umbrella_productions/rel_2_25C_-24.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-24.rst -r umbrella_productions/rel_2_25C_-24.rst -inf umbrella_productions/rel_2_25C_-24.mdinfo -ref umbrella_productions/rel_1_-24.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-24.umbin -o umbrella_productions/rel_3_25C_-24.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-24.rst -r umbrella_productions/rel_3_25C_-24.rst -inf umbrella_productions/rel_3_25C_-24.mdinfo -ref umbrella_productions/rel_2_25C_-24.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-24.umbin -o umbrella_productions/prod_25C_-24.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-24.rst -r umbrella_productions/prod_25C_-24.rst -inf umbrella_productions/prod_25C_-24.mdinfo -x umbrella_productions/prod_25C_-24.nc -ref umbrella_productions/rel_3_25C_-24.rst 

#-25
pmemd -O -i umbrella_config/min_1_-25.umbin -o umbrella_productions/min_1_-25.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-24.rst -r umbrella_productions/min_1_-25.rst -inf umbrella_productions/min_1_-25.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-25.umbin -o umbrella_productions/rel_1_-25.out -p WT_C2.prmtop -c umbrella_productions/min_1_-25.rst -r umbrella_productions/rel_1_-25.rst -inf umbrella_productions/rel_1_-25.mdinfo -ref umbrella_productions/min_1_-25.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-25.umbin -o umbrella_productions/rel_2_25C_-25.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-25.rst -r umbrella_productions/rel_2_25C_-25.rst -inf umbrella_productions/rel_2_25C_-25.mdinfo -ref umbrella_productions/rel_1_-25.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-25.umbin -o umbrella_productions/rel_3_25C_-25.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-25.rst -r umbrella_productions/rel_3_25C_-25.rst -inf umbrella_productions/rel_3_25C_-25.mdinfo -ref umbrella_productions/rel_2_25C_-25.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-25.umbin -o umbrella_productions/prod_25C_-25.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-25.rst -r umbrella_productions/prod_25C_-25.rst -inf umbrella_productions/prod_25C_-25.mdinfo -x umbrella_productions/prod_25C_-25.nc -ref umbrella_productions/rel_3_25C_-25.rst 

#-26
pmemd -O -i umbrella_config/min_1_-26.umbin -o umbrella_productions/min_1_-26.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-25.rst -r umbrella_productions/min_1_-26.rst -inf umbrella_productions/min_1_-26.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-26.umbin -o umbrella_productions/rel_1_-26.out -p WT_C2.prmtop -c umbrella_productions/min_1_-26.rst -r umbrella_productions/rel_1_-26.rst -inf umbrella_productions/rel_1_-26.mdinfo -ref umbrella_productions/min_1_-26.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-26.umbin -o umbrella_productions/rel_2_25C_-26.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-26.rst -r umbrella_productions/rel_2_25C_-26.rst -inf umbrella_productions/rel_2_25C_-26.mdinfo -ref umbrella_productions/rel_1_-26.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-26.umbin -o umbrella_productions/rel_3_25C_-26.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-26.rst -r umbrella_productions/rel_3_25C_-26.rst -inf umbrella_productions/rel_3_25C_-26.mdinfo -ref umbrella_productions/rel_2_25C_-26.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-26.umbin -o umbrella_productions/prod_25C_-26.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-26.rst -r umbrella_productions/prod_25C_-26.rst -inf umbrella_productions/prod_25C_-26.mdinfo -x umbrella_productions/prod_25C_-26.nc -ref umbrella_productions/rel_3_25C_-26.rst 

#-27
pmemd -O -i umbrella_config/min_1_-27.umbin -o umbrella_productions/min_1_-27.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-26.rst -r umbrella_productions/min_1_-27.rst -inf umbrella_productions/min_1_-27.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-27.umbin -o umbrella_productions/rel_1_-27.out -p WT_C2.prmtop -c umbrella_productions/min_1_-27.rst -r umbrella_productions/rel_1_-27.rst -inf umbrella_productions/rel_1_-27.mdinfo -ref umbrella_productions/min_1_-27.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-27.umbin -o umbrella_productions/rel_2_25C_-27.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-27.rst -r umbrella_productions/rel_2_25C_-27.rst -inf umbrella_productions/rel_2_25C_-27.mdinfo -ref umbrella_productions/rel_1_-27.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-27.umbin -o umbrella_productions/rel_3_25C_-27.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-27.rst -r umbrella_productions/rel_3_25C_-27.rst -inf umbrella_productions/rel_3_25C_-27.mdinfo -ref umbrella_productions/rel_2_25C_-27.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-27.umbin -o umbrella_productions/prod_25C_-27.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-27.rst -r umbrella_productions/prod_25C_-27.rst -inf umbrella_productions/prod_25C_-27.mdinfo -x umbrella_productions/prod_25C_-27.nc -ref umbrella_productions/rel_3_25C_-27.rst 

#-28
pmemd -O -i umbrella_config/min_1_-28.umbin -o umbrella_productions/min_1_-28.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-27.rst -r umbrella_productions/min_1_-28.rst -inf umbrella_productions/min_1_-28.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-28.umbin -o umbrella_productions/rel_1_-28.out -p WT_C2.prmtop -c umbrella_productions/min_1_-28.rst -r umbrella_productions/rel_1_-28.rst -inf umbrella_productions/rel_1_-28.mdinfo -ref umbrella_productions/min_1_-28.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-28.umbin -o umbrella_productions/rel_2_25C_-28.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-28.rst -r umbrella_productions/rel_2_25C_-28.rst -inf umbrella_productions/rel_2_25C_-28.mdinfo -ref umbrella_productions/rel_1_-28.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-28.umbin -o umbrella_productions/rel_3_25C_-28.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-28.rst -r umbrella_productions/rel_3_25C_-28.rst -inf umbrella_productions/rel_3_25C_-28.mdinfo -ref umbrella_productions/rel_2_25C_-28.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-28.umbin -o umbrella_productions/prod_25C_-28.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-28.rst -r umbrella_productions/prod_25C_-28.rst -inf umbrella_productions/prod_25C_-28.mdinfo -x umbrella_productions/prod_25C_-28.nc -ref umbrella_productions/rel_3_25C_-28.rst 

#-29
pmemd -O -i umbrella_config/min_1_-29.umbin -o umbrella_productions/min_1_-29.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-28.rst -r umbrella_productions/min_1_-29.rst -inf umbrella_productions/min_1_-29.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-29.umbin -o umbrella_productions/rel_1_-29.out -p WT_C2.prmtop -c umbrella_productions/min_1_-29.rst -r umbrella_productions/rel_1_-29.rst -inf umbrella_productions/rel_1_-29.mdinfo -ref umbrella_productions/min_1_-29.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-29.umbin -o umbrella_productions/rel_2_25C_-29.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-29.rst -r umbrella_productions/rel_2_25C_-29.rst -inf umbrella_productions/rel_2_25C_-29.mdinfo -ref umbrella_productions/rel_1_-29.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-29.umbin -o umbrella_productions/rel_3_25C_-29.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-29.rst -r umbrella_productions/rel_3_25C_-29.rst -inf umbrella_productions/rel_3_25C_-29.mdinfo -ref umbrella_productions/rel_2_25C_-29.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-29.umbin -o umbrella_productions/prod_25C_-29.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-29.rst -r umbrella_productions/prod_25C_-29.rst -inf umbrella_productions/prod_25C_-29.mdinfo -x umbrella_productions/prod_25C_-29.nc -ref umbrella_productions/rel_3_25C_-29.rst 

#-30
pmemd -O -i umbrella_config/min_1_-30.umbin -o umbrella_productions/min_1_-30.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-29.rst -r umbrella_productions/min_1_-30.rst -inf umbrella_productions/min_1_-30.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-30.umbin -o umbrella_productions/rel_1_-30.out -p WT_C2.prmtop -c umbrella_productions/min_1_-30.rst -r umbrella_productions/rel_1_-30.rst -inf umbrella_productions/rel_1_-30.mdinfo -ref umbrella_productions/min_1_-30.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-30.umbin -o umbrella_productions/rel_2_25C_-30.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-30.rst -r umbrella_productions/rel_2_25C_-30.rst -inf umbrella_productions/rel_2_25C_-30.mdinfo -ref umbrella_productions/rel_1_-30.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-30.umbin -o umbrella_productions/rel_3_25C_-30.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-30.rst -r umbrella_productions/rel_3_25C_-30.rst -inf umbrella_productions/rel_3_25C_-30.mdinfo -ref umbrella_productions/rel_2_25C_-30.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-30.umbin -o umbrella_productions/prod_25C_-30.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-30.rst -r umbrella_productions/prod_25C_-30.rst -inf umbrella_productions/prod_25C_-30.mdinfo -x umbrella_productions/prod_25C_-30.nc -ref umbrella_productions/rel_3_25C_-30.rst 

#-31
pmemd -O -i umbrella_config/min_1_-31.umbin -o umbrella_productions/min_1_-31.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-30.rst -r umbrella_productions/min_1_-31.rst -inf umbrella_productions/min_1_-31.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-31.umbin -o umbrella_productions/rel_1_-31.out -p WT_C2.prmtop -c umbrella_productions/min_1_-31.rst -r umbrella_productions/rel_1_-31.rst -inf umbrella_productions/rel_1_-31.mdinfo -ref umbrella_productions/min_1_-31.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-31.umbin -o umbrella_productions/rel_2_25C_-31.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-31.rst -r umbrella_productions/rel_2_25C_-31.rst -inf umbrella_productions/rel_2_25C_-31.mdinfo -ref umbrella_productions/rel_1_-31.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-31.umbin -o umbrella_productions/rel_3_25C_-31.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-31.rst -r umbrella_productions/rel_3_25C_-31.rst -inf umbrella_productions/rel_3_25C_-31.mdinfo -ref umbrella_productions/rel_2_25C_-31.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-31.umbin -o umbrella_productions/prod_25C_-31.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-31.rst -r umbrella_productions/prod_25C_-31.rst -inf umbrella_productions/prod_25C_-31.mdinfo -x umbrella_productions/prod_25C_-31.nc -ref umbrella_productions/rel_3_25C_-31.rst 

#-32
pmemd -O -i umbrella_config/min_1_-32.umbin -o umbrella_productions/min_1_-32.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-31.rst -r umbrella_productions/min_1_-32.rst -inf umbrella_productions/min_1_-32.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-32.umbin -o umbrella_productions/rel_1_-32.out -p WT_C2.prmtop -c umbrella_productions/min_1_-32.rst -r umbrella_productions/rel_1_-32.rst -inf umbrella_productions/rel_1_-32.mdinfo -ref umbrella_productions/min_1_-32.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-32.umbin -o umbrella_productions/rel_2_25C_-32.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-32.rst -r umbrella_productions/rel_2_25C_-32.rst -inf umbrella_productions/rel_2_25C_-32.mdinfo -ref umbrella_productions/rel_1_-32.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-32.umbin -o umbrella_productions/rel_3_25C_-32.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-32.rst -r umbrella_productions/rel_3_25C_-32.rst -inf umbrella_productions/rel_3_25C_-32.mdinfo -ref umbrella_productions/rel_2_25C_-32.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-32.umbin -o umbrella_productions/prod_25C_-32.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-32.rst -r umbrella_productions/prod_25C_-32.rst -inf umbrella_productions/prod_25C_-32.mdinfo -x umbrella_productions/prod_25C_-32.nc -ref umbrella_productions/rel_3_25C_-32.rst 

#-33
pmemd -O -i umbrella_config/min_1_-33.umbin -o umbrella_productions/min_1_-33.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-32.rst -r umbrella_productions/min_1_-33.rst -inf umbrella_productions/min_1_-33.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-33.umbin -o umbrella_productions/rel_1_-33.out -p WT_C2.prmtop -c umbrella_productions/min_1_-33.rst -r umbrella_productions/rel_1_-33.rst -inf umbrella_productions/rel_1_-33.mdinfo -ref umbrella_productions/min_1_-33.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-33.umbin -o umbrella_productions/rel_2_25C_-33.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-33.rst -r umbrella_productions/rel_2_25C_-33.rst -inf umbrella_productions/rel_2_25C_-33.mdinfo -ref umbrella_productions/rel_1_-33.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-33.umbin -o umbrella_productions/rel_3_25C_-33.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-33.rst -r umbrella_productions/rel_3_25C_-33.rst -inf umbrella_productions/rel_3_25C_-33.mdinfo -ref umbrella_productions/rel_2_25C_-33.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-33.umbin -o umbrella_productions/prod_25C_-33.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-33.rst -r umbrella_productions/prod_25C_-33.rst -inf umbrella_productions/prod_25C_-33.mdinfo -x umbrella_productions/prod_25C_-33.nc -ref umbrella_productions/rel_3_25C_-33.rst 

#-34
pmemd -O -i umbrella_config/min_1_-34.umbin -o umbrella_productions/min_1_-34.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-33.rst -r umbrella_productions/min_1_-34.rst -inf umbrella_productions/min_1_-34.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-34.umbin -o umbrella_productions/rel_1_-34.out -p WT_C2.prmtop -c umbrella_productions/min_1_-34.rst -r umbrella_productions/rel_1_-34.rst -inf umbrella_productions/rel_1_-34.mdinfo -ref umbrella_productions/min_1_-34.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-34.umbin -o umbrella_productions/rel_2_25C_-34.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-34.rst -r umbrella_productions/rel_2_25C_-34.rst -inf umbrella_productions/rel_2_25C_-34.mdinfo -ref umbrella_productions/rel_1_-34.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-34.umbin -o umbrella_productions/rel_3_25C_-34.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-34.rst -r umbrella_productions/rel_3_25C_-34.rst -inf umbrella_productions/rel_3_25C_-34.mdinfo -ref umbrella_productions/rel_2_25C_-34.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-34.umbin -o umbrella_productions/prod_25C_-34.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-34.rst -r umbrella_productions/prod_25C_-34.rst -inf umbrella_productions/prod_25C_-34.mdinfo -x umbrella_productions/prod_25C_-34.nc -ref umbrella_productions/rel_3_25C_-34.rst 

#-35
pmemd -O -i umbrella_config/min_1_-35.umbin -o umbrella_productions/min_1_-35.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-34.rst -r umbrella_productions/min_1_-35.rst -inf umbrella_productions/min_1_-35.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-35.umbin -o umbrella_productions/rel_1_-35.out -p WT_C2.prmtop -c umbrella_productions/min_1_-35.rst -r umbrella_productions/rel_1_-35.rst -inf umbrella_productions/rel_1_-35.mdinfo -ref umbrella_productions/min_1_-35.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-35.umbin -o umbrella_productions/rel_2_25C_-35.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-35.rst -r umbrella_productions/rel_2_25C_-35.rst -inf umbrella_productions/rel_2_25C_-35.mdinfo -ref umbrella_productions/rel_1_-35.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-35.umbin -o umbrella_productions/rel_3_25C_-35.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-35.rst -r umbrella_productions/rel_3_25C_-35.rst -inf umbrella_productions/rel_3_25C_-35.mdinfo -ref umbrella_productions/rel_2_25C_-35.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-35.umbin -o umbrella_productions/prod_25C_-35.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-35.rst -r umbrella_productions/prod_25C_-35.rst -inf umbrella_productions/prod_25C_-35.mdinfo -x umbrella_productions/prod_25C_-35.nc -ref umbrella_productions/rel_3_25C_-35.rst 

#-36
pmemd -O -i umbrella_config/min_1_-36.umbin -o umbrella_productions/min_1_-36.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-35.rst -r umbrella_productions/min_1_-36.rst -inf umbrella_productions/min_1_-36.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-36.umbin -o umbrella_productions/rel_1_-36.out -p WT_C2.prmtop -c umbrella_productions/min_1_-36.rst -r umbrella_productions/rel_1_-36.rst -inf umbrella_productions/rel_1_-36.mdinfo -ref umbrella_productions/min_1_-36.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-36.umbin -o umbrella_productions/rel_2_25C_-36.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-36.rst -r umbrella_productions/rel_2_25C_-36.rst -inf umbrella_productions/rel_2_25C_-36.mdinfo -ref umbrella_productions/rel_1_-36.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-36.umbin -o umbrella_productions/rel_3_25C_-36.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-36.rst -r umbrella_productions/rel_3_25C_-36.rst -inf umbrella_productions/rel_3_25C_-36.mdinfo -ref umbrella_productions/rel_2_25C_-36.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-36.umbin -o umbrella_productions/prod_25C_-36.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-36.rst -r umbrella_productions/prod_25C_-36.rst -inf umbrella_productions/prod_25C_-36.mdinfo -x umbrella_productions/prod_25C_-36.nc -ref umbrella_productions/rel_3_25C_-36.rst 

#-37
pmemd -O -i umbrella_config/min_1_-37.umbin -o umbrella_productions/min_1_-37.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-36.rst -r umbrella_productions/min_1_-37.rst -inf umbrella_productions/min_1_-37.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-37.umbin -o umbrella_productions/rel_1_-37.out -p WT_C2.prmtop -c umbrella_productions/min_1_-37.rst -r umbrella_productions/rel_1_-37.rst -inf umbrella_productions/rel_1_-37.mdinfo -ref umbrella_productions/min_1_-37.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-37.umbin -o umbrella_productions/rel_2_25C_-37.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-37.rst -r umbrella_productions/rel_2_25C_-37.rst -inf umbrella_productions/rel_2_25C_-37.mdinfo -ref umbrella_productions/rel_1_-37.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-37.umbin -o umbrella_productions/rel_3_25C_-37.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-37.rst -r umbrella_productions/rel_3_25C_-37.rst -inf umbrella_productions/rel_3_25C_-37.mdinfo -ref umbrella_productions/rel_2_25C_-37.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-37.umbin -o umbrella_productions/prod_25C_-37.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-37.rst -r umbrella_productions/prod_25C_-37.rst -inf umbrella_productions/prod_25C_-37.mdinfo -x umbrella_productions/prod_25C_-37.nc -ref umbrella_productions/rel_3_25C_-37.rst 

#-38
pmemd -O -i umbrella_config/min_1_-38.umbin -o umbrella_productions/min_1_-38.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-37.rst -r umbrella_productions/min_1_-38.rst -inf umbrella_productions/min_1_-38.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-38.umbin -o umbrella_productions/rel_1_-38.out -p WT_C2.prmtop -c umbrella_productions/min_1_-38.rst -r umbrella_productions/rel_1_-38.rst -inf umbrella_productions/rel_1_-38.mdinfo -ref umbrella_productions/min_1_-38.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-38.umbin -o umbrella_productions/rel_2_25C_-38.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-38.rst -r umbrella_productions/rel_2_25C_-38.rst -inf umbrella_productions/rel_2_25C_-38.mdinfo -ref umbrella_productions/rel_1_-38.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-38.umbin -o umbrella_productions/rel_3_25C_-38.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-38.rst -r umbrella_productions/rel_3_25C_-38.rst -inf umbrella_productions/rel_3_25C_-38.mdinfo -ref umbrella_productions/rel_2_25C_-38.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-38.umbin -o umbrella_productions/prod_25C_-38.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-38.rst -r umbrella_productions/prod_25C_-38.rst -inf umbrella_productions/prod_25C_-38.mdinfo -x umbrella_productions/prod_25C_-38.nc -ref umbrella_productions/rel_3_25C_-38.rst 

#-39
pmemd -O -i umbrella_config/min_1_-39.umbin -o umbrella_productions/min_1_-39.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-38.rst -r umbrella_productions/min_1_-39.rst -inf umbrella_productions/min_1_-39.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-39.umbin -o umbrella_productions/rel_1_-39.out -p WT_C2.prmtop -c umbrella_productions/min_1_-39.rst -r umbrella_productions/rel_1_-39.rst -inf umbrella_productions/rel_1_-39.mdinfo -ref umbrella_productions/min_1_-39.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-39.umbin -o umbrella_productions/rel_2_25C_-39.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-39.rst -r umbrella_productions/rel_2_25C_-39.rst -inf umbrella_productions/rel_2_25C_-39.mdinfo -ref umbrella_productions/rel_1_-39.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-39.umbin -o umbrella_productions/rel_3_25C_-39.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-39.rst -r umbrella_productions/rel_3_25C_-39.rst -inf umbrella_productions/rel_3_25C_-39.mdinfo -ref umbrella_productions/rel_2_25C_-39.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-39.umbin -o umbrella_productions/prod_25C_-39.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-39.rst -r umbrella_productions/prod_25C_-39.rst -inf umbrella_productions/prod_25C_-39.mdinfo -x umbrella_productions/prod_25C_-39.nc -ref umbrella_productions/rel_3_25C_-39.rst 

#-40
pmemd -O -i umbrella_config/min_1_-40.umbin -o umbrella_productions/min_1_-40.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-39.rst -r umbrella_productions/min_1_-40.rst -inf umbrella_productions/min_1_-40.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-40.umbin -o umbrella_productions/rel_1_-40.out -p WT_C2.prmtop -c umbrella_productions/min_1_-40.rst -r umbrella_productions/rel_1_-40.rst -inf umbrella_productions/rel_1_-40.mdinfo -ref umbrella_productions/min_1_-40.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-40.umbin -o umbrella_productions/rel_2_25C_-40.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-40.rst -r umbrella_productions/rel_2_25C_-40.rst -inf umbrella_productions/rel_2_25C_-40.mdinfo -ref umbrella_productions/rel_1_-40.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-40.umbin -o umbrella_productions/rel_3_25C_-40.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-40.rst -r umbrella_productions/rel_3_25C_-40.rst -inf umbrella_productions/rel_3_25C_-40.mdinfo -ref umbrella_productions/rel_2_25C_-40.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-40.umbin -o umbrella_productions/prod_25C_-40.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-40.rst -r umbrella_productions/prod_25C_-40.rst -inf umbrella_productions/prod_25C_-40.mdinfo -x umbrella_productions/prod_25C_-40.nc -ref umbrella_productions/rel_3_25C_-40.rst 

#-41
pmemd -O -i umbrella_config/min_1_-41.umbin -o umbrella_productions/min_1_-41.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-40.rst -r umbrella_productions/min_1_-41.rst -inf umbrella_productions/min_1_-41.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-41.umbin -o umbrella_productions/rel_1_-41.out -p WT_C2.prmtop -c umbrella_productions/min_1_-41.rst -r umbrella_productions/rel_1_-41.rst -inf umbrella_productions/rel_1_-41.mdinfo -ref umbrella_productions/min_1_-41.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-41.umbin -o umbrella_productions/rel_2_25C_-41.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-41.rst -r umbrella_productions/rel_2_25C_-41.rst -inf umbrella_productions/rel_2_25C_-41.mdinfo -ref umbrella_productions/rel_1_-41.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-41.umbin -o umbrella_productions/rel_3_25C_-41.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-41.rst -r umbrella_productions/rel_3_25C_-41.rst -inf umbrella_productions/rel_3_25C_-41.mdinfo -ref umbrella_productions/rel_2_25C_-41.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-41.umbin -o umbrella_productions/prod_25C_-41.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-41.rst -r umbrella_productions/prod_25C_-41.rst -inf umbrella_productions/prod_25C_-41.mdinfo -x umbrella_productions/prod_25C_-41.nc -ref umbrella_productions/rel_3_25C_-41.rst 

#-42
pmemd -O -i umbrella_config/min_1_-42.umbin -o umbrella_productions/min_1_-42.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-41.rst -r umbrella_productions/min_1_-42.rst -inf umbrella_productions/min_1_-42.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-42.umbin -o umbrella_productions/rel_1_-42.out -p WT_C2.prmtop -c umbrella_productions/min_1_-42.rst -r umbrella_productions/rel_1_-42.rst -inf umbrella_productions/rel_1_-42.mdinfo -ref umbrella_productions/min_1_-42.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-42.umbin -o umbrella_productions/rel_2_25C_-42.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-42.rst -r umbrella_productions/rel_2_25C_-42.rst -inf umbrella_productions/rel_2_25C_-42.mdinfo -ref umbrella_productions/rel_1_-42.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-42.umbin -o umbrella_productions/rel_3_25C_-42.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-42.rst -r umbrella_productions/rel_3_25C_-42.rst -inf umbrella_productions/rel_3_25C_-42.mdinfo -ref umbrella_productions/rel_2_25C_-42.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-42.umbin -o umbrella_productions/prod_25C_-42.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-42.rst -r umbrella_productions/prod_25C_-42.rst -inf umbrella_productions/prod_25C_-42.mdinfo -x umbrella_productions/prod_25C_-42.nc -ref umbrella_productions/rel_3_25C_-42.rst 

#-43
pmemd -O -i umbrella_config/min_1_-43.umbin -o umbrella_productions/min_1_-43.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-42.rst -r umbrella_productions/min_1_-43.rst -inf umbrella_productions/min_1_-43.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-43.umbin -o umbrella_productions/rel_1_-43.out -p WT_C2.prmtop -c umbrella_productions/min_1_-43.rst -r umbrella_productions/rel_1_-43.rst -inf umbrella_productions/rel_1_-43.mdinfo -ref umbrella_productions/min_1_-43.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-43.umbin -o umbrella_productions/rel_2_25C_-43.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-43.rst -r umbrella_productions/rel_2_25C_-43.rst -inf umbrella_productions/rel_2_25C_-43.mdinfo -ref umbrella_productions/rel_1_-43.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-43.umbin -o umbrella_productions/rel_3_25C_-43.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-43.rst -r umbrella_productions/rel_3_25C_-43.rst -inf umbrella_productions/rel_3_25C_-43.mdinfo -ref umbrella_productions/rel_2_25C_-43.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-43.umbin -o umbrella_productions/prod_25C_-43.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-43.rst -r umbrella_productions/prod_25C_-43.rst -inf umbrella_productions/prod_25C_-43.mdinfo -x umbrella_productions/prod_25C_-43.nc -ref umbrella_productions/rel_3_25C_-43.rst 

#-44
pmemd -O -i umbrella_config/min_1_-44.umbin -o umbrella_productions/min_1_-44.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-43.rst -r umbrella_productions/min_1_-44.rst -inf umbrella_productions/min_1_-44.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-44.umbin -o umbrella_productions/rel_1_-44.out -p WT_C2.prmtop -c umbrella_productions/min_1_-44.rst -r umbrella_productions/rel_1_-44.rst -inf umbrella_productions/rel_1_-44.mdinfo -ref umbrella_productions/min_1_-44.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-44.umbin -o umbrella_productions/rel_2_25C_-44.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-44.rst -r umbrella_productions/rel_2_25C_-44.rst -inf umbrella_productions/rel_2_25C_-44.mdinfo -ref umbrella_productions/rel_1_-44.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-44.umbin -o umbrella_productions/rel_3_25C_-44.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-44.rst -r umbrella_productions/rel_3_25C_-44.rst -inf umbrella_productions/rel_3_25C_-44.mdinfo -ref umbrella_productions/rel_2_25C_-44.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-44.umbin -o umbrella_productions/prod_25C_-44.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-44.rst -r umbrella_productions/prod_25C_-44.rst -inf umbrella_productions/prod_25C_-44.mdinfo -x umbrella_productions/prod_25C_-44.nc -ref umbrella_productions/rel_3_25C_-44.rst 

#-45
pmemd -O -i umbrella_config/min_1_-45.umbin -o umbrella_productions/min_1_-45.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_-44.rst -r umbrella_productions/min_1_-45.rst -inf umbrella_productions/min_1_-45.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-45.umbin -o umbrella_productions/rel_1_-45.out -p WT_C2.prmtop -c umbrella_productions/min_1_-45.rst -r umbrella_productions/rel_1_-45.rst -inf umbrella_productions/rel_1_-45.mdinfo -ref umbrella_productions/min_1_-45.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-45.umbin -o umbrella_productions/rel_2_25C_-45.out -p WT_C2.prmtop -c umbrella_productions/rel_1_-45.rst -r umbrella_productions/rel_2_25C_-45.rst -inf umbrella_productions/rel_2_25C_-45.mdinfo -ref umbrella_productions/rel_1_-45.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-45.umbin -o umbrella_productions/rel_3_25C_-45.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_-45.rst -r umbrella_productions/rel_3_25C_-45.rst -inf umbrella_productions/rel_3_25C_-45.mdinfo -ref umbrella_productions/rel_2_25C_-45.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_-45.umbin -o umbrella_productions/prod_25C_-45.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_-45.rst -r umbrella_productions/prod_25C_-45.rst -inf umbrella_productions/prod_25C_-45.mdinfo -x umbrella_productions/prod_25C_-45.nc -ref umbrella_productions/rel_3_25C_-45.rst 

#0
pmemd -O -i umbrella_config/min_1_0.umbin -o umbrella_productions/min_1_0.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_0.rst -r umbrella_productions/min_1_0.rst -inf umbrella_productions/min_1_0.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_0.umbin -o umbrella_productions/rel_1_0.out -p WT_C2.prmtop -c umbrella_productions/min_1_0.rst -r umbrella_productions/rel_1_0.rst -inf umbrella_productions/rel_1_0.mdinfo -ref umbrella_productions/min_1_0.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_0.umbin -o umbrella_productions/rel_2_25C_0.out -p WT_C2.prmtop -c umbrella_productions/rel_1_0.rst -r umbrella_productions/rel_2_25C_0.rst -inf umbrella_productions/rel_2_25C_0.mdinfo -ref umbrella_productions/rel_1_0.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_0.umbin -o umbrella_productions/rel_3_25C_0.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_0.rst -r umbrella_productions/rel_3_25C_0.rst -inf umbrella_productions/rel_3_25C_0.mdinfo -ref umbrella_productions/rel_2_25C_0.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_0.umbin -o umbrella_productions/prod_25C_0.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_0.rst -r umbrella_productions/prod_25C_0.rst -inf umbrella_productions/prod_25C_0.mdinfo -x umbrella_productions/prod_25C_0.nc -ref umbrella_productions/rel_3_25C_0.rst 

#1
pmemd -O -i umbrella_config/min_1_1.umbin -o umbrella_productions/min_1_1.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_0.rst -r umbrella_productions/min_1_1.rst -inf umbrella_productions/min_1_1.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_1.umbin -o umbrella_productions/rel_1_1.out -p WT_C2.prmtop -c umbrella_productions/min_1_1.rst -r umbrella_productions/rel_1_1.rst -inf umbrella_productions/rel_1_1.mdinfo -ref umbrella_productions/min_1_1.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_1.umbin -o umbrella_productions/rel_2_25C_1.out -p WT_C2.prmtop -c umbrella_productions/rel_1_1.rst -r umbrella_productions/rel_2_25C_1.rst -inf umbrella_productions/rel_2_25C_1.mdinfo -ref umbrella_productions/rel_1_1.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_1.umbin -o umbrella_productions/rel_3_25C_1.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_1.rst -r umbrella_productions/rel_3_25C_1.rst -inf umbrella_productions/rel_3_25C_1.mdinfo -ref umbrella_productions/rel_2_25C_1.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_1.umbin -o umbrella_productions/prod_25C_1.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_1.rst -r umbrella_productions/prod_25C_1.rst -inf umbrella_productions/prod_25C_1.mdinfo -x umbrella_productions/prod_25C_1.nc -ref umbrella_productions/rel_3_25C_1.rst 

#2
pmemd -O -i umbrella_config/min_1_2.umbin -o umbrella_productions/min_1_2.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_1.rst -r umbrella_productions/min_1_2.rst -inf umbrella_productions/min_1_2.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_2.umbin -o umbrella_productions/rel_1_2.out -p WT_C2.prmtop -c umbrella_productions/min_1_2.rst -r umbrella_productions/rel_1_2.rst -inf umbrella_productions/rel_1_2.mdinfo -ref umbrella_productions/min_1_2.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_2.umbin -o umbrella_productions/rel_2_25C_2.out -p WT_C2.prmtop -c umbrella_productions/rel_1_2.rst -r umbrella_productions/rel_2_25C_2.rst -inf umbrella_productions/rel_2_25C_2.mdinfo -ref umbrella_productions/rel_1_2.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_2.umbin -o umbrella_productions/rel_3_25C_2.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_2.rst -r umbrella_productions/rel_3_25C_2.rst -inf umbrella_productions/rel_3_25C_2.mdinfo -ref umbrella_productions/rel_2_25C_2.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_2.umbin -o umbrella_productions/prod_25C_2.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_2.rst -r umbrella_productions/prod_25C_2.rst -inf umbrella_productions/prod_25C_2.mdinfo -x umbrella_productions/prod_25C_2.nc -ref umbrella_productions/rel_3_25C_2.rst 

#3
pmemd -O -i umbrella_config/min_1_3.umbin -o umbrella_productions/min_1_3.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_2.rst -r umbrella_productions/min_1_3.rst -inf umbrella_productions/min_1_3.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_3.umbin -o umbrella_productions/rel_1_3.out -p WT_C2.prmtop -c umbrella_productions/min_1_3.rst -r umbrella_productions/rel_1_3.rst -inf umbrella_productions/rel_1_3.mdinfo -ref umbrella_productions/min_1_3.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_3.umbin -o umbrella_productions/rel_2_25C_3.out -p WT_C2.prmtop -c umbrella_productions/rel_1_3.rst -r umbrella_productions/rel_2_25C_3.rst -inf umbrella_productions/rel_2_25C_3.mdinfo -ref umbrella_productions/rel_1_3.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_3.umbin -o umbrella_productions/rel_3_25C_3.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_3.rst -r umbrella_productions/rel_3_25C_3.rst -inf umbrella_productions/rel_3_25C_3.mdinfo -ref umbrella_productions/rel_2_25C_3.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_3.umbin -o umbrella_productions/prod_25C_3.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_3.rst -r umbrella_productions/prod_25C_3.rst -inf umbrella_productions/prod_25C_3.mdinfo -x umbrella_productions/prod_25C_3.nc -ref umbrella_productions/rel_3_25C_3.rst 

#4
pmemd -O -i umbrella_config/min_1_4.umbin -o umbrella_productions/min_1_4.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_3.rst -r umbrella_productions/min_1_4.rst -inf umbrella_productions/min_1_4.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_4.umbin -o umbrella_productions/rel_1_4.out -p WT_C2.prmtop -c umbrella_productions/min_1_4.rst -r umbrella_productions/rel_1_4.rst -inf umbrella_productions/rel_1_4.mdinfo -ref umbrella_productions/min_1_4.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_4.umbin -o umbrella_productions/rel_2_25C_4.out -p WT_C2.prmtop -c umbrella_productions/rel_1_4.rst -r umbrella_productions/rel_2_25C_4.rst -inf umbrella_productions/rel_2_25C_4.mdinfo -ref umbrella_productions/rel_1_4.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_4.umbin -o umbrella_productions/rel_3_25C_4.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_4.rst -r umbrella_productions/rel_3_25C_4.rst -inf umbrella_productions/rel_3_25C_4.mdinfo -ref umbrella_productions/rel_2_25C_4.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4.umbin -o umbrella_productions/prod_25C_4.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_4.rst -r umbrella_productions/prod_25C_4.rst -inf umbrella_productions/prod_25C_4.mdinfo -x umbrella_productions/prod_25C_4.nc -ref umbrella_productions/rel_3_25C_4.rst 

#5
pmemd -O -i umbrella_config/min_1_5.umbin -o umbrella_productions/min_1_5.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_4.rst -r umbrella_productions/min_1_5.rst -inf umbrella_productions/min_1_5.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_5.umbin -o umbrella_productions/rel_1_5.out -p WT_C2.prmtop -c umbrella_productions/min_1_5.rst -r umbrella_productions/rel_1_5.rst -inf umbrella_productions/rel_1_5.mdinfo -ref umbrella_productions/min_1_5.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_5.umbin -o umbrella_productions/rel_2_25C_5.out -p WT_C2.prmtop -c umbrella_productions/rel_1_5.rst -r umbrella_productions/rel_2_25C_5.rst -inf umbrella_productions/rel_2_25C_5.mdinfo -ref umbrella_productions/rel_1_5.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_5.umbin -o umbrella_productions/rel_3_25C_5.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_5.rst -r umbrella_productions/rel_3_25C_5.rst -inf umbrella_productions/rel_3_25C_5.mdinfo -ref umbrella_productions/rel_2_25C_5.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_5.umbin -o umbrella_productions/prod_25C_5.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_5.rst -r umbrella_productions/prod_25C_5.rst -inf umbrella_productions/prod_25C_5.mdinfo -x umbrella_productions/prod_25C_5.nc -ref umbrella_productions/rel_3_25C_5.rst 

#6
pmemd -O -i umbrella_config/min_1_6.umbin -o umbrella_productions/min_1_6.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_5.rst -r umbrella_productions/min_1_6.rst -inf umbrella_productions/min_1_6.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_6.umbin -o umbrella_productions/rel_1_6.out -p WT_C2.prmtop -c umbrella_productions/min_1_6.rst -r umbrella_productions/rel_1_6.rst -inf umbrella_productions/rel_1_6.mdinfo -ref umbrella_productions/min_1_6.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_6.umbin -o umbrella_productions/rel_2_25C_6.out -p WT_C2.prmtop -c umbrella_productions/rel_1_6.rst -r umbrella_productions/rel_2_25C_6.rst -inf umbrella_productions/rel_2_25C_6.mdinfo -ref umbrella_productions/rel_1_6.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_6.umbin -o umbrella_productions/rel_3_25C_6.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_6.rst -r umbrella_productions/rel_3_25C_6.rst -inf umbrella_productions/rel_3_25C_6.mdinfo -ref umbrella_productions/rel_2_25C_6.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_6.umbin -o umbrella_productions/prod_25C_6.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_6.rst -r umbrella_productions/prod_25C_6.rst -inf umbrella_productions/prod_25C_6.mdinfo -x umbrella_productions/prod_25C_6.nc -ref umbrella_productions/rel_3_25C_6.rst 

#7
pmemd -O -i umbrella_config/min_1_7.umbin -o umbrella_productions/min_1_7.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_6.rst -r umbrella_productions/min_1_7.rst -inf umbrella_productions/min_1_7.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_7.umbin -o umbrella_productions/rel_1_7.out -p WT_C2.prmtop -c umbrella_productions/min_1_7.rst -r umbrella_productions/rel_1_7.rst -inf umbrella_productions/rel_1_7.mdinfo -ref umbrella_productions/min_1_7.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_7.umbin -o umbrella_productions/rel_2_25C_7.out -p WT_C2.prmtop -c umbrella_productions/rel_1_7.rst -r umbrella_productions/rel_2_25C_7.rst -inf umbrella_productions/rel_2_25C_7.mdinfo -ref umbrella_productions/rel_1_7.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_7.umbin -o umbrella_productions/rel_3_25C_7.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_7.rst -r umbrella_productions/rel_3_25C_7.rst -inf umbrella_productions/rel_3_25C_7.mdinfo -ref umbrella_productions/rel_2_25C_7.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_7.umbin -o umbrella_productions/prod_25C_7.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_7.rst -r umbrella_productions/prod_25C_7.rst -inf umbrella_productions/prod_25C_7.mdinfo -x umbrella_productions/prod_25C_7.nc -ref umbrella_productions/rel_3_25C_7.rst 

#8
pmemd -O -i umbrella_config/min_1_8.umbin -o umbrella_productions/min_1_8.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_7.rst -r umbrella_productions/min_1_8.rst -inf umbrella_productions/min_1_8.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_8.umbin -o umbrella_productions/rel_1_8.out -p WT_C2.prmtop -c umbrella_productions/min_1_8.rst -r umbrella_productions/rel_1_8.rst -inf umbrella_productions/rel_1_8.mdinfo -ref umbrella_productions/min_1_8.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_8.umbin -o umbrella_productions/rel_2_25C_8.out -p WT_C2.prmtop -c umbrella_productions/rel_1_8.rst -r umbrella_productions/rel_2_25C_8.rst -inf umbrella_productions/rel_2_25C_8.mdinfo -ref umbrella_productions/rel_1_8.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_8.umbin -o umbrella_productions/rel_3_25C_8.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_8.rst -r umbrella_productions/rel_3_25C_8.rst -inf umbrella_productions/rel_3_25C_8.mdinfo -ref umbrella_productions/rel_2_25C_8.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_8.umbin -o umbrella_productions/prod_25C_8.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_8.rst -r umbrella_productions/prod_25C_8.rst -inf umbrella_productions/prod_25C_8.mdinfo -x umbrella_productions/prod_25C_8.nc -ref umbrella_productions/rel_3_25C_8.rst 

#9
pmemd -O -i umbrella_config/min_1_9.umbin -o umbrella_productions/min_1_9.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_8.rst -r umbrella_productions/min_1_9.rst -inf umbrella_productions/min_1_9.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_9.umbin -o umbrella_productions/rel_1_9.out -p WT_C2.prmtop -c umbrella_productions/min_1_9.rst -r umbrella_productions/rel_1_9.rst -inf umbrella_productions/rel_1_9.mdinfo -ref umbrella_productions/min_1_9.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_9.umbin -o umbrella_productions/rel_2_25C_9.out -p WT_C2.prmtop -c umbrella_productions/rel_1_9.rst -r umbrella_productions/rel_2_25C_9.rst -inf umbrella_productions/rel_2_25C_9.mdinfo -ref umbrella_productions/rel_1_9.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_9.umbin -o umbrella_productions/rel_3_25C_9.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_9.rst -r umbrella_productions/rel_3_25C_9.rst -inf umbrella_productions/rel_3_25C_9.mdinfo -ref umbrella_productions/rel_2_25C_9.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_9.umbin -o umbrella_productions/prod_25C_9.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_9.rst -r umbrella_productions/prod_25C_9.rst -inf umbrella_productions/prod_25C_9.mdinfo -x umbrella_productions/prod_25C_9.nc -ref umbrella_productions/rel_3_25C_9.rst 

#10
pmemd -O -i umbrella_config/min_1_10.umbin -o umbrella_productions/min_1_10.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_9.rst -r umbrella_productions/min_1_10.rst -inf umbrella_productions/min_1_10.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_10.umbin -o umbrella_productions/rel_1_10.out -p WT_C2.prmtop -c umbrella_productions/min_1_10.rst -r umbrella_productions/rel_1_10.rst -inf umbrella_productions/rel_1_10.mdinfo -ref umbrella_productions/min_1_10.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_10.umbin -o umbrella_productions/rel_2_25C_10.out -p WT_C2.prmtop -c umbrella_productions/rel_1_10.rst -r umbrella_productions/rel_2_25C_10.rst -inf umbrella_productions/rel_2_25C_10.mdinfo -ref umbrella_productions/rel_1_10.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_10.umbin -o umbrella_productions/rel_3_25C_10.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_10.rst -r umbrella_productions/rel_3_25C_10.rst -inf umbrella_productions/rel_3_25C_10.mdinfo -ref umbrella_productions/rel_2_25C_10.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_10.umbin -o umbrella_productions/prod_25C_10.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_10.rst -r umbrella_productions/prod_25C_10.rst -inf umbrella_productions/prod_25C_10.mdinfo -x umbrella_productions/prod_25C_10.nc -ref umbrella_productions/rel_3_25C_10.rst 

#11
pmemd -O -i umbrella_config/min_1_11.umbin -o umbrella_productions/min_1_11.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_10.rst -r umbrella_productions/min_1_11.rst -inf umbrella_productions/min_1_11.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_11.umbin -o umbrella_productions/rel_1_11.out -p WT_C2.prmtop -c umbrella_productions/min_1_11.rst -r umbrella_productions/rel_1_11.rst -inf umbrella_productions/rel_1_11.mdinfo -ref umbrella_productions/min_1_11.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_11.umbin -o umbrella_productions/rel_2_25C_11.out -p WT_C2.prmtop -c umbrella_productions/rel_1_11.rst -r umbrella_productions/rel_2_25C_11.rst -inf umbrella_productions/rel_2_25C_11.mdinfo -ref umbrella_productions/rel_1_11.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_11.umbin -o umbrella_productions/rel_3_25C_11.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_11.rst -r umbrella_productions/rel_3_25C_11.rst -inf umbrella_productions/rel_3_25C_11.mdinfo -ref umbrella_productions/rel_2_25C_11.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_11.umbin -o umbrella_productions/prod_25C_11.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_11.rst -r umbrella_productions/prod_25C_11.rst -inf umbrella_productions/prod_25C_11.mdinfo -x umbrella_productions/prod_25C_11.nc -ref umbrella_productions/rel_3_25C_11.rst 

#12
pmemd -O -i umbrella_config/min_1_12.umbin -o umbrella_productions/min_1_12.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_11.rst -r umbrella_productions/min_1_12.rst -inf umbrella_productions/min_1_12.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_12.umbin -o umbrella_productions/rel_1_12.out -p WT_C2.prmtop -c umbrella_productions/min_1_12.rst -r umbrella_productions/rel_1_12.rst -inf umbrella_productions/rel_1_12.mdinfo -ref umbrella_productions/min_1_12.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_12.umbin -o umbrella_productions/rel_2_25C_12.out -p WT_C2.prmtop -c umbrella_productions/rel_1_12.rst -r umbrella_productions/rel_2_25C_12.rst -inf umbrella_productions/rel_2_25C_12.mdinfo -ref umbrella_productions/rel_1_12.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_12.umbin -o umbrella_productions/rel_3_25C_12.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_12.rst -r umbrella_productions/rel_3_25C_12.rst -inf umbrella_productions/rel_3_25C_12.mdinfo -ref umbrella_productions/rel_2_25C_12.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_12.umbin -o umbrella_productions/prod_25C_12.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_12.rst -r umbrella_productions/prod_25C_12.rst -inf umbrella_productions/prod_25C_12.mdinfo -x umbrella_productions/prod_25C_12.nc -ref umbrella_productions/rel_3_25C_12.rst 

#13
pmemd -O -i umbrella_config/min_1_13.umbin -o umbrella_productions/min_1_13.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_12.rst -r umbrella_productions/min_1_13.rst -inf umbrella_productions/min_1_13.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_13.umbin -o umbrella_productions/rel_1_13.out -p WT_C2.prmtop -c umbrella_productions/min_1_13.rst -r umbrella_productions/rel_1_13.rst -inf umbrella_productions/rel_1_13.mdinfo -ref umbrella_productions/min_1_13.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_13.umbin -o umbrella_productions/rel_2_25C_13.out -p WT_C2.prmtop -c umbrella_productions/rel_1_13.rst -r umbrella_productions/rel_2_25C_13.rst -inf umbrella_productions/rel_2_25C_13.mdinfo -ref umbrella_productions/rel_1_13.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_13.umbin -o umbrella_productions/rel_3_25C_13.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_13.rst -r umbrella_productions/rel_3_25C_13.rst -inf umbrella_productions/rel_3_25C_13.mdinfo -ref umbrella_productions/rel_2_25C_13.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_13.umbin -o umbrella_productions/prod_25C_13.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_13.rst -r umbrella_productions/prod_25C_13.rst -inf umbrella_productions/prod_25C_13.mdinfo -x umbrella_productions/prod_25C_13.nc -ref umbrella_productions/rel_3_25C_13.rst 

#14
pmemd -O -i umbrella_config/min_1_14.umbin -o umbrella_productions/min_1_14.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_13.rst -r umbrella_productions/min_1_14.rst -inf umbrella_productions/min_1_14.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_14.umbin -o umbrella_productions/rel_1_14.out -p WT_C2.prmtop -c umbrella_productions/min_1_14.rst -r umbrella_productions/rel_1_14.rst -inf umbrella_productions/rel_1_14.mdinfo -ref umbrella_productions/min_1_14.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_14.umbin -o umbrella_productions/rel_2_25C_14.out -p WT_C2.prmtop -c umbrella_productions/rel_1_14.rst -r umbrella_productions/rel_2_25C_14.rst -inf umbrella_productions/rel_2_25C_14.mdinfo -ref umbrella_productions/rel_1_14.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_14.umbin -o umbrella_productions/rel_3_25C_14.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_14.rst -r umbrella_productions/rel_3_25C_14.rst -inf umbrella_productions/rel_3_25C_14.mdinfo -ref umbrella_productions/rel_2_25C_14.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_14.umbin -o umbrella_productions/prod_25C_14.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_14.rst -r umbrella_productions/prod_25C_14.rst -inf umbrella_productions/prod_25C_14.mdinfo -x umbrella_productions/prod_25C_14.nc -ref umbrella_productions/rel_3_25C_14.rst 

#15
pmemd -O -i umbrella_config/min_1_15.umbin -o umbrella_productions/min_1_15.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_14.rst -r umbrella_productions/min_1_15.rst -inf umbrella_productions/min_1_15.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_15.umbin -o umbrella_productions/rel_1_15.out -p WT_C2.prmtop -c umbrella_productions/min_1_15.rst -r umbrella_productions/rel_1_15.rst -inf umbrella_productions/rel_1_15.mdinfo -ref umbrella_productions/min_1_15.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_15.umbin -o umbrella_productions/rel_2_25C_15.out -p WT_C2.prmtop -c umbrella_productions/rel_1_15.rst -r umbrella_productions/rel_2_25C_15.rst -inf umbrella_productions/rel_2_25C_15.mdinfo -ref umbrella_productions/rel_1_15.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_15.umbin -o umbrella_productions/rel_3_25C_15.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_15.rst -r umbrella_productions/rel_3_25C_15.rst -inf umbrella_productions/rel_3_25C_15.mdinfo -ref umbrella_productions/rel_2_25C_15.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_15.umbin -o umbrella_productions/prod_25C_15.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_15.rst -r umbrella_productions/prod_25C_15.rst -inf umbrella_productions/prod_25C_15.mdinfo -x umbrella_productions/prod_25C_15.nc -ref umbrella_productions/rel_3_25C_15.rst 

#16
pmemd -O -i umbrella_config/min_1_16.umbin -o umbrella_productions/min_1_16.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_15.rst -r umbrella_productions/min_1_16.rst -inf umbrella_productions/min_1_16.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_16.umbin -o umbrella_productions/rel_1_16.out -p WT_C2.prmtop -c umbrella_productions/min_1_16.rst -r umbrella_productions/rel_1_16.rst -inf umbrella_productions/rel_1_16.mdinfo -ref umbrella_productions/min_1_16.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_16.umbin -o umbrella_productions/rel_2_25C_16.out -p WT_C2.prmtop -c umbrella_productions/rel_1_16.rst -r umbrella_productions/rel_2_25C_16.rst -inf umbrella_productions/rel_2_25C_16.mdinfo -ref umbrella_productions/rel_1_16.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_16.umbin -o umbrella_productions/rel_3_25C_16.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_16.rst -r umbrella_productions/rel_3_25C_16.rst -inf umbrella_productions/rel_3_25C_16.mdinfo -ref umbrella_productions/rel_2_25C_16.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_16.umbin -o umbrella_productions/prod_25C_16.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_16.rst -r umbrella_productions/prod_25C_16.rst -inf umbrella_productions/prod_25C_16.mdinfo -x umbrella_productions/prod_25C_16.nc -ref umbrella_productions/rel_3_25C_16.rst 

#17
pmemd -O -i umbrella_config/min_1_17.umbin -o umbrella_productions/min_1_17.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_16.rst -r umbrella_productions/min_1_17.rst -inf umbrella_productions/min_1_17.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_17.umbin -o umbrella_productions/rel_1_17.out -p WT_C2.prmtop -c umbrella_productions/min_1_17.rst -r umbrella_productions/rel_1_17.rst -inf umbrella_productions/rel_1_17.mdinfo -ref umbrella_productions/min_1_17.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_17.umbin -o umbrella_productions/rel_2_25C_17.out -p WT_C2.prmtop -c umbrella_productions/rel_1_17.rst -r umbrella_productions/rel_2_25C_17.rst -inf umbrella_productions/rel_2_25C_17.mdinfo -ref umbrella_productions/rel_1_17.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_17.umbin -o umbrella_productions/rel_3_25C_17.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_17.rst -r umbrella_productions/rel_3_25C_17.rst -inf umbrella_productions/rel_3_25C_17.mdinfo -ref umbrella_productions/rel_2_25C_17.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_17.umbin -o umbrella_productions/prod_25C_17.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_17.rst -r umbrella_productions/prod_25C_17.rst -inf umbrella_productions/prod_25C_17.mdinfo -x umbrella_productions/prod_25C_17.nc -ref umbrella_productions/rel_3_25C_17.rst 

#18
pmemd -O -i umbrella_config/min_1_18.umbin -o umbrella_productions/min_1_18.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_17.rst -r umbrella_productions/min_1_18.rst -inf umbrella_productions/min_1_18.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_18.umbin -o umbrella_productions/rel_1_18.out -p WT_C2.prmtop -c umbrella_productions/min_1_18.rst -r umbrella_productions/rel_1_18.rst -inf umbrella_productions/rel_1_18.mdinfo -ref umbrella_productions/min_1_18.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_18.umbin -o umbrella_productions/rel_2_25C_18.out -p WT_C2.prmtop -c umbrella_productions/rel_1_18.rst -r umbrella_productions/rel_2_25C_18.rst -inf umbrella_productions/rel_2_25C_18.mdinfo -ref umbrella_productions/rel_1_18.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_18.umbin -o umbrella_productions/rel_3_25C_18.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_18.rst -r umbrella_productions/rel_3_25C_18.rst -inf umbrella_productions/rel_3_25C_18.mdinfo -ref umbrella_productions/rel_2_25C_18.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_18.umbin -o umbrella_productions/prod_25C_18.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_18.rst -r umbrella_productions/prod_25C_18.rst -inf umbrella_productions/prod_25C_18.mdinfo -x umbrella_productions/prod_25C_18.nc -ref umbrella_productions/rel_3_25C_18.rst 

#19
pmemd -O -i umbrella_config/min_1_19.umbin -o umbrella_productions/min_1_19.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_18.rst -r umbrella_productions/min_1_19.rst -inf umbrella_productions/min_1_19.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_19.umbin -o umbrella_productions/rel_1_19.out -p WT_C2.prmtop -c umbrella_productions/min_1_19.rst -r umbrella_productions/rel_1_19.rst -inf umbrella_productions/rel_1_19.mdinfo -ref umbrella_productions/min_1_19.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_19.umbin -o umbrella_productions/rel_2_25C_19.out -p WT_C2.prmtop -c umbrella_productions/rel_1_19.rst -r umbrella_productions/rel_2_25C_19.rst -inf umbrella_productions/rel_2_25C_19.mdinfo -ref umbrella_productions/rel_1_19.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_19.umbin -o umbrella_productions/rel_3_25C_19.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_19.rst -r umbrella_productions/rel_3_25C_19.rst -inf umbrella_productions/rel_3_25C_19.mdinfo -ref umbrella_productions/rel_2_25C_19.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_19.umbin -o umbrella_productions/prod_25C_19.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_19.rst -r umbrella_productions/prod_25C_19.rst -inf umbrella_productions/prod_25C_19.mdinfo -x umbrella_productions/prod_25C_19.nc -ref umbrella_productions/rel_3_25C_19.rst 

#20
pmemd -O -i umbrella_config/min_1_20.umbin -o umbrella_productions/min_1_20.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_19.rst -r umbrella_productions/min_1_20.rst -inf umbrella_productions/min_1_20.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_20.umbin -o umbrella_productions/rel_1_20.out -p WT_C2.prmtop -c umbrella_productions/min_1_20.rst -r umbrella_productions/rel_1_20.rst -inf umbrella_productions/rel_1_20.mdinfo -ref umbrella_productions/min_1_20.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_20.umbin -o umbrella_productions/rel_2_25C_20.out -p WT_C2.prmtop -c umbrella_productions/rel_1_20.rst -r umbrella_productions/rel_2_25C_20.rst -inf umbrella_productions/rel_2_25C_20.mdinfo -ref umbrella_productions/rel_1_20.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_20.umbin -o umbrella_productions/rel_3_25C_20.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_20.rst -r umbrella_productions/rel_3_25C_20.rst -inf umbrella_productions/rel_3_25C_20.mdinfo -ref umbrella_productions/rel_2_25C_20.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_20.umbin -o umbrella_productions/prod_25C_20.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_20.rst -r umbrella_productions/prod_25C_20.rst -inf umbrella_productions/prod_25C_20.mdinfo -x umbrella_productions/prod_25C_20.nc -ref umbrella_productions/rel_3_25C_20.rst 

#21
pmemd -O -i umbrella_config/min_1_21.umbin -o umbrella_productions/min_1_21.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_20.rst -r umbrella_productions/min_1_21.rst -inf umbrella_productions/min_1_21.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_21.umbin -o umbrella_productions/rel_1_21.out -p WT_C2.prmtop -c umbrella_productions/min_1_21.rst -r umbrella_productions/rel_1_21.rst -inf umbrella_productions/rel_1_21.mdinfo -ref umbrella_productions/min_1_21.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_21.umbin -o umbrella_productions/rel_2_25C_21.out -p WT_C2.prmtop -c umbrella_productions/rel_1_21.rst -r umbrella_productions/rel_2_25C_21.rst -inf umbrella_productions/rel_2_25C_21.mdinfo -ref umbrella_productions/rel_1_21.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_21.umbin -o umbrella_productions/rel_3_25C_21.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_21.rst -r umbrella_productions/rel_3_25C_21.rst -inf umbrella_productions/rel_3_25C_21.mdinfo -ref umbrella_productions/rel_2_25C_21.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_21.umbin -o umbrella_productions/prod_25C_21.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_21.rst -r umbrella_productions/prod_25C_21.rst -inf umbrella_productions/prod_25C_21.mdinfo -x umbrella_productions/prod_25C_21.nc -ref umbrella_productions/rel_3_25C_21.rst 

#22
pmemd -O -i umbrella_config/min_1_22.umbin -o umbrella_productions/min_1_22.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_21.rst -r umbrella_productions/min_1_22.rst -inf umbrella_productions/min_1_22.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_22.umbin -o umbrella_productions/rel_1_22.out -p WT_C2.prmtop -c umbrella_productions/min_1_22.rst -r umbrella_productions/rel_1_22.rst -inf umbrella_productions/rel_1_22.mdinfo -ref umbrella_productions/min_1_22.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_22.umbin -o umbrella_productions/rel_2_25C_22.out -p WT_C2.prmtop -c umbrella_productions/rel_1_22.rst -r umbrella_productions/rel_2_25C_22.rst -inf umbrella_productions/rel_2_25C_22.mdinfo -ref umbrella_productions/rel_1_22.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_22.umbin -o umbrella_productions/rel_3_25C_22.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_22.rst -r umbrella_productions/rel_3_25C_22.rst -inf umbrella_productions/rel_3_25C_22.mdinfo -ref umbrella_productions/rel_2_25C_22.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_22.umbin -o umbrella_productions/prod_25C_22.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_22.rst -r umbrella_productions/prod_25C_22.rst -inf umbrella_productions/prod_25C_22.mdinfo -x umbrella_productions/prod_25C_22.nc -ref umbrella_productions/rel_3_25C_22.rst 

#23
pmemd -O -i umbrella_config/min_1_23.umbin -o umbrella_productions/min_1_23.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_22.rst -r umbrella_productions/min_1_23.rst -inf umbrella_productions/min_1_23.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_23.umbin -o umbrella_productions/rel_1_23.out -p WT_C2.prmtop -c umbrella_productions/min_1_23.rst -r umbrella_productions/rel_1_23.rst -inf umbrella_productions/rel_1_23.mdinfo -ref umbrella_productions/min_1_23.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_23.umbin -o umbrella_productions/rel_2_25C_23.out -p WT_C2.prmtop -c umbrella_productions/rel_1_23.rst -r umbrella_productions/rel_2_25C_23.rst -inf umbrella_productions/rel_2_25C_23.mdinfo -ref umbrella_productions/rel_1_23.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_23.umbin -o umbrella_productions/rel_3_25C_23.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_23.rst -r umbrella_productions/rel_3_25C_23.rst -inf umbrella_productions/rel_3_25C_23.mdinfo -ref umbrella_productions/rel_2_25C_23.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_23.umbin -o umbrella_productions/prod_25C_23.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_23.rst -r umbrella_productions/prod_25C_23.rst -inf umbrella_productions/prod_25C_23.mdinfo -x umbrella_productions/prod_25C_23.nc -ref umbrella_productions/rel_3_25C_23.rst 

#24
pmemd -O -i umbrella_config/min_1_24.umbin -o umbrella_productions/min_1_24.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_23.rst -r umbrella_productions/min_1_24.rst -inf umbrella_productions/min_1_24.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_24.umbin -o umbrella_productions/rel_1_24.out -p WT_C2.prmtop -c umbrella_productions/min_1_24.rst -r umbrella_productions/rel_1_24.rst -inf umbrella_productions/rel_1_24.mdinfo -ref umbrella_productions/min_1_24.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_24.umbin -o umbrella_productions/rel_2_25C_24.out -p WT_C2.prmtop -c umbrella_productions/rel_1_24.rst -r umbrella_productions/rel_2_25C_24.rst -inf umbrella_productions/rel_2_25C_24.mdinfo -ref umbrella_productions/rel_1_24.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_24.umbin -o umbrella_productions/rel_3_25C_24.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_24.rst -r umbrella_productions/rel_3_25C_24.rst -inf umbrella_productions/rel_3_25C_24.mdinfo -ref umbrella_productions/rel_2_25C_24.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_24.umbin -o umbrella_productions/prod_25C_24.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_24.rst -r umbrella_productions/prod_25C_24.rst -inf umbrella_productions/prod_25C_24.mdinfo -x umbrella_productions/prod_25C_24.nc -ref umbrella_productions/rel_3_25C_24.rst 

#25
pmemd -O -i umbrella_config/min_1_25.umbin -o umbrella_productions/min_1_25.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_24.rst -r umbrella_productions/min_1_25.rst -inf umbrella_productions/min_1_25.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_25.umbin -o umbrella_productions/rel_1_25.out -p WT_C2.prmtop -c umbrella_productions/min_1_25.rst -r umbrella_productions/rel_1_25.rst -inf umbrella_productions/rel_1_25.mdinfo -ref umbrella_productions/min_1_25.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_25.umbin -o umbrella_productions/rel_2_25C_25.out -p WT_C2.prmtop -c umbrella_productions/rel_1_25.rst -r umbrella_productions/rel_2_25C_25.rst -inf umbrella_productions/rel_2_25C_25.mdinfo -ref umbrella_productions/rel_1_25.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_25.umbin -o umbrella_productions/rel_3_25C_25.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_25.rst -r umbrella_productions/rel_3_25C_25.rst -inf umbrella_productions/rel_3_25C_25.mdinfo -ref umbrella_productions/rel_2_25C_25.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_25.umbin -o umbrella_productions/prod_25C_25.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_25.rst -r umbrella_productions/prod_25C_25.rst -inf umbrella_productions/prod_25C_25.mdinfo -x umbrella_productions/prod_25C_25.nc -ref umbrella_productions/rel_3_25C_25.rst 

#26
pmemd -O -i umbrella_config/min_1_26.umbin -o umbrella_productions/min_1_26.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_25.rst -r umbrella_productions/min_1_26.rst -inf umbrella_productions/min_1_26.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_26.umbin -o umbrella_productions/rel_1_26.out -p WT_C2.prmtop -c umbrella_productions/min_1_26.rst -r umbrella_productions/rel_1_26.rst -inf umbrella_productions/rel_1_26.mdinfo -ref umbrella_productions/min_1_26.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_26.umbin -o umbrella_productions/rel_2_25C_26.out -p WT_C2.prmtop -c umbrella_productions/rel_1_26.rst -r umbrella_productions/rel_2_25C_26.rst -inf umbrella_productions/rel_2_25C_26.mdinfo -ref umbrella_productions/rel_1_26.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_26.umbin -o umbrella_productions/rel_3_25C_26.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_26.rst -r umbrella_productions/rel_3_25C_26.rst -inf umbrella_productions/rel_3_25C_26.mdinfo -ref umbrella_productions/rel_2_25C_26.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_26.umbin -o umbrella_productions/prod_25C_26.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_26.rst -r umbrella_productions/prod_25C_26.rst -inf umbrella_productions/prod_25C_26.mdinfo -x umbrella_productions/prod_25C_26.nc -ref umbrella_productions/rel_3_25C_26.rst 

#27
pmemd -O -i umbrella_config/min_1_27.umbin -o umbrella_productions/min_1_27.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_26.rst -r umbrella_productions/min_1_27.rst -inf umbrella_productions/min_1_27.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_27.umbin -o umbrella_productions/rel_1_27.out -p WT_C2.prmtop -c umbrella_productions/min_1_27.rst -r umbrella_productions/rel_1_27.rst -inf umbrella_productions/rel_1_27.mdinfo -ref umbrella_productions/min_1_27.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_27.umbin -o umbrella_productions/rel_2_25C_27.out -p WT_C2.prmtop -c umbrella_productions/rel_1_27.rst -r umbrella_productions/rel_2_25C_27.rst -inf umbrella_productions/rel_2_25C_27.mdinfo -ref umbrella_productions/rel_1_27.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_27.umbin -o umbrella_productions/rel_3_25C_27.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_27.rst -r umbrella_productions/rel_3_25C_27.rst -inf umbrella_productions/rel_3_25C_27.mdinfo -ref umbrella_productions/rel_2_25C_27.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_27.umbin -o umbrella_productions/prod_25C_27.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_27.rst -r umbrella_productions/prod_25C_27.rst -inf umbrella_productions/prod_25C_27.mdinfo -x umbrella_productions/prod_25C_27.nc -ref umbrella_productions/rel_3_25C_27.rst 

#28
pmemd -O -i umbrella_config/min_1_28.umbin -o umbrella_productions/min_1_28.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_27.rst -r umbrella_productions/min_1_28.rst -inf umbrella_productions/min_1_28.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_28.umbin -o umbrella_productions/rel_1_28.out -p WT_C2.prmtop -c umbrella_productions/min_1_28.rst -r umbrella_productions/rel_1_28.rst -inf umbrella_productions/rel_1_28.mdinfo -ref umbrella_productions/min_1_28.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_28.umbin -o umbrella_productions/rel_2_25C_28.out -p WT_C2.prmtop -c umbrella_productions/rel_1_28.rst -r umbrella_productions/rel_2_25C_28.rst -inf umbrella_productions/rel_2_25C_28.mdinfo -ref umbrella_productions/rel_1_28.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_28.umbin -o umbrella_productions/rel_3_25C_28.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_28.rst -r umbrella_productions/rel_3_25C_28.rst -inf umbrella_productions/rel_3_25C_28.mdinfo -ref umbrella_productions/rel_2_25C_28.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_28.umbin -o umbrella_productions/prod_25C_28.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_28.rst -r umbrella_productions/prod_25C_28.rst -inf umbrella_productions/prod_25C_28.mdinfo -x umbrella_productions/prod_25C_28.nc -ref umbrella_productions/rel_3_25C_28.rst 

#29
pmemd -O -i umbrella_config/min_1_29.umbin -o umbrella_productions/min_1_29.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_28.rst -r umbrella_productions/min_1_29.rst -inf umbrella_productions/min_1_29.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_29.umbin -o umbrella_productions/rel_1_29.out -p WT_C2.prmtop -c umbrella_productions/min_1_29.rst -r umbrella_productions/rel_1_29.rst -inf umbrella_productions/rel_1_29.mdinfo -ref umbrella_productions/min_1_29.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_29.umbin -o umbrella_productions/rel_2_25C_29.out -p WT_C2.prmtop -c umbrella_productions/rel_1_29.rst -r umbrella_productions/rel_2_25C_29.rst -inf umbrella_productions/rel_2_25C_29.mdinfo -ref umbrella_productions/rel_1_29.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_29.umbin -o umbrella_productions/rel_3_25C_29.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_29.rst -r umbrella_productions/rel_3_25C_29.rst -inf umbrella_productions/rel_3_25C_29.mdinfo -ref umbrella_productions/rel_2_25C_29.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_29.umbin -o umbrella_productions/prod_25C_29.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_29.rst -r umbrella_productions/prod_25C_29.rst -inf umbrella_productions/prod_25C_29.mdinfo -x umbrella_productions/prod_25C_29.nc -ref umbrella_productions/rel_3_25C_29.rst 

#30
pmemd -O -i umbrella_config/min_1_30.umbin -o umbrella_productions/min_1_30.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_29.rst -r umbrella_productions/min_1_30.rst -inf umbrella_productions/min_1_30.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_30.umbin -o umbrella_productions/rel_1_30.out -p WT_C2.prmtop -c umbrella_productions/min_1_30.rst -r umbrella_productions/rel_1_30.rst -inf umbrella_productions/rel_1_30.mdinfo -ref umbrella_productions/min_1_30.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_30.umbin -o umbrella_productions/rel_2_25C_30.out -p WT_C2.prmtop -c umbrella_productions/rel_1_30.rst -r umbrella_productions/rel_2_25C_30.rst -inf umbrella_productions/rel_2_25C_30.mdinfo -ref umbrella_productions/rel_1_30.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_30.umbin -o umbrella_productions/rel_3_25C_30.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_30.rst -r umbrella_productions/rel_3_25C_30.rst -inf umbrella_productions/rel_3_25C_30.mdinfo -ref umbrella_productions/rel_2_25C_30.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_30.umbin -o umbrella_productions/prod_25C_30.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_30.rst -r umbrella_productions/prod_25C_30.rst -inf umbrella_productions/prod_25C_30.mdinfo -x umbrella_productions/prod_25C_30.nc -ref umbrella_productions/rel_3_25C_30.rst 

#31
pmemd -O -i umbrella_config/min_1_31.umbin -o umbrella_productions/min_1_31.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_30.rst -r umbrella_productions/min_1_31.rst -inf umbrella_productions/min_1_31.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_31.umbin -o umbrella_productions/rel_1_31.out -p WT_C2.prmtop -c umbrella_productions/min_1_31.rst -r umbrella_productions/rel_1_31.rst -inf umbrella_productions/rel_1_31.mdinfo -ref umbrella_productions/min_1_31.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_31.umbin -o umbrella_productions/rel_2_25C_31.out -p WT_C2.prmtop -c umbrella_productions/rel_1_31.rst -r umbrella_productions/rel_2_25C_31.rst -inf umbrella_productions/rel_2_25C_31.mdinfo -ref umbrella_productions/rel_1_31.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_31.umbin -o umbrella_productions/rel_3_25C_31.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_31.rst -r umbrella_productions/rel_3_25C_31.rst -inf umbrella_productions/rel_3_25C_31.mdinfo -ref umbrella_productions/rel_2_25C_31.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_31.umbin -o umbrella_productions/prod_25C_31.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_31.rst -r umbrella_productions/prod_25C_31.rst -inf umbrella_productions/prod_25C_31.mdinfo -x umbrella_productions/prod_25C_31.nc -ref umbrella_productions/rel_3_25C_31.rst 

#32
pmemd -O -i umbrella_config/min_1_32.umbin -o umbrella_productions/min_1_32.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_31.rst -r umbrella_productions/min_1_32.rst -inf umbrella_productions/min_1_32.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_32.umbin -o umbrella_productions/rel_1_32.out -p WT_C2.prmtop -c umbrella_productions/min_1_32.rst -r umbrella_productions/rel_1_32.rst -inf umbrella_productions/rel_1_32.mdinfo -ref umbrella_productions/min_1_32.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_32.umbin -o umbrella_productions/rel_2_25C_32.out -p WT_C2.prmtop -c umbrella_productions/rel_1_32.rst -r umbrella_productions/rel_2_25C_32.rst -inf umbrella_productions/rel_2_25C_32.mdinfo -ref umbrella_productions/rel_1_32.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_32.umbin -o umbrella_productions/rel_3_25C_32.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_32.rst -r umbrella_productions/rel_3_25C_32.rst -inf umbrella_productions/rel_3_25C_32.mdinfo -ref umbrella_productions/rel_2_25C_32.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_32.umbin -o umbrella_productions/prod_25C_32.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_32.rst -r umbrella_productions/prod_25C_32.rst -inf umbrella_productions/prod_25C_32.mdinfo -x umbrella_productions/prod_25C_32.nc -ref umbrella_productions/rel_3_25C_32.rst 

#33
pmemd -O -i umbrella_config/min_1_33.umbin -o umbrella_productions/min_1_33.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_32.rst -r umbrella_productions/min_1_33.rst -inf umbrella_productions/min_1_33.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_33.umbin -o umbrella_productions/rel_1_33.out -p WT_C2.prmtop -c umbrella_productions/min_1_33.rst -r umbrella_productions/rel_1_33.rst -inf umbrella_productions/rel_1_33.mdinfo -ref umbrella_productions/min_1_33.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_33.umbin -o umbrella_productions/rel_2_25C_33.out -p WT_C2.prmtop -c umbrella_productions/rel_1_33.rst -r umbrella_productions/rel_2_25C_33.rst -inf umbrella_productions/rel_2_25C_33.mdinfo -ref umbrella_productions/rel_1_33.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_33.umbin -o umbrella_productions/rel_3_25C_33.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_33.rst -r umbrella_productions/rel_3_25C_33.rst -inf umbrella_productions/rel_3_25C_33.mdinfo -ref umbrella_productions/rel_2_25C_33.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_33.umbin -o umbrella_productions/prod_25C_33.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_33.rst -r umbrella_productions/prod_25C_33.rst -inf umbrella_productions/prod_25C_33.mdinfo -x umbrella_productions/prod_25C_33.nc -ref umbrella_productions/rel_3_25C_33.rst 

#34
pmemd -O -i umbrella_config/min_1_34.umbin -o umbrella_productions/min_1_34.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_33.rst -r umbrella_productions/min_1_34.rst -inf umbrella_productions/min_1_34.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_34.umbin -o umbrella_productions/rel_1_34.out -p WT_C2.prmtop -c umbrella_productions/min_1_34.rst -r umbrella_productions/rel_1_34.rst -inf umbrella_productions/rel_1_34.mdinfo -ref umbrella_productions/min_1_34.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_34.umbin -o umbrella_productions/rel_2_25C_34.out -p WT_C2.prmtop -c umbrella_productions/rel_1_34.rst -r umbrella_productions/rel_2_25C_34.rst -inf umbrella_productions/rel_2_25C_34.mdinfo -ref umbrella_productions/rel_1_34.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_34.umbin -o umbrella_productions/rel_3_25C_34.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_34.rst -r umbrella_productions/rel_3_25C_34.rst -inf umbrella_productions/rel_3_25C_34.mdinfo -ref umbrella_productions/rel_2_25C_34.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_34.umbin -o umbrella_productions/prod_25C_34.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_34.rst -r umbrella_productions/prod_25C_34.rst -inf umbrella_productions/prod_25C_34.mdinfo -x umbrella_productions/prod_25C_34.nc -ref umbrella_productions/rel_3_25C_34.rst 

#35
pmemd -O -i umbrella_config/min_1_35.umbin -o umbrella_productions/min_1_35.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_34.rst -r umbrella_productions/min_1_35.rst -inf umbrella_productions/min_1_35.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_35.umbin -o umbrella_productions/rel_1_35.out -p WT_C2.prmtop -c umbrella_productions/min_1_35.rst -r umbrella_productions/rel_1_35.rst -inf umbrella_productions/rel_1_35.mdinfo -ref umbrella_productions/min_1_35.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_35.umbin -o umbrella_productions/rel_2_25C_35.out -p WT_C2.prmtop -c umbrella_productions/rel_1_35.rst -r umbrella_productions/rel_2_25C_35.rst -inf umbrella_productions/rel_2_25C_35.mdinfo -ref umbrella_productions/rel_1_35.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_35.umbin -o umbrella_productions/rel_3_25C_35.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_35.rst -r umbrella_productions/rel_3_25C_35.rst -inf umbrella_productions/rel_3_25C_35.mdinfo -ref umbrella_productions/rel_2_25C_35.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_35.umbin -o umbrella_productions/prod_25C_35.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_35.rst -r umbrella_productions/prod_25C_35.rst -inf umbrella_productions/prod_25C_35.mdinfo -x umbrella_productions/prod_25C_35.nc -ref umbrella_productions/rel_3_25C_35.rst 

#36
pmemd -O -i umbrella_config/min_1_36.umbin -o umbrella_productions/min_1_36.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_35.rst -r umbrella_productions/min_1_36.rst -inf umbrella_productions/min_1_36.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_36.umbin -o umbrella_productions/rel_1_36.out -p WT_C2.prmtop -c umbrella_productions/min_1_36.rst -r umbrella_productions/rel_1_36.rst -inf umbrella_productions/rel_1_36.mdinfo -ref umbrella_productions/min_1_36.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_36.umbin -o umbrella_productions/rel_2_25C_36.out -p WT_C2.prmtop -c umbrella_productions/rel_1_36.rst -r umbrella_productions/rel_2_25C_36.rst -inf umbrella_productions/rel_2_25C_36.mdinfo -ref umbrella_productions/rel_1_36.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_36.umbin -o umbrella_productions/rel_3_25C_36.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_36.rst -r umbrella_productions/rel_3_25C_36.rst -inf umbrella_productions/rel_3_25C_36.mdinfo -ref umbrella_productions/rel_2_25C_36.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_36.umbin -o umbrella_productions/prod_25C_36.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_36.rst -r umbrella_productions/prod_25C_36.rst -inf umbrella_productions/prod_25C_36.mdinfo -x umbrella_productions/prod_25C_36.nc -ref umbrella_productions/rel_3_25C_36.rst 

#37
pmemd -O -i umbrella_config/min_1_37.umbin -o umbrella_productions/min_1_37.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_36.rst -r umbrella_productions/min_1_37.rst -inf umbrella_productions/min_1_37.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_37.umbin -o umbrella_productions/rel_1_37.out -p WT_C2.prmtop -c umbrella_productions/min_1_37.rst -r umbrella_productions/rel_1_37.rst -inf umbrella_productions/rel_1_37.mdinfo -ref umbrella_productions/min_1_37.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_37.umbin -o umbrella_productions/rel_2_25C_37.out -p WT_C2.prmtop -c umbrella_productions/rel_1_37.rst -r umbrella_productions/rel_2_25C_37.rst -inf umbrella_productions/rel_2_25C_37.mdinfo -ref umbrella_productions/rel_1_37.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_37.umbin -o umbrella_productions/rel_3_25C_37.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_37.rst -r umbrella_productions/rel_3_25C_37.rst -inf umbrella_productions/rel_3_25C_37.mdinfo -ref umbrella_productions/rel_2_25C_37.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_37.umbin -o umbrella_productions/prod_25C_37.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_37.rst -r umbrella_productions/prod_25C_37.rst -inf umbrella_productions/prod_25C_37.mdinfo -x umbrella_productions/prod_25C_37.nc -ref umbrella_productions/rel_3_25C_37.rst 

#38
pmemd -O -i umbrella_config/min_1_38.umbin -o umbrella_productions/min_1_38.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_37.rst -r umbrella_productions/min_1_38.rst -inf umbrella_productions/min_1_38.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_38.umbin -o umbrella_productions/rel_1_38.out -p WT_C2.prmtop -c umbrella_productions/min_1_38.rst -r umbrella_productions/rel_1_38.rst -inf umbrella_productions/rel_1_38.mdinfo -ref umbrella_productions/min_1_38.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_38.umbin -o umbrella_productions/rel_2_25C_38.out -p WT_C2.prmtop -c umbrella_productions/rel_1_38.rst -r umbrella_productions/rel_2_25C_38.rst -inf umbrella_productions/rel_2_25C_38.mdinfo -ref umbrella_productions/rel_1_38.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_38.umbin -o umbrella_productions/rel_3_25C_38.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_38.rst -r umbrella_productions/rel_3_25C_38.rst -inf umbrella_productions/rel_3_25C_38.mdinfo -ref umbrella_productions/rel_2_25C_38.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_38.umbin -o umbrella_productions/prod_25C_38.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_38.rst -r umbrella_productions/prod_25C_38.rst -inf umbrella_productions/prod_25C_38.mdinfo -x umbrella_productions/prod_25C_38.nc -ref umbrella_productions/rel_3_25C_38.rst 

#39
pmemd -O -i umbrella_config/min_1_39.umbin -o umbrella_productions/min_1_39.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_38.rst -r umbrella_productions/min_1_39.rst -inf umbrella_productions/min_1_39.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_39.umbin -o umbrella_productions/rel_1_39.out -p WT_C2.prmtop -c umbrella_productions/min_1_39.rst -r umbrella_productions/rel_1_39.rst -inf umbrella_productions/rel_1_39.mdinfo -ref umbrella_productions/min_1_39.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_39.umbin -o umbrella_productions/rel_2_25C_39.out -p WT_C2.prmtop -c umbrella_productions/rel_1_39.rst -r umbrella_productions/rel_2_25C_39.rst -inf umbrella_productions/rel_2_25C_39.mdinfo -ref umbrella_productions/rel_1_39.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_39.umbin -o umbrella_productions/rel_3_25C_39.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_39.rst -r umbrella_productions/rel_3_25C_39.rst -inf umbrella_productions/rel_3_25C_39.mdinfo -ref umbrella_productions/rel_2_25C_39.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_39.umbin -o umbrella_productions/prod_25C_39.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_39.rst -r umbrella_productions/prod_25C_39.rst -inf umbrella_productions/prod_25C_39.mdinfo -x umbrella_productions/prod_25C_39.nc -ref umbrella_productions/rel_3_25C_39.rst 

#40
pmemd -O -i umbrella_config/min_1_40.umbin -o umbrella_productions/min_1_40.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_39.rst -r umbrella_productions/min_1_40.rst -inf umbrella_productions/min_1_40.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_40.umbin -o umbrella_productions/rel_1_40.out -p WT_C2.prmtop -c umbrella_productions/min_1_40.rst -r umbrella_productions/rel_1_40.rst -inf umbrella_productions/rel_1_40.mdinfo -ref umbrella_productions/min_1_40.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_40.umbin -o umbrella_productions/rel_2_25C_40.out -p WT_C2.prmtop -c umbrella_productions/rel_1_40.rst -r umbrella_productions/rel_2_25C_40.rst -inf umbrella_productions/rel_2_25C_40.mdinfo -ref umbrella_productions/rel_1_40.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_40.umbin -o umbrella_productions/rel_3_25C_40.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_40.rst -r umbrella_productions/rel_3_25C_40.rst -inf umbrella_productions/rel_3_25C_40.mdinfo -ref umbrella_productions/rel_2_25C_40.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_40.umbin -o umbrella_productions/prod_25C_40.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_40.rst -r umbrella_productions/prod_25C_40.rst -inf umbrella_productions/prod_25C_40.mdinfo -x umbrella_productions/prod_25C_40.nc -ref umbrella_productions/rel_3_25C_40.rst 

#41
pmemd -O -i umbrella_config/min_1_41.umbin -o umbrella_productions/min_1_41.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_40.rst -r umbrella_productions/min_1_41.rst -inf umbrella_productions/min_1_41.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_41.umbin -o umbrella_productions/rel_1_41.out -p WT_C2.prmtop -c umbrella_productions/min_1_41.rst -r umbrella_productions/rel_1_41.rst -inf umbrella_productions/rel_1_41.mdinfo -ref umbrella_productions/min_1_41.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_41.umbin -o umbrella_productions/rel_2_25C_41.out -p WT_C2.prmtop -c umbrella_productions/rel_1_41.rst -r umbrella_productions/rel_2_25C_41.rst -inf umbrella_productions/rel_2_25C_41.mdinfo -ref umbrella_productions/rel_1_41.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_41.umbin -o umbrella_productions/rel_3_25C_41.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_41.rst -r umbrella_productions/rel_3_25C_41.rst -inf umbrella_productions/rel_3_25C_41.mdinfo -ref umbrella_productions/rel_2_25C_41.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_41.umbin -o umbrella_productions/prod_25C_41.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_41.rst -r umbrella_productions/prod_25C_41.rst -inf umbrella_productions/prod_25C_41.mdinfo -x umbrella_productions/prod_25C_41.nc -ref umbrella_productions/rel_3_25C_41.rst 

#42
pmemd -O -i umbrella_config/min_1_42.umbin -o umbrella_productions/min_1_42.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_41.rst -r umbrella_productions/min_1_42.rst -inf umbrella_productions/min_1_42.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_42.umbin -o umbrella_productions/rel_1_42.out -p WT_C2.prmtop -c umbrella_productions/min_1_42.rst -r umbrella_productions/rel_1_42.rst -inf umbrella_productions/rel_1_42.mdinfo -ref umbrella_productions/min_1_42.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_42.umbin -o umbrella_productions/rel_2_25C_42.out -p WT_C2.prmtop -c umbrella_productions/rel_1_42.rst -r umbrella_productions/rel_2_25C_42.rst -inf umbrella_productions/rel_2_25C_42.mdinfo -ref umbrella_productions/rel_1_42.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_42.umbin -o umbrella_productions/rel_3_25C_42.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_42.rst -r umbrella_productions/rel_3_25C_42.rst -inf umbrella_productions/rel_3_25C_42.mdinfo -ref umbrella_productions/rel_2_25C_42.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_42.umbin -o umbrella_productions/prod_25C_42.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_42.rst -r umbrella_productions/prod_25C_42.rst -inf umbrella_productions/prod_25C_42.mdinfo -x umbrella_productions/prod_25C_42.nc -ref umbrella_productions/rel_3_25C_42.rst 

#43
pmemd -O -i umbrella_config/min_1_43.umbin -o umbrella_productions/min_1_43.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_42.rst -r umbrella_productions/min_1_43.rst -inf umbrella_productions/min_1_43.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_43.umbin -o umbrella_productions/rel_1_43.out -p WT_C2.prmtop -c umbrella_productions/min_1_43.rst -r umbrella_productions/rel_1_43.rst -inf umbrella_productions/rel_1_43.mdinfo -ref umbrella_productions/min_1_43.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_43.umbin -o umbrella_productions/rel_2_25C_43.out -p WT_C2.prmtop -c umbrella_productions/rel_1_43.rst -r umbrella_productions/rel_2_25C_43.rst -inf umbrella_productions/rel_2_25C_43.mdinfo -ref umbrella_productions/rel_1_43.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_43.umbin -o umbrella_productions/rel_3_25C_43.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_43.rst -r umbrella_productions/rel_3_25C_43.rst -inf umbrella_productions/rel_3_25C_43.mdinfo -ref umbrella_productions/rel_2_25C_43.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_43.umbin -o umbrella_productions/prod_25C_43.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_43.rst -r umbrella_productions/prod_25C_43.rst -inf umbrella_productions/prod_25C_43.mdinfo -x umbrella_productions/prod_25C_43.nc -ref umbrella_productions/rel_3_25C_43.rst 

#44
pmemd -O -i umbrella_config/min_1_44.umbin -o umbrella_productions/min_1_44.out -p WT_C2.prmtop -c umbrella_productions/prod_25C_43.rst -r umbrella_productions/min_1_44.rst -inf umbrella_productions/min_1_44.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_44.umbin -o umbrella_productions/rel_1_44.out -p WT_C2.prmtop -c umbrella_productions/min_1_44.rst -r umbrella_productions/rel_1_44.rst -inf umbrella_productions/rel_1_44.mdinfo -ref umbrella_productions/min_1_44.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_44.umbin -o umbrella_productions/rel_2_25C_44.out -p WT_C2.prmtop -c umbrella_productions/rel_1_44.rst -r umbrella_productions/rel_2_25C_44.rst -inf umbrella_productions/rel_2_25C_44.mdinfo -ref umbrella_productions/rel_1_44.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_44.umbin -o umbrella_productions/rel_3_25C_44.out -p WT_C2.prmtop -c umbrella_productions/rel_2_25C_44.rst -r umbrella_productions/rel_3_25C_44.rst -inf umbrella_productions/rel_3_25C_44.mdinfo -ref umbrella_productions/rel_2_25C_44.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_44.umbin -o umbrella_productions/prod_25C_44.out -p WT_C2.prmtop -c umbrella_productions/rel_3_25C_44.rst -r umbrella_productions/prod_25C_44.rst -inf umbrella_productions/prod_25C_44.mdinfo -x umbrella_productions/prod_25C_44.nc -ref umbrella_productions/rel_3_25C_44.rst 

