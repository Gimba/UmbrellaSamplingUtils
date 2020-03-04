#!/bin/bash

#0
pmemd -O -i umbrella_config/min_1_0.umbin -o umbrella_productions/min_1_0.out -p R2220A.prmtop -c R2220A.inpcrd -r umbrella_productions/min_1_0.rst -inf umbrella_productions/min_1_0.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_0.umbin -o umbrella_productions/rel_1_0.out -p R2220A.prmtop -c umbrella_productions/min_1_0.rst -r umbrella_productions/rel_1_0.rst -inf umbrella_productions/rel_1_0.mdinfo -ref umbrella_productions/min_1_0.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_0.umbin -o umbrella_productions/rel_2_25C_0.out -p R2220A.prmtop -c umbrella_productions/rel_1_0.rst -r umbrella_productions/rel_2_25C_0.rst -inf umbrella_productions/rel_2_25C_0.mdinfo -ref umbrella_productions/rel_1_0.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_0.umbin -o umbrella_productions/rel_3_25C_0.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_0.rst -r umbrella_productions/rel_3_25C_0.rst -inf umbrella_productions/rel_3_25C_0.mdinfo -ref umbrella_productions/rel_2_25C_0.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_0.umbin -o umbrella_productions/prod_25C_4ns_0.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_0.rst -r umbrella_productions/prod_25C_4ns_0.rst -inf umbrella_productions/prod_25C_4ns_0.mdinfo -x umbrella_productions/prod_25C_4ns_0.nc -ref umbrella_productions/rel_3_25C_0.rst 

#-1
pmemd -O -i umbrella_config/min_1_-1.umbin -o umbrella_productions/min_1_-1.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_0.rst -r umbrella_productions/min_1_-1.rst -inf umbrella_productions/min_1_-1.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-1.umbin -o umbrella_productions/rel_1_-1.out -p R2220A.prmtop -c umbrella_productions/min_1_-1.rst -r umbrella_productions/rel_1_-1.rst -inf umbrella_productions/rel_1_-1.mdinfo -ref umbrella_productions/min_1_-1.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-1.umbin -o umbrella_productions/rel_2_25C_-1.out -p R2220A.prmtop -c umbrella_productions/rel_1_-1.rst -r umbrella_productions/rel_2_25C_-1.rst -inf umbrella_productions/rel_2_25C_-1.mdinfo -ref umbrella_productions/rel_1_-1.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-1.umbin -o umbrella_productions/rel_3_25C_-1.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-1.rst -r umbrella_productions/rel_3_25C_-1.rst -inf umbrella_productions/rel_3_25C_-1.mdinfo -ref umbrella_productions/rel_2_25C_-1.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-1.umbin -o umbrella_productions/prod_25C_4ns_-1.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-1.rst -r umbrella_productions/prod_25C_4ns_-1.rst -inf umbrella_productions/prod_25C_4ns_-1.mdinfo -x umbrella_productions/prod_25C_4ns_-1.nc -ref umbrella_productions/rel_3_25C_-1.rst 

#-2
pmemd -O -i umbrella_config/min_1_-2.umbin -o umbrella_productions/min_1_-2.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-1.rst -r umbrella_productions/min_1_-2.rst -inf umbrella_productions/min_1_-2.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-2.umbin -o umbrella_productions/rel_1_-2.out -p R2220A.prmtop -c umbrella_productions/min_1_-2.rst -r umbrella_productions/rel_1_-2.rst -inf umbrella_productions/rel_1_-2.mdinfo -ref umbrella_productions/min_1_-2.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-2.umbin -o umbrella_productions/rel_2_25C_-2.out -p R2220A.prmtop -c umbrella_productions/rel_1_-2.rst -r umbrella_productions/rel_2_25C_-2.rst -inf umbrella_productions/rel_2_25C_-2.mdinfo -ref umbrella_productions/rel_1_-2.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-2.umbin -o umbrella_productions/rel_3_25C_-2.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-2.rst -r umbrella_productions/rel_3_25C_-2.rst -inf umbrella_productions/rel_3_25C_-2.mdinfo -ref umbrella_productions/rel_2_25C_-2.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-2.umbin -o umbrella_productions/prod_25C_4ns_-2.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-2.rst -r umbrella_productions/prod_25C_4ns_-2.rst -inf umbrella_productions/prod_25C_4ns_-2.mdinfo -x umbrella_productions/prod_25C_4ns_-2.nc -ref umbrella_productions/rel_3_25C_-2.rst 

#-3
pmemd -O -i umbrella_config/min_1_-3.umbin -o umbrella_productions/min_1_-3.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-2.rst -r umbrella_productions/min_1_-3.rst -inf umbrella_productions/min_1_-3.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-3.umbin -o umbrella_productions/rel_1_-3.out -p R2220A.prmtop -c umbrella_productions/min_1_-3.rst -r umbrella_productions/rel_1_-3.rst -inf umbrella_productions/rel_1_-3.mdinfo -ref umbrella_productions/min_1_-3.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-3.umbin -o umbrella_productions/rel_2_25C_-3.out -p R2220A.prmtop -c umbrella_productions/rel_1_-3.rst -r umbrella_productions/rel_2_25C_-3.rst -inf umbrella_productions/rel_2_25C_-3.mdinfo -ref umbrella_productions/rel_1_-3.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-3.umbin -o umbrella_productions/rel_3_25C_-3.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-3.rst -r umbrella_productions/rel_3_25C_-3.rst -inf umbrella_productions/rel_3_25C_-3.mdinfo -ref umbrella_productions/rel_2_25C_-3.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-3.umbin -o umbrella_productions/prod_25C_4ns_-3.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-3.rst -r umbrella_productions/prod_25C_4ns_-3.rst -inf umbrella_productions/prod_25C_4ns_-3.mdinfo -x umbrella_productions/prod_25C_4ns_-3.nc -ref umbrella_productions/rel_3_25C_-3.rst 

#-4
pmemd -O -i umbrella_config/min_1_-4.umbin -o umbrella_productions/min_1_-4.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-3.rst -r umbrella_productions/min_1_-4.rst -inf umbrella_productions/min_1_-4.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-4.umbin -o umbrella_productions/rel_1_-4.out -p R2220A.prmtop -c umbrella_productions/min_1_-4.rst -r umbrella_productions/rel_1_-4.rst -inf umbrella_productions/rel_1_-4.mdinfo -ref umbrella_productions/min_1_-4.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-4.umbin -o umbrella_productions/rel_2_25C_-4.out -p R2220A.prmtop -c umbrella_productions/rel_1_-4.rst -r umbrella_productions/rel_2_25C_-4.rst -inf umbrella_productions/rel_2_25C_-4.mdinfo -ref umbrella_productions/rel_1_-4.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-4.umbin -o umbrella_productions/rel_3_25C_-4.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-4.rst -r umbrella_productions/rel_3_25C_-4.rst -inf umbrella_productions/rel_3_25C_-4.mdinfo -ref umbrella_productions/rel_2_25C_-4.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-4.umbin -o umbrella_productions/prod_25C_4ns_-4.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-4.rst -r umbrella_productions/prod_25C_4ns_-4.rst -inf umbrella_productions/prod_25C_4ns_-4.mdinfo -x umbrella_productions/prod_25C_4ns_-4.nc -ref umbrella_productions/rel_3_25C_-4.rst 

#-5
pmemd -O -i umbrella_config/min_1_-5.umbin -o umbrella_productions/min_1_-5.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-4.rst -r umbrella_productions/min_1_-5.rst -inf umbrella_productions/min_1_-5.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-5.umbin -o umbrella_productions/rel_1_-5.out -p R2220A.prmtop -c umbrella_productions/min_1_-5.rst -r umbrella_productions/rel_1_-5.rst -inf umbrella_productions/rel_1_-5.mdinfo -ref umbrella_productions/min_1_-5.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-5.umbin -o umbrella_productions/rel_2_25C_-5.out -p R2220A.prmtop -c umbrella_productions/rel_1_-5.rst -r umbrella_productions/rel_2_25C_-5.rst -inf umbrella_productions/rel_2_25C_-5.mdinfo -ref umbrella_productions/rel_1_-5.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-5.umbin -o umbrella_productions/rel_3_25C_-5.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-5.rst -r umbrella_productions/rel_3_25C_-5.rst -inf umbrella_productions/rel_3_25C_-5.mdinfo -ref umbrella_productions/rel_2_25C_-5.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-5.umbin -o umbrella_productions/prod_25C_4ns_-5.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-5.rst -r umbrella_productions/prod_25C_4ns_-5.rst -inf umbrella_productions/prod_25C_4ns_-5.mdinfo -x umbrella_productions/prod_25C_4ns_-5.nc -ref umbrella_productions/rel_3_25C_-5.rst 

#-6
pmemd -O -i umbrella_config/min_1_-6.umbin -o umbrella_productions/min_1_-6.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-5.rst -r umbrella_productions/min_1_-6.rst -inf umbrella_productions/min_1_-6.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-6.umbin -o umbrella_productions/rel_1_-6.out -p R2220A.prmtop -c umbrella_productions/min_1_-6.rst -r umbrella_productions/rel_1_-6.rst -inf umbrella_productions/rel_1_-6.mdinfo -ref umbrella_productions/min_1_-6.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-6.umbin -o umbrella_productions/rel_2_25C_-6.out -p R2220A.prmtop -c umbrella_productions/rel_1_-6.rst -r umbrella_productions/rel_2_25C_-6.rst -inf umbrella_productions/rel_2_25C_-6.mdinfo -ref umbrella_productions/rel_1_-6.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-6.umbin -o umbrella_productions/rel_3_25C_-6.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-6.rst -r umbrella_productions/rel_3_25C_-6.rst -inf umbrella_productions/rel_3_25C_-6.mdinfo -ref umbrella_productions/rel_2_25C_-6.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-6.umbin -o umbrella_productions/prod_25C_4ns_-6.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-6.rst -r umbrella_productions/prod_25C_4ns_-6.rst -inf umbrella_productions/prod_25C_4ns_-6.mdinfo -x umbrella_productions/prod_25C_4ns_-6.nc -ref umbrella_productions/rel_3_25C_-6.rst 

#-7
pmemd -O -i umbrella_config/min_1_-7.umbin -o umbrella_productions/min_1_-7.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-6.rst -r umbrella_productions/min_1_-7.rst -inf umbrella_productions/min_1_-7.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-7.umbin -o umbrella_productions/rel_1_-7.out -p R2220A.prmtop -c umbrella_productions/min_1_-7.rst -r umbrella_productions/rel_1_-7.rst -inf umbrella_productions/rel_1_-7.mdinfo -ref umbrella_productions/min_1_-7.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-7.umbin -o umbrella_productions/rel_2_25C_-7.out -p R2220A.prmtop -c umbrella_productions/rel_1_-7.rst -r umbrella_productions/rel_2_25C_-7.rst -inf umbrella_productions/rel_2_25C_-7.mdinfo -ref umbrella_productions/rel_1_-7.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-7.umbin -o umbrella_productions/rel_3_25C_-7.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-7.rst -r umbrella_productions/rel_3_25C_-7.rst -inf umbrella_productions/rel_3_25C_-7.mdinfo -ref umbrella_productions/rel_2_25C_-7.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-7.umbin -o umbrella_productions/prod_25C_4ns_-7.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-7.rst -r umbrella_productions/prod_25C_4ns_-7.rst -inf umbrella_productions/prod_25C_4ns_-7.mdinfo -x umbrella_productions/prod_25C_4ns_-7.nc -ref umbrella_productions/rel_3_25C_-7.rst 

#-8
pmemd -O -i umbrella_config/min_1_-8.umbin -o umbrella_productions/min_1_-8.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-7.rst -r umbrella_productions/min_1_-8.rst -inf umbrella_productions/min_1_-8.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-8.umbin -o umbrella_productions/rel_1_-8.out -p R2220A.prmtop -c umbrella_productions/min_1_-8.rst -r umbrella_productions/rel_1_-8.rst -inf umbrella_productions/rel_1_-8.mdinfo -ref umbrella_productions/min_1_-8.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-8.umbin -o umbrella_productions/rel_2_25C_-8.out -p R2220A.prmtop -c umbrella_productions/rel_1_-8.rst -r umbrella_productions/rel_2_25C_-8.rst -inf umbrella_productions/rel_2_25C_-8.mdinfo -ref umbrella_productions/rel_1_-8.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-8.umbin -o umbrella_productions/rel_3_25C_-8.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-8.rst -r umbrella_productions/rel_3_25C_-8.rst -inf umbrella_productions/rel_3_25C_-8.mdinfo -ref umbrella_productions/rel_2_25C_-8.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-8.umbin -o umbrella_productions/prod_25C_4ns_-8.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-8.rst -r umbrella_productions/prod_25C_4ns_-8.rst -inf umbrella_productions/prod_25C_4ns_-8.mdinfo -x umbrella_productions/prod_25C_4ns_-8.nc -ref umbrella_productions/rel_3_25C_-8.rst 

#-9
pmemd -O -i umbrella_config/min_1_-9.umbin -o umbrella_productions/min_1_-9.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-8.rst -r umbrella_productions/min_1_-9.rst -inf umbrella_productions/min_1_-9.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-9.umbin -o umbrella_productions/rel_1_-9.out -p R2220A.prmtop -c umbrella_productions/min_1_-9.rst -r umbrella_productions/rel_1_-9.rst -inf umbrella_productions/rel_1_-9.mdinfo -ref umbrella_productions/min_1_-9.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-9.umbin -o umbrella_productions/rel_2_25C_-9.out -p R2220A.prmtop -c umbrella_productions/rel_1_-9.rst -r umbrella_productions/rel_2_25C_-9.rst -inf umbrella_productions/rel_2_25C_-9.mdinfo -ref umbrella_productions/rel_1_-9.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-9.umbin -o umbrella_productions/rel_3_25C_-9.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-9.rst -r umbrella_productions/rel_3_25C_-9.rst -inf umbrella_productions/rel_3_25C_-9.mdinfo -ref umbrella_productions/rel_2_25C_-9.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-9.umbin -o umbrella_productions/prod_25C_4ns_-9.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-9.rst -r umbrella_productions/prod_25C_4ns_-9.rst -inf umbrella_productions/prod_25C_4ns_-9.mdinfo -x umbrella_productions/prod_25C_4ns_-9.nc -ref umbrella_productions/rel_3_25C_-9.rst 

#-10
pmemd -O -i umbrella_config/min_1_-10.umbin -o umbrella_productions/min_1_-10.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-9.rst -r umbrella_productions/min_1_-10.rst -inf umbrella_productions/min_1_-10.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-10.umbin -o umbrella_productions/rel_1_-10.out -p R2220A.prmtop -c umbrella_productions/min_1_-10.rst -r umbrella_productions/rel_1_-10.rst -inf umbrella_productions/rel_1_-10.mdinfo -ref umbrella_productions/min_1_-10.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-10.umbin -o umbrella_productions/rel_2_25C_-10.out -p R2220A.prmtop -c umbrella_productions/rel_1_-10.rst -r umbrella_productions/rel_2_25C_-10.rst -inf umbrella_productions/rel_2_25C_-10.mdinfo -ref umbrella_productions/rel_1_-10.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-10.umbin -o umbrella_productions/rel_3_25C_-10.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-10.rst -r umbrella_productions/rel_3_25C_-10.rst -inf umbrella_productions/rel_3_25C_-10.mdinfo -ref umbrella_productions/rel_2_25C_-10.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-10.umbin -o umbrella_productions/prod_25C_4ns_-10.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-10.rst -r umbrella_productions/prod_25C_4ns_-10.rst -inf umbrella_productions/prod_25C_4ns_-10.mdinfo -x umbrella_productions/prod_25C_4ns_-10.nc -ref umbrella_productions/rel_3_25C_-10.rst 

#-11
pmemd -O -i umbrella_config/min_1_-11.umbin -o umbrella_productions/min_1_-11.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-10.rst -r umbrella_productions/min_1_-11.rst -inf umbrella_productions/min_1_-11.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-11.umbin -o umbrella_productions/rel_1_-11.out -p R2220A.prmtop -c umbrella_productions/min_1_-11.rst -r umbrella_productions/rel_1_-11.rst -inf umbrella_productions/rel_1_-11.mdinfo -ref umbrella_productions/min_1_-11.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-11.umbin -o umbrella_productions/rel_2_25C_-11.out -p R2220A.prmtop -c umbrella_productions/rel_1_-11.rst -r umbrella_productions/rel_2_25C_-11.rst -inf umbrella_productions/rel_2_25C_-11.mdinfo -ref umbrella_productions/rel_1_-11.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-11.umbin -o umbrella_productions/rel_3_25C_-11.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-11.rst -r umbrella_productions/rel_3_25C_-11.rst -inf umbrella_productions/rel_3_25C_-11.mdinfo -ref umbrella_productions/rel_2_25C_-11.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-11.umbin -o umbrella_productions/prod_25C_4ns_-11.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-11.rst -r umbrella_productions/prod_25C_4ns_-11.rst -inf umbrella_productions/prod_25C_4ns_-11.mdinfo -x umbrella_productions/prod_25C_4ns_-11.nc -ref umbrella_productions/rel_3_25C_-11.rst 

#-12
pmemd -O -i umbrella_config/min_1_-12.umbin -o umbrella_productions/min_1_-12.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-11.rst -r umbrella_productions/min_1_-12.rst -inf umbrella_productions/min_1_-12.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-12.umbin -o umbrella_productions/rel_1_-12.out -p R2220A.prmtop -c umbrella_productions/min_1_-12.rst -r umbrella_productions/rel_1_-12.rst -inf umbrella_productions/rel_1_-12.mdinfo -ref umbrella_productions/min_1_-12.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-12.umbin -o umbrella_productions/rel_2_25C_-12.out -p R2220A.prmtop -c umbrella_productions/rel_1_-12.rst -r umbrella_productions/rel_2_25C_-12.rst -inf umbrella_productions/rel_2_25C_-12.mdinfo -ref umbrella_productions/rel_1_-12.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-12.umbin -o umbrella_productions/rel_3_25C_-12.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-12.rst -r umbrella_productions/rel_3_25C_-12.rst -inf umbrella_productions/rel_3_25C_-12.mdinfo -ref umbrella_productions/rel_2_25C_-12.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-12.umbin -o umbrella_productions/prod_25C_4ns_-12.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-12.rst -r umbrella_productions/prod_25C_4ns_-12.rst -inf umbrella_productions/prod_25C_4ns_-12.mdinfo -x umbrella_productions/prod_25C_4ns_-12.nc -ref umbrella_productions/rel_3_25C_-12.rst 

#-13
pmemd -O -i umbrella_config/min_1_-13.umbin -o umbrella_productions/min_1_-13.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-12.rst -r umbrella_productions/min_1_-13.rst -inf umbrella_productions/min_1_-13.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-13.umbin -o umbrella_productions/rel_1_-13.out -p R2220A.prmtop -c umbrella_productions/min_1_-13.rst -r umbrella_productions/rel_1_-13.rst -inf umbrella_productions/rel_1_-13.mdinfo -ref umbrella_productions/min_1_-13.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-13.umbin -o umbrella_productions/rel_2_25C_-13.out -p R2220A.prmtop -c umbrella_productions/rel_1_-13.rst -r umbrella_productions/rel_2_25C_-13.rst -inf umbrella_productions/rel_2_25C_-13.mdinfo -ref umbrella_productions/rel_1_-13.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-13.umbin -o umbrella_productions/rel_3_25C_-13.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-13.rst -r umbrella_productions/rel_3_25C_-13.rst -inf umbrella_productions/rel_3_25C_-13.mdinfo -ref umbrella_productions/rel_2_25C_-13.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-13.umbin -o umbrella_productions/prod_25C_4ns_-13.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-13.rst -r umbrella_productions/prod_25C_4ns_-13.rst -inf umbrella_productions/prod_25C_4ns_-13.mdinfo -x umbrella_productions/prod_25C_4ns_-13.nc -ref umbrella_productions/rel_3_25C_-13.rst 

#-14
pmemd -O -i umbrella_config/min_1_-14.umbin -o umbrella_productions/min_1_-14.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-13.rst -r umbrella_productions/min_1_-14.rst -inf umbrella_productions/min_1_-14.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-14.umbin -o umbrella_productions/rel_1_-14.out -p R2220A.prmtop -c umbrella_productions/min_1_-14.rst -r umbrella_productions/rel_1_-14.rst -inf umbrella_productions/rel_1_-14.mdinfo -ref umbrella_productions/min_1_-14.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-14.umbin -o umbrella_productions/rel_2_25C_-14.out -p R2220A.prmtop -c umbrella_productions/rel_1_-14.rst -r umbrella_productions/rel_2_25C_-14.rst -inf umbrella_productions/rel_2_25C_-14.mdinfo -ref umbrella_productions/rel_1_-14.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-14.umbin -o umbrella_productions/rel_3_25C_-14.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-14.rst -r umbrella_productions/rel_3_25C_-14.rst -inf umbrella_productions/rel_3_25C_-14.mdinfo -ref umbrella_productions/rel_2_25C_-14.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-14.umbin -o umbrella_productions/prod_25C_4ns_-14.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-14.rst -r umbrella_productions/prod_25C_4ns_-14.rst -inf umbrella_productions/prod_25C_4ns_-14.mdinfo -x umbrella_productions/prod_25C_4ns_-14.nc -ref umbrella_productions/rel_3_25C_-14.rst 

#-15
pmemd -O -i umbrella_config/min_1_-15.umbin -o umbrella_productions/min_1_-15.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-14.rst -r umbrella_productions/min_1_-15.rst -inf umbrella_productions/min_1_-15.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-15.umbin -o umbrella_productions/rel_1_-15.out -p R2220A.prmtop -c umbrella_productions/min_1_-15.rst -r umbrella_productions/rel_1_-15.rst -inf umbrella_productions/rel_1_-15.mdinfo -ref umbrella_productions/min_1_-15.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-15.umbin -o umbrella_productions/rel_2_25C_-15.out -p R2220A.prmtop -c umbrella_productions/rel_1_-15.rst -r umbrella_productions/rel_2_25C_-15.rst -inf umbrella_productions/rel_2_25C_-15.mdinfo -ref umbrella_productions/rel_1_-15.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-15.umbin -o umbrella_productions/rel_3_25C_-15.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-15.rst -r umbrella_productions/rel_3_25C_-15.rst -inf umbrella_productions/rel_3_25C_-15.mdinfo -ref umbrella_productions/rel_2_25C_-15.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-15.umbin -o umbrella_productions/prod_25C_4ns_-15.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-15.rst -r umbrella_productions/prod_25C_4ns_-15.rst -inf umbrella_productions/prod_25C_4ns_-15.mdinfo -x umbrella_productions/prod_25C_4ns_-15.nc -ref umbrella_productions/rel_3_25C_-15.rst 

#-16
pmemd -O -i umbrella_config/min_1_-16.umbin -o umbrella_productions/min_1_-16.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-15.rst -r umbrella_productions/min_1_-16.rst -inf umbrella_productions/min_1_-16.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-16.umbin -o umbrella_productions/rel_1_-16.out -p R2220A.prmtop -c umbrella_productions/min_1_-16.rst -r umbrella_productions/rel_1_-16.rst -inf umbrella_productions/rel_1_-16.mdinfo -ref umbrella_productions/min_1_-16.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-16.umbin -o umbrella_productions/rel_2_25C_-16.out -p R2220A.prmtop -c umbrella_productions/rel_1_-16.rst -r umbrella_productions/rel_2_25C_-16.rst -inf umbrella_productions/rel_2_25C_-16.mdinfo -ref umbrella_productions/rel_1_-16.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-16.umbin -o umbrella_productions/rel_3_25C_-16.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-16.rst -r umbrella_productions/rel_3_25C_-16.rst -inf umbrella_productions/rel_3_25C_-16.mdinfo -ref umbrella_productions/rel_2_25C_-16.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-16.umbin -o umbrella_productions/prod_25C_4ns_-16.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-16.rst -r umbrella_productions/prod_25C_4ns_-16.rst -inf umbrella_productions/prod_25C_4ns_-16.mdinfo -x umbrella_productions/prod_25C_4ns_-16.nc -ref umbrella_productions/rel_3_25C_-16.rst 

#-17
pmemd -O -i umbrella_config/min_1_-17.umbin -o umbrella_productions/min_1_-17.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-16.rst -r umbrella_productions/min_1_-17.rst -inf umbrella_productions/min_1_-17.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-17.umbin -o umbrella_productions/rel_1_-17.out -p R2220A.prmtop -c umbrella_productions/min_1_-17.rst -r umbrella_productions/rel_1_-17.rst -inf umbrella_productions/rel_1_-17.mdinfo -ref umbrella_productions/min_1_-17.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-17.umbin -o umbrella_productions/rel_2_25C_-17.out -p R2220A.prmtop -c umbrella_productions/rel_1_-17.rst -r umbrella_productions/rel_2_25C_-17.rst -inf umbrella_productions/rel_2_25C_-17.mdinfo -ref umbrella_productions/rel_1_-17.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-17.umbin -o umbrella_productions/rel_3_25C_-17.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-17.rst -r umbrella_productions/rel_3_25C_-17.rst -inf umbrella_productions/rel_3_25C_-17.mdinfo -ref umbrella_productions/rel_2_25C_-17.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-17.umbin -o umbrella_productions/prod_25C_4ns_-17.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-17.rst -r umbrella_productions/prod_25C_4ns_-17.rst -inf umbrella_productions/prod_25C_4ns_-17.mdinfo -x umbrella_productions/prod_25C_4ns_-17.nc -ref umbrella_productions/rel_3_25C_-17.rst 

#-18
pmemd -O -i umbrella_config/min_1_-18.umbin -o umbrella_productions/min_1_-18.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-17.rst -r umbrella_productions/min_1_-18.rst -inf umbrella_productions/min_1_-18.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-18.umbin -o umbrella_productions/rel_1_-18.out -p R2220A.prmtop -c umbrella_productions/min_1_-18.rst -r umbrella_productions/rel_1_-18.rst -inf umbrella_productions/rel_1_-18.mdinfo -ref umbrella_productions/min_1_-18.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-18.umbin -o umbrella_productions/rel_2_25C_-18.out -p R2220A.prmtop -c umbrella_productions/rel_1_-18.rst -r umbrella_productions/rel_2_25C_-18.rst -inf umbrella_productions/rel_2_25C_-18.mdinfo -ref umbrella_productions/rel_1_-18.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-18.umbin -o umbrella_productions/rel_3_25C_-18.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-18.rst -r umbrella_productions/rel_3_25C_-18.rst -inf umbrella_productions/rel_3_25C_-18.mdinfo -ref umbrella_productions/rel_2_25C_-18.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-18.umbin -o umbrella_productions/prod_25C_4ns_-18.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-18.rst -r umbrella_productions/prod_25C_4ns_-18.rst -inf umbrella_productions/prod_25C_4ns_-18.mdinfo -x umbrella_productions/prod_25C_4ns_-18.nc -ref umbrella_productions/rel_3_25C_-18.rst 

#-19
pmemd -O -i umbrella_config/min_1_-19.umbin -o umbrella_productions/min_1_-19.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-18.rst -r umbrella_productions/min_1_-19.rst -inf umbrella_productions/min_1_-19.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-19.umbin -o umbrella_productions/rel_1_-19.out -p R2220A.prmtop -c umbrella_productions/min_1_-19.rst -r umbrella_productions/rel_1_-19.rst -inf umbrella_productions/rel_1_-19.mdinfo -ref umbrella_productions/min_1_-19.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-19.umbin -o umbrella_productions/rel_2_25C_-19.out -p R2220A.prmtop -c umbrella_productions/rel_1_-19.rst -r umbrella_productions/rel_2_25C_-19.rst -inf umbrella_productions/rel_2_25C_-19.mdinfo -ref umbrella_productions/rel_1_-19.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-19.umbin -o umbrella_productions/rel_3_25C_-19.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-19.rst -r umbrella_productions/rel_3_25C_-19.rst -inf umbrella_productions/rel_3_25C_-19.mdinfo -ref umbrella_productions/rel_2_25C_-19.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-19.umbin -o umbrella_productions/prod_25C_4ns_-19.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-19.rst -r umbrella_productions/prod_25C_4ns_-19.rst -inf umbrella_productions/prod_25C_4ns_-19.mdinfo -x umbrella_productions/prod_25C_4ns_-19.nc -ref umbrella_productions/rel_3_25C_-19.rst 

#-20
pmemd -O -i umbrella_config/min_1_-20.umbin -o umbrella_productions/min_1_-20.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-19.rst -r umbrella_productions/min_1_-20.rst -inf umbrella_productions/min_1_-20.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-20.umbin -o umbrella_productions/rel_1_-20.out -p R2220A.prmtop -c umbrella_productions/min_1_-20.rst -r umbrella_productions/rel_1_-20.rst -inf umbrella_productions/rel_1_-20.mdinfo -ref umbrella_productions/min_1_-20.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-20.umbin -o umbrella_productions/rel_2_25C_-20.out -p R2220A.prmtop -c umbrella_productions/rel_1_-20.rst -r umbrella_productions/rel_2_25C_-20.rst -inf umbrella_productions/rel_2_25C_-20.mdinfo -ref umbrella_productions/rel_1_-20.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-20.umbin -o umbrella_productions/rel_3_25C_-20.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-20.rst -r umbrella_productions/rel_3_25C_-20.rst -inf umbrella_productions/rel_3_25C_-20.mdinfo -ref umbrella_productions/rel_2_25C_-20.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-20.umbin -o umbrella_productions/prod_25C_4ns_-20.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-20.rst -r umbrella_productions/prod_25C_4ns_-20.rst -inf umbrella_productions/prod_25C_4ns_-20.mdinfo -x umbrella_productions/prod_25C_4ns_-20.nc -ref umbrella_productions/rel_3_25C_-20.rst 

#-21
pmemd -O -i umbrella_config/min_1_-21.umbin -o umbrella_productions/min_1_-21.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-20.rst -r umbrella_productions/min_1_-21.rst -inf umbrella_productions/min_1_-21.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-21.umbin -o umbrella_productions/rel_1_-21.out -p R2220A.prmtop -c umbrella_productions/min_1_-21.rst -r umbrella_productions/rel_1_-21.rst -inf umbrella_productions/rel_1_-21.mdinfo -ref umbrella_productions/min_1_-21.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-21.umbin -o umbrella_productions/rel_2_25C_-21.out -p R2220A.prmtop -c umbrella_productions/rel_1_-21.rst -r umbrella_productions/rel_2_25C_-21.rst -inf umbrella_productions/rel_2_25C_-21.mdinfo -ref umbrella_productions/rel_1_-21.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-21.umbin -o umbrella_productions/rel_3_25C_-21.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-21.rst -r umbrella_productions/rel_3_25C_-21.rst -inf umbrella_productions/rel_3_25C_-21.mdinfo -ref umbrella_productions/rel_2_25C_-21.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-21.umbin -o umbrella_productions/prod_25C_4ns_-21.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-21.rst -r umbrella_productions/prod_25C_4ns_-21.rst -inf umbrella_productions/prod_25C_4ns_-21.mdinfo -x umbrella_productions/prod_25C_4ns_-21.nc -ref umbrella_productions/rel_3_25C_-21.rst 

#-22
pmemd -O -i umbrella_config/min_1_-22.umbin -o umbrella_productions/min_1_-22.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-21.rst -r umbrella_productions/min_1_-22.rst -inf umbrella_productions/min_1_-22.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-22.umbin -o umbrella_productions/rel_1_-22.out -p R2220A.prmtop -c umbrella_productions/min_1_-22.rst -r umbrella_productions/rel_1_-22.rst -inf umbrella_productions/rel_1_-22.mdinfo -ref umbrella_productions/min_1_-22.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-22.umbin -o umbrella_productions/rel_2_25C_-22.out -p R2220A.prmtop -c umbrella_productions/rel_1_-22.rst -r umbrella_productions/rel_2_25C_-22.rst -inf umbrella_productions/rel_2_25C_-22.mdinfo -ref umbrella_productions/rel_1_-22.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-22.umbin -o umbrella_productions/rel_3_25C_-22.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-22.rst -r umbrella_productions/rel_3_25C_-22.rst -inf umbrella_productions/rel_3_25C_-22.mdinfo -ref umbrella_productions/rel_2_25C_-22.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-22.umbin -o umbrella_productions/prod_25C_4ns_-22.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-22.rst -r umbrella_productions/prod_25C_4ns_-22.rst -inf umbrella_productions/prod_25C_4ns_-22.mdinfo -x umbrella_productions/prod_25C_4ns_-22.nc -ref umbrella_productions/rel_3_25C_-22.rst 

#-23
pmemd -O -i umbrella_config/min_1_-23.umbin -o umbrella_productions/min_1_-23.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-22.rst -r umbrella_productions/min_1_-23.rst -inf umbrella_productions/min_1_-23.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-23.umbin -o umbrella_productions/rel_1_-23.out -p R2220A.prmtop -c umbrella_productions/min_1_-23.rst -r umbrella_productions/rel_1_-23.rst -inf umbrella_productions/rel_1_-23.mdinfo -ref umbrella_productions/min_1_-23.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-23.umbin -o umbrella_productions/rel_2_25C_-23.out -p R2220A.prmtop -c umbrella_productions/rel_1_-23.rst -r umbrella_productions/rel_2_25C_-23.rst -inf umbrella_productions/rel_2_25C_-23.mdinfo -ref umbrella_productions/rel_1_-23.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-23.umbin -o umbrella_productions/rel_3_25C_-23.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-23.rst -r umbrella_productions/rel_3_25C_-23.rst -inf umbrella_productions/rel_3_25C_-23.mdinfo -ref umbrella_productions/rel_2_25C_-23.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-23.umbin -o umbrella_productions/prod_25C_4ns_-23.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-23.rst -r umbrella_productions/prod_25C_4ns_-23.rst -inf umbrella_productions/prod_25C_4ns_-23.mdinfo -x umbrella_productions/prod_25C_4ns_-23.nc -ref umbrella_productions/rel_3_25C_-23.rst 

#-24
pmemd -O -i umbrella_config/min_1_-24.umbin -o umbrella_productions/min_1_-24.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-23.rst -r umbrella_productions/min_1_-24.rst -inf umbrella_productions/min_1_-24.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-24.umbin -o umbrella_productions/rel_1_-24.out -p R2220A.prmtop -c umbrella_productions/min_1_-24.rst -r umbrella_productions/rel_1_-24.rst -inf umbrella_productions/rel_1_-24.mdinfo -ref umbrella_productions/min_1_-24.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-24.umbin -o umbrella_productions/rel_2_25C_-24.out -p R2220A.prmtop -c umbrella_productions/rel_1_-24.rst -r umbrella_productions/rel_2_25C_-24.rst -inf umbrella_productions/rel_2_25C_-24.mdinfo -ref umbrella_productions/rel_1_-24.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-24.umbin -o umbrella_productions/rel_3_25C_-24.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-24.rst -r umbrella_productions/rel_3_25C_-24.rst -inf umbrella_productions/rel_3_25C_-24.mdinfo -ref umbrella_productions/rel_2_25C_-24.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-24.umbin -o umbrella_productions/prod_25C_4ns_-24.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-24.rst -r umbrella_productions/prod_25C_4ns_-24.rst -inf umbrella_productions/prod_25C_4ns_-24.mdinfo -x umbrella_productions/prod_25C_4ns_-24.nc -ref umbrella_productions/rel_3_25C_-24.rst 

#-25
pmemd -O -i umbrella_config/min_1_-25.umbin -o umbrella_productions/min_1_-25.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-24.rst -r umbrella_productions/min_1_-25.rst -inf umbrella_productions/min_1_-25.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-25.umbin -o umbrella_productions/rel_1_-25.out -p R2220A.prmtop -c umbrella_productions/min_1_-25.rst -r umbrella_productions/rel_1_-25.rst -inf umbrella_productions/rel_1_-25.mdinfo -ref umbrella_productions/min_1_-25.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-25.umbin -o umbrella_productions/rel_2_25C_-25.out -p R2220A.prmtop -c umbrella_productions/rel_1_-25.rst -r umbrella_productions/rel_2_25C_-25.rst -inf umbrella_productions/rel_2_25C_-25.mdinfo -ref umbrella_productions/rel_1_-25.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-25.umbin -o umbrella_productions/rel_3_25C_-25.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-25.rst -r umbrella_productions/rel_3_25C_-25.rst -inf umbrella_productions/rel_3_25C_-25.mdinfo -ref umbrella_productions/rel_2_25C_-25.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-25.umbin -o umbrella_productions/prod_25C_4ns_-25.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-25.rst -r umbrella_productions/prod_25C_4ns_-25.rst -inf umbrella_productions/prod_25C_4ns_-25.mdinfo -x umbrella_productions/prod_25C_4ns_-25.nc -ref umbrella_productions/rel_3_25C_-25.rst 

#-26
pmemd -O -i umbrella_config/min_1_-26.umbin -o umbrella_productions/min_1_-26.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-25.rst -r umbrella_productions/min_1_-26.rst -inf umbrella_productions/min_1_-26.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-26.umbin -o umbrella_productions/rel_1_-26.out -p R2220A.prmtop -c umbrella_productions/min_1_-26.rst -r umbrella_productions/rel_1_-26.rst -inf umbrella_productions/rel_1_-26.mdinfo -ref umbrella_productions/min_1_-26.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-26.umbin -o umbrella_productions/rel_2_25C_-26.out -p R2220A.prmtop -c umbrella_productions/rel_1_-26.rst -r umbrella_productions/rel_2_25C_-26.rst -inf umbrella_productions/rel_2_25C_-26.mdinfo -ref umbrella_productions/rel_1_-26.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-26.umbin -o umbrella_productions/rel_3_25C_-26.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-26.rst -r umbrella_productions/rel_3_25C_-26.rst -inf umbrella_productions/rel_3_25C_-26.mdinfo -ref umbrella_productions/rel_2_25C_-26.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-26.umbin -o umbrella_productions/prod_25C_4ns_-26.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-26.rst -r umbrella_productions/prod_25C_4ns_-26.rst -inf umbrella_productions/prod_25C_4ns_-26.mdinfo -x umbrella_productions/prod_25C_4ns_-26.nc -ref umbrella_productions/rel_3_25C_-26.rst 

#-27
pmemd -O -i umbrella_config/min_1_-27.umbin -o umbrella_productions/min_1_-27.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-26.rst -r umbrella_productions/min_1_-27.rst -inf umbrella_productions/min_1_-27.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-27.umbin -o umbrella_productions/rel_1_-27.out -p R2220A.prmtop -c umbrella_productions/min_1_-27.rst -r umbrella_productions/rel_1_-27.rst -inf umbrella_productions/rel_1_-27.mdinfo -ref umbrella_productions/min_1_-27.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-27.umbin -o umbrella_productions/rel_2_25C_-27.out -p R2220A.prmtop -c umbrella_productions/rel_1_-27.rst -r umbrella_productions/rel_2_25C_-27.rst -inf umbrella_productions/rel_2_25C_-27.mdinfo -ref umbrella_productions/rel_1_-27.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-27.umbin -o umbrella_productions/rel_3_25C_-27.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-27.rst -r umbrella_productions/rel_3_25C_-27.rst -inf umbrella_productions/rel_3_25C_-27.mdinfo -ref umbrella_productions/rel_2_25C_-27.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-27.umbin -o umbrella_productions/prod_25C_4ns_-27.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-27.rst -r umbrella_productions/prod_25C_4ns_-27.rst -inf umbrella_productions/prod_25C_4ns_-27.mdinfo -x umbrella_productions/prod_25C_4ns_-27.nc -ref umbrella_productions/rel_3_25C_-27.rst 

#-28
pmemd -O -i umbrella_config/min_1_-28.umbin -o umbrella_productions/min_1_-28.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-27.rst -r umbrella_productions/min_1_-28.rst -inf umbrella_productions/min_1_-28.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-28.umbin -o umbrella_productions/rel_1_-28.out -p R2220A.prmtop -c umbrella_productions/min_1_-28.rst -r umbrella_productions/rel_1_-28.rst -inf umbrella_productions/rel_1_-28.mdinfo -ref umbrella_productions/min_1_-28.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-28.umbin -o umbrella_productions/rel_2_25C_-28.out -p R2220A.prmtop -c umbrella_productions/rel_1_-28.rst -r umbrella_productions/rel_2_25C_-28.rst -inf umbrella_productions/rel_2_25C_-28.mdinfo -ref umbrella_productions/rel_1_-28.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-28.umbin -o umbrella_productions/rel_3_25C_-28.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-28.rst -r umbrella_productions/rel_3_25C_-28.rst -inf umbrella_productions/rel_3_25C_-28.mdinfo -ref umbrella_productions/rel_2_25C_-28.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-28.umbin -o umbrella_productions/prod_25C_4ns_-28.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-28.rst -r umbrella_productions/prod_25C_4ns_-28.rst -inf umbrella_productions/prod_25C_4ns_-28.mdinfo -x umbrella_productions/prod_25C_4ns_-28.nc -ref umbrella_productions/rel_3_25C_-28.rst 

#-29
pmemd -O -i umbrella_config/min_1_-29.umbin -o umbrella_productions/min_1_-29.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-28.rst -r umbrella_productions/min_1_-29.rst -inf umbrella_productions/min_1_-29.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-29.umbin -o umbrella_productions/rel_1_-29.out -p R2220A.prmtop -c umbrella_productions/min_1_-29.rst -r umbrella_productions/rel_1_-29.rst -inf umbrella_productions/rel_1_-29.mdinfo -ref umbrella_productions/min_1_-29.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-29.umbin -o umbrella_productions/rel_2_25C_-29.out -p R2220A.prmtop -c umbrella_productions/rel_1_-29.rst -r umbrella_productions/rel_2_25C_-29.rst -inf umbrella_productions/rel_2_25C_-29.mdinfo -ref umbrella_productions/rel_1_-29.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-29.umbin -o umbrella_productions/rel_3_25C_-29.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-29.rst -r umbrella_productions/rel_3_25C_-29.rst -inf umbrella_productions/rel_3_25C_-29.mdinfo -ref umbrella_productions/rel_2_25C_-29.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-29.umbin -o umbrella_productions/prod_25C_4ns_-29.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-29.rst -r umbrella_productions/prod_25C_4ns_-29.rst -inf umbrella_productions/prod_25C_4ns_-29.mdinfo -x umbrella_productions/prod_25C_4ns_-29.nc -ref umbrella_productions/rel_3_25C_-29.rst 

#-30
pmemd -O -i umbrella_config/min_1_-30.umbin -o umbrella_productions/min_1_-30.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-29.rst -r umbrella_productions/min_1_-30.rst -inf umbrella_productions/min_1_-30.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-30.umbin -o umbrella_productions/rel_1_-30.out -p R2220A.prmtop -c umbrella_productions/min_1_-30.rst -r umbrella_productions/rel_1_-30.rst -inf umbrella_productions/rel_1_-30.mdinfo -ref umbrella_productions/min_1_-30.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-30.umbin -o umbrella_productions/rel_2_25C_-30.out -p R2220A.prmtop -c umbrella_productions/rel_1_-30.rst -r umbrella_productions/rel_2_25C_-30.rst -inf umbrella_productions/rel_2_25C_-30.mdinfo -ref umbrella_productions/rel_1_-30.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-30.umbin -o umbrella_productions/rel_3_25C_-30.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-30.rst -r umbrella_productions/rel_3_25C_-30.rst -inf umbrella_productions/rel_3_25C_-30.mdinfo -ref umbrella_productions/rel_2_25C_-30.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-30.umbin -o umbrella_productions/prod_25C_4ns_-30.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-30.rst -r umbrella_productions/prod_25C_4ns_-30.rst -inf umbrella_productions/prod_25C_4ns_-30.mdinfo -x umbrella_productions/prod_25C_4ns_-30.nc -ref umbrella_productions/rel_3_25C_-30.rst 

#-31
pmemd -O -i umbrella_config/min_1_-31.umbin -o umbrella_productions/min_1_-31.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-30.rst -r umbrella_productions/min_1_-31.rst -inf umbrella_productions/min_1_-31.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-31.umbin -o umbrella_productions/rel_1_-31.out -p R2220A.prmtop -c umbrella_productions/min_1_-31.rst -r umbrella_productions/rel_1_-31.rst -inf umbrella_productions/rel_1_-31.mdinfo -ref umbrella_productions/min_1_-31.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-31.umbin -o umbrella_productions/rel_2_25C_-31.out -p R2220A.prmtop -c umbrella_productions/rel_1_-31.rst -r umbrella_productions/rel_2_25C_-31.rst -inf umbrella_productions/rel_2_25C_-31.mdinfo -ref umbrella_productions/rel_1_-31.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-31.umbin -o umbrella_productions/rel_3_25C_-31.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-31.rst -r umbrella_productions/rel_3_25C_-31.rst -inf umbrella_productions/rel_3_25C_-31.mdinfo -ref umbrella_productions/rel_2_25C_-31.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-31.umbin -o umbrella_productions/prod_25C_4ns_-31.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-31.rst -r umbrella_productions/prod_25C_4ns_-31.rst -inf umbrella_productions/prod_25C_4ns_-31.mdinfo -x umbrella_productions/prod_25C_4ns_-31.nc -ref umbrella_productions/rel_3_25C_-31.rst 

#-32
pmemd -O -i umbrella_config/min_1_-32.umbin -o umbrella_productions/min_1_-32.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-31.rst -r umbrella_productions/min_1_-32.rst -inf umbrella_productions/min_1_-32.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-32.umbin -o umbrella_productions/rel_1_-32.out -p R2220A.prmtop -c umbrella_productions/min_1_-32.rst -r umbrella_productions/rel_1_-32.rst -inf umbrella_productions/rel_1_-32.mdinfo -ref umbrella_productions/min_1_-32.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-32.umbin -o umbrella_productions/rel_2_25C_-32.out -p R2220A.prmtop -c umbrella_productions/rel_1_-32.rst -r umbrella_productions/rel_2_25C_-32.rst -inf umbrella_productions/rel_2_25C_-32.mdinfo -ref umbrella_productions/rel_1_-32.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-32.umbin -o umbrella_productions/rel_3_25C_-32.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-32.rst -r umbrella_productions/rel_3_25C_-32.rst -inf umbrella_productions/rel_3_25C_-32.mdinfo -ref umbrella_productions/rel_2_25C_-32.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-32.umbin -o umbrella_productions/prod_25C_4ns_-32.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-32.rst -r umbrella_productions/prod_25C_4ns_-32.rst -inf umbrella_productions/prod_25C_4ns_-32.mdinfo -x umbrella_productions/prod_25C_4ns_-32.nc -ref umbrella_productions/rel_3_25C_-32.rst 

#-33
pmemd -O -i umbrella_config/min_1_-33.umbin -o umbrella_productions/min_1_-33.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-32.rst -r umbrella_productions/min_1_-33.rst -inf umbrella_productions/min_1_-33.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-33.umbin -o umbrella_productions/rel_1_-33.out -p R2220A.prmtop -c umbrella_productions/min_1_-33.rst -r umbrella_productions/rel_1_-33.rst -inf umbrella_productions/rel_1_-33.mdinfo -ref umbrella_productions/min_1_-33.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-33.umbin -o umbrella_productions/rel_2_25C_-33.out -p R2220A.prmtop -c umbrella_productions/rel_1_-33.rst -r umbrella_productions/rel_2_25C_-33.rst -inf umbrella_productions/rel_2_25C_-33.mdinfo -ref umbrella_productions/rel_1_-33.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-33.umbin -o umbrella_productions/rel_3_25C_-33.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-33.rst -r umbrella_productions/rel_3_25C_-33.rst -inf umbrella_productions/rel_3_25C_-33.mdinfo -ref umbrella_productions/rel_2_25C_-33.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-33.umbin -o umbrella_productions/prod_25C_4ns_-33.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-33.rst -r umbrella_productions/prod_25C_4ns_-33.rst -inf umbrella_productions/prod_25C_4ns_-33.mdinfo -x umbrella_productions/prod_25C_4ns_-33.nc -ref umbrella_productions/rel_3_25C_-33.rst 

#-34
pmemd -O -i umbrella_config/min_1_-34.umbin -o umbrella_productions/min_1_-34.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-33.rst -r umbrella_productions/min_1_-34.rst -inf umbrella_productions/min_1_-34.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-34.umbin -o umbrella_productions/rel_1_-34.out -p R2220A.prmtop -c umbrella_productions/min_1_-34.rst -r umbrella_productions/rel_1_-34.rst -inf umbrella_productions/rel_1_-34.mdinfo -ref umbrella_productions/min_1_-34.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-34.umbin -o umbrella_productions/rel_2_25C_-34.out -p R2220A.prmtop -c umbrella_productions/rel_1_-34.rst -r umbrella_productions/rel_2_25C_-34.rst -inf umbrella_productions/rel_2_25C_-34.mdinfo -ref umbrella_productions/rel_1_-34.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-34.umbin -o umbrella_productions/rel_3_25C_-34.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-34.rst -r umbrella_productions/rel_3_25C_-34.rst -inf umbrella_productions/rel_3_25C_-34.mdinfo -ref umbrella_productions/rel_2_25C_-34.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-34.umbin -o umbrella_productions/prod_25C_4ns_-34.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-34.rst -r umbrella_productions/prod_25C_4ns_-34.rst -inf umbrella_productions/prod_25C_4ns_-34.mdinfo -x umbrella_productions/prod_25C_4ns_-34.nc -ref umbrella_productions/rel_3_25C_-34.rst 

#-35
pmemd -O -i umbrella_config/min_1_-35.umbin -o umbrella_productions/min_1_-35.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-34.rst -r umbrella_productions/min_1_-35.rst -inf umbrella_productions/min_1_-35.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-35.umbin -o umbrella_productions/rel_1_-35.out -p R2220A.prmtop -c umbrella_productions/min_1_-35.rst -r umbrella_productions/rel_1_-35.rst -inf umbrella_productions/rel_1_-35.mdinfo -ref umbrella_productions/min_1_-35.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-35.umbin -o umbrella_productions/rel_2_25C_-35.out -p R2220A.prmtop -c umbrella_productions/rel_1_-35.rst -r umbrella_productions/rel_2_25C_-35.rst -inf umbrella_productions/rel_2_25C_-35.mdinfo -ref umbrella_productions/rel_1_-35.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-35.umbin -o umbrella_productions/rel_3_25C_-35.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-35.rst -r umbrella_productions/rel_3_25C_-35.rst -inf umbrella_productions/rel_3_25C_-35.mdinfo -ref umbrella_productions/rel_2_25C_-35.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-35.umbin -o umbrella_productions/prod_25C_4ns_-35.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-35.rst -r umbrella_productions/prod_25C_4ns_-35.rst -inf umbrella_productions/prod_25C_4ns_-35.mdinfo -x umbrella_productions/prod_25C_4ns_-35.nc -ref umbrella_productions/rel_3_25C_-35.rst 

#-36
pmemd -O -i umbrella_config/min_1_-36.umbin -o umbrella_productions/min_1_-36.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-35.rst -r umbrella_productions/min_1_-36.rst -inf umbrella_productions/min_1_-36.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-36.umbin -o umbrella_productions/rel_1_-36.out -p R2220A.prmtop -c umbrella_productions/min_1_-36.rst -r umbrella_productions/rel_1_-36.rst -inf umbrella_productions/rel_1_-36.mdinfo -ref umbrella_productions/min_1_-36.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-36.umbin -o umbrella_productions/rel_2_25C_-36.out -p R2220A.prmtop -c umbrella_productions/rel_1_-36.rst -r umbrella_productions/rel_2_25C_-36.rst -inf umbrella_productions/rel_2_25C_-36.mdinfo -ref umbrella_productions/rel_1_-36.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-36.umbin -o umbrella_productions/rel_3_25C_-36.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-36.rst -r umbrella_productions/rel_3_25C_-36.rst -inf umbrella_productions/rel_3_25C_-36.mdinfo -ref umbrella_productions/rel_2_25C_-36.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-36.umbin -o umbrella_productions/prod_25C_4ns_-36.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-36.rst -r umbrella_productions/prod_25C_4ns_-36.rst -inf umbrella_productions/prod_25C_4ns_-36.mdinfo -x umbrella_productions/prod_25C_4ns_-36.nc -ref umbrella_productions/rel_3_25C_-36.rst 

#-37
pmemd -O -i umbrella_config/min_1_-37.umbin -o umbrella_productions/min_1_-37.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-36.rst -r umbrella_productions/min_1_-37.rst -inf umbrella_productions/min_1_-37.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-37.umbin -o umbrella_productions/rel_1_-37.out -p R2220A.prmtop -c umbrella_productions/min_1_-37.rst -r umbrella_productions/rel_1_-37.rst -inf umbrella_productions/rel_1_-37.mdinfo -ref umbrella_productions/min_1_-37.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-37.umbin -o umbrella_productions/rel_2_25C_-37.out -p R2220A.prmtop -c umbrella_productions/rel_1_-37.rst -r umbrella_productions/rel_2_25C_-37.rst -inf umbrella_productions/rel_2_25C_-37.mdinfo -ref umbrella_productions/rel_1_-37.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-37.umbin -o umbrella_productions/rel_3_25C_-37.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-37.rst -r umbrella_productions/rel_3_25C_-37.rst -inf umbrella_productions/rel_3_25C_-37.mdinfo -ref umbrella_productions/rel_2_25C_-37.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-37.umbin -o umbrella_productions/prod_25C_4ns_-37.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-37.rst -r umbrella_productions/prod_25C_4ns_-37.rst -inf umbrella_productions/prod_25C_4ns_-37.mdinfo -x umbrella_productions/prod_25C_4ns_-37.nc -ref umbrella_productions/rel_3_25C_-37.rst 

#-38
pmemd -O -i umbrella_config/min_1_-38.umbin -o umbrella_productions/min_1_-38.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-37.rst -r umbrella_productions/min_1_-38.rst -inf umbrella_productions/min_1_-38.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-38.umbin -o umbrella_productions/rel_1_-38.out -p R2220A.prmtop -c umbrella_productions/min_1_-38.rst -r umbrella_productions/rel_1_-38.rst -inf umbrella_productions/rel_1_-38.mdinfo -ref umbrella_productions/min_1_-38.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-38.umbin -o umbrella_productions/rel_2_25C_-38.out -p R2220A.prmtop -c umbrella_productions/rel_1_-38.rst -r umbrella_productions/rel_2_25C_-38.rst -inf umbrella_productions/rel_2_25C_-38.mdinfo -ref umbrella_productions/rel_1_-38.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-38.umbin -o umbrella_productions/rel_3_25C_-38.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-38.rst -r umbrella_productions/rel_3_25C_-38.rst -inf umbrella_productions/rel_3_25C_-38.mdinfo -ref umbrella_productions/rel_2_25C_-38.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-38.umbin -o umbrella_productions/prod_25C_4ns_-38.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-38.rst -r umbrella_productions/prod_25C_4ns_-38.rst -inf umbrella_productions/prod_25C_4ns_-38.mdinfo -x umbrella_productions/prod_25C_4ns_-38.nc -ref umbrella_productions/rel_3_25C_-38.rst 

#-39
pmemd -O -i umbrella_config/min_1_-39.umbin -o umbrella_productions/min_1_-39.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-38.rst -r umbrella_productions/min_1_-39.rst -inf umbrella_productions/min_1_-39.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-39.umbin -o umbrella_productions/rel_1_-39.out -p R2220A.prmtop -c umbrella_productions/min_1_-39.rst -r umbrella_productions/rel_1_-39.rst -inf umbrella_productions/rel_1_-39.mdinfo -ref umbrella_productions/min_1_-39.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-39.umbin -o umbrella_productions/rel_2_25C_-39.out -p R2220A.prmtop -c umbrella_productions/rel_1_-39.rst -r umbrella_productions/rel_2_25C_-39.rst -inf umbrella_productions/rel_2_25C_-39.mdinfo -ref umbrella_productions/rel_1_-39.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-39.umbin -o umbrella_productions/rel_3_25C_-39.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-39.rst -r umbrella_productions/rel_3_25C_-39.rst -inf umbrella_productions/rel_3_25C_-39.mdinfo -ref umbrella_productions/rel_2_25C_-39.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-39.umbin -o umbrella_productions/prod_25C_4ns_-39.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-39.rst -r umbrella_productions/prod_25C_4ns_-39.rst -inf umbrella_productions/prod_25C_4ns_-39.mdinfo -x umbrella_productions/prod_25C_4ns_-39.nc -ref umbrella_productions/rel_3_25C_-39.rst 

#-40
pmemd -O -i umbrella_config/min_1_-40.umbin -o umbrella_productions/min_1_-40.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-39.rst -r umbrella_productions/min_1_-40.rst -inf umbrella_productions/min_1_-40.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-40.umbin -o umbrella_productions/rel_1_-40.out -p R2220A.prmtop -c umbrella_productions/min_1_-40.rst -r umbrella_productions/rel_1_-40.rst -inf umbrella_productions/rel_1_-40.mdinfo -ref umbrella_productions/min_1_-40.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-40.umbin -o umbrella_productions/rel_2_25C_-40.out -p R2220A.prmtop -c umbrella_productions/rel_1_-40.rst -r umbrella_productions/rel_2_25C_-40.rst -inf umbrella_productions/rel_2_25C_-40.mdinfo -ref umbrella_productions/rel_1_-40.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-40.umbin -o umbrella_productions/rel_3_25C_-40.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-40.rst -r umbrella_productions/rel_3_25C_-40.rst -inf umbrella_productions/rel_3_25C_-40.mdinfo -ref umbrella_productions/rel_2_25C_-40.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-40.umbin -o umbrella_productions/prod_25C_4ns_-40.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-40.rst -r umbrella_productions/prod_25C_4ns_-40.rst -inf umbrella_productions/prod_25C_4ns_-40.mdinfo -x umbrella_productions/prod_25C_4ns_-40.nc -ref umbrella_productions/rel_3_25C_-40.rst 

#-41
pmemd -O -i umbrella_config/min_1_-41.umbin -o umbrella_productions/min_1_-41.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-40.rst -r umbrella_productions/min_1_-41.rst -inf umbrella_productions/min_1_-41.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-41.umbin -o umbrella_productions/rel_1_-41.out -p R2220A.prmtop -c umbrella_productions/min_1_-41.rst -r umbrella_productions/rel_1_-41.rst -inf umbrella_productions/rel_1_-41.mdinfo -ref umbrella_productions/min_1_-41.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-41.umbin -o umbrella_productions/rel_2_25C_-41.out -p R2220A.prmtop -c umbrella_productions/rel_1_-41.rst -r umbrella_productions/rel_2_25C_-41.rst -inf umbrella_productions/rel_2_25C_-41.mdinfo -ref umbrella_productions/rel_1_-41.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-41.umbin -o umbrella_productions/rel_3_25C_-41.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-41.rst -r umbrella_productions/rel_3_25C_-41.rst -inf umbrella_productions/rel_3_25C_-41.mdinfo -ref umbrella_productions/rel_2_25C_-41.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-41.umbin -o umbrella_productions/prod_25C_4ns_-41.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-41.rst -r umbrella_productions/prod_25C_4ns_-41.rst -inf umbrella_productions/prod_25C_4ns_-41.mdinfo -x umbrella_productions/prod_25C_4ns_-41.nc -ref umbrella_productions/rel_3_25C_-41.rst 

#-42
pmemd -O -i umbrella_config/min_1_-42.umbin -o umbrella_productions/min_1_-42.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-41.rst -r umbrella_productions/min_1_-42.rst -inf umbrella_productions/min_1_-42.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-42.umbin -o umbrella_productions/rel_1_-42.out -p R2220A.prmtop -c umbrella_productions/min_1_-42.rst -r umbrella_productions/rel_1_-42.rst -inf umbrella_productions/rel_1_-42.mdinfo -ref umbrella_productions/min_1_-42.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-42.umbin -o umbrella_productions/rel_2_25C_-42.out -p R2220A.prmtop -c umbrella_productions/rel_1_-42.rst -r umbrella_productions/rel_2_25C_-42.rst -inf umbrella_productions/rel_2_25C_-42.mdinfo -ref umbrella_productions/rel_1_-42.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-42.umbin -o umbrella_productions/rel_3_25C_-42.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-42.rst -r umbrella_productions/rel_3_25C_-42.rst -inf umbrella_productions/rel_3_25C_-42.mdinfo -ref umbrella_productions/rel_2_25C_-42.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-42.umbin -o umbrella_productions/prod_25C_4ns_-42.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-42.rst -r umbrella_productions/prod_25C_4ns_-42.rst -inf umbrella_productions/prod_25C_4ns_-42.mdinfo -x umbrella_productions/prod_25C_4ns_-42.nc -ref umbrella_productions/rel_3_25C_-42.rst 

#-43
pmemd -O -i umbrella_config/min_1_-43.umbin -o umbrella_productions/min_1_-43.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-42.rst -r umbrella_productions/min_1_-43.rst -inf umbrella_productions/min_1_-43.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-43.umbin -o umbrella_productions/rel_1_-43.out -p R2220A.prmtop -c umbrella_productions/min_1_-43.rst -r umbrella_productions/rel_1_-43.rst -inf umbrella_productions/rel_1_-43.mdinfo -ref umbrella_productions/min_1_-43.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-43.umbin -o umbrella_productions/rel_2_25C_-43.out -p R2220A.prmtop -c umbrella_productions/rel_1_-43.rst -r umbrella_productions/rel_2_25C_-43.rst -inf umbrella_productions/rel_2_25C_-43.mdinfo -ref umbrella_productions/rel_1_-43.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-43.umbin -o umbrella_productions/rel_3_25C_-43.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-43.rst -r umbrella_productions/rel_3_25C_-43.rst -inf umbrella_productions/rel_3_25C_-43.mdinfo -ref umbrella_productions/rel_2_25C_-43.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-43.umbin -o umbrella_productions/prod_25C_4ns_-43.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-43.rst -r umbrella_productions/prod_25C_4ns_-43.rst -inf umbrella_productions/prod_25C_4ns_-43.mdinfo -x umbrella_productions/prod_25C_4ns_-43.nc -ref umbrella_productions/rel_3_25C_-43.rst 

#-44
pmemd -O -i umbrella_config/min_1_-44.umbin -o umbrella_productions/min_1_-44.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-43.rst -r umbrella_productions/min_1_-44.rst -inf umbrella_productions/min_1_-44.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-44.umbin -o umbrella_productions/rel_1_-44.out -p R2220A.prmtop -c umbrella_productions/min_1_-44.rst -r umbrella_productions/rel_1_-44.rst -inf umbrella_productions/rel_1_-44.mdinfo -ref umbrella_productions/min_1_-44.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-44.umbin -o umbrella_productions/rel_2_25C_-44.out -p R2220A.prmtop -c umbrella_productions/rel_1_-44.rst -r umbrella_productions/rel_2_25C_-44.rst -inf umbrella_productions/rel_2_25C_-44.mdinfo -ref umbrella_productions/rel_1_-44.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-44.umbin -o umbrella_productions/rel_3_25C_-44.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-44.rst -r umbrella_productions/rel_3_25C_-44.rst -inf umbrella_productions/rel_3_25C_-44.mdinfo -ref umbrella_productions/rel_2_25C_-44.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-44.umbin -o umbrella_productions/prod_25C_4ns_-44.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-44.rst -r umbrella_productions/prod_25C_4ns_-44.rst -inf umbrella_productions/prod_25C_4ns_-44.mdinfo -x umbrella_productions/prod_25C_4ns_-44.nc -ref umbrella_productions/rel_3_25C_-44.rst 

#-45
pmemd -O -i umbrella_config/min_1_-45.umbin -o umbrella_productions/min_1_-45.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-44.rst -r umbrella_productions/min_1_-45.rst -inf umbrella_productions/min_1_-45.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-45.umbin -o umbrella_productions/rel_1_-45.out -p R2220A.prmtop -c umbrella_productions/min_1_-45.rst -r umbrella_productions/rel_1_-45.rst -inf umbrella_productions/rel_1_-45.mdinfo -ref umbrella_productions/min_1_-45.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-45.umbin -o umbrella_productions/rel_2_25C_-45.out -p R2220A.prmtop -c umbrella_productions/rel_1_-45.rst -r umbrella_productions/rel_2_25C_-45.rst -inf umbrella_productions/rel_2_25C_-45.mdinfo -ref umbrella_productions/rel_1_-45.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-45.umbin -o umbrella_productions/rel_3_25C_-45.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-45.rst -r umbrella_productions/rel_3_25C_-45.rst -inf umbrella_productions/rel_3_25C_-45.mdinfo -ref umbrella_productions/rel_2_25C_-45.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-45.umbin -o umbrella_productions/prod_25C_4ns_-45.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-45.rst -r umbrella_productions/prod_25C_4ns_-45.rst -inf umbrella_productions/prod_25C_4ns_-45.mdinfo -x umbrella_productions/prod_25C_4ns_-45.nc -ref umbrella_productions/rel_3_25C_-45.rst 

#-46
pmemd -O -i umbrella_config/min_1_-46.umbin -o umbrella_productions/min_1_-46.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-45.rst -r umbrella_productions/min_1_-46.rst -inf umbrella_productions/min_1_-46.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-46.umbin -o umbrella_productions/rel_1_-46.out -p R2220A.prmtop -c umbrella_productions/min_1_-46.rst -r umbrella_productions/rel_1_-46.rst -inf umbrella_productions/rel_1_-46.mdinfo -ref umbrella_productions/min_1_-46.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-46.umbin -o umbrella_productions/rel_2_25C_-46.out -p R2220A.prmtop -c umbrella_productions/rel_1_-46.rst -r umbrella_productions/rel_2_25C_-46.rst -inf umbrella_productions/rel_2_25C_-46.mdinfo -ref umbrella_productions/rel_1_-46.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-46.umbin -o umbrella_productions/rel_3_25C_-46.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-46.rst -r umbrella_productions/rel_3_25C_-46.rst -inf umbrella_productions/rel_3_25C_-46.mdinfo -ref umbrella_productions/rel_2_25C_-46.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-46.umbin -o umbrella_productions/prod_25C_4ns_-46.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-46.rst -r umbrella_productions/prod_25C_4ns_-46.rst -inf umbrella_productions/prod_25C_4ns_-46.mdinfo -x umbrella_productions/prod_25C_4ns_-46.nc -ref umbrella_productions/rel_3_25C_-46.rst 

#-47
pmemd -O -i umbrella_config/min_1_-47.umbin -o umbrella_productions/min_1_-47.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-46.rst -r umbrella_productions/min_1_-47.rst -inf umbrella_productions/min_1_-47.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-47.umbin -o umbrella_productions/rel_1_-47.out -p R2220A.prmtop -c umbrella_productions/min_1_-47.rst -r umbrella_productions/rel_1_-47.rst -inf umbrella_productions/rel_1_-47.mdinfo -ref umbrella_productions/min_1_-47.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-47.umbin -o umbrella_productions/rel_2_25C_-47.out -p R2220A.prmtop -c umbrella_productions/rel_1_-47.rst -r umbrella_productions/rel_2_25C_-47.rst -inf umbrella_productions/rel_2_25C_-47.mdinfo -ref umbrella_productions/rel_1_-47.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-47.umbin -o umbrella_productions/rel_3_25C_-47.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-47.rst -r umbrella_productions/rel_3_25C_-47.rst -inf umbrella_productions/rel_3_25C_-47.mdinfo -ref umbrella_productions/rel_2_25C_-47.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-47.umbin -o umbrella_productions/prod_25C_4ns_-47.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-47.rst -r umbrella_productions/prod_25C_4ns_-47.rst -inf umbrella_productions/prod_25C_4ns_-47.mdinfo -x umbrella_productions/prod_25C_4ns_-47.nc -ref umbrella_productions/rel_3_25C_-47.rst 

#-48
pmemd -O -i umbrella_config/min_1_-48.umbin -o umbrella_productions/min_1_-48.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-47.rst -r umbrella_productions/min_1_-48.rst -inf umbrella_productions/min_1_-48.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-48.umbin -o umbrella_productions/rel_1_-48.out -p R2220A.prmtop -c umbrella_productions/min_1_-48.rst -r umbrella_productions/rel_1_-48.rst -inf umbrella_productions/rel_1_-48.mdinfo -ref umbrella_productions/min_1_-48.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-48.umbin -o umbrella_productions/rel_2_25C_-48.out -p R2220A.prmtop -c umbrella_productions/rel_1_-48.rst -r umbrella_productions/rel_2_25C_-48.rst -inf umbrella_productions/rel_2_25C_-48.mdinfo -ref umbrella_productions/rel_1_-48.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-48.umbin -o umbrella_productions/rel_3_25C_-48.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-48.rst -r umbrella_productions/rel_3_25C_-48.rst -inf umbrella_productions/rel_3_25C_-48.mdinfo -ref umbrella_productions/rel_2_25C_-48.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-48.umbin -o umbrella_productions/prod_25C_4ns_-48.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-48.rst -r umbrella_productions/prod_25C_4ns_-48.rst -inf umbrella_productions/prod_25C_4ns_-48.mdinfo -x umbrella_productions/prod_25C_4ns_-48.nc -ref umbrella_productions/rel_3_25C_-48.rst 

#-49
pmemd -O -i umbrella_config/min_1_-49.umbin -o umbrella_productions/min_1_-49.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-48.rst -r umbrella_productions/min_1_-49.rst -inf umbrella_productions/min_1_-49.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-49.umbin -o umbrella_productions/rel_1_-49.out -p R2220A.prmtop -c umbrella_productions/min_1_-49.rst -r umbrella_productions/rel_1_-49.rst -inf umbrella_productions/rel_1_-49.mdinfo -ref umbrella_productions/min_1_-49.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-49.umbin -o umbrella_productions/rel_2_25C_-49.out -p R2220A.prmtop -c umbrella_productions/rel_1_-49.rst -r umbrella_productions/rel_2_25C_-49.rst -inf umbrella_productions/rel_2_25C_-49.mdinfo -ref umbrella_productions/rel_1_-49.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-49.umbin -o umbrella_productions/rel_3_25C_-49.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-49.rst -r umbrella_productions/rel_3_25C_-49.rst -inf umbrella_productions/rel_3_25C_-49.mdinfo -ref umbrella_productions/rel_2_25C_-49.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-49.umbin -o umbrella_productions/prod_25C_4ns_-49.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-49.rst -r umbrella_productions/prod_25C_4ns_-49.rst -inf umbrella_productions/prod_25C_4ns_-49.mdinfo -x umbrella_productions/prod_25C_4ns_-49.nc -ref umbrella_productions/rel_3_25C_-49.rst 

#-50
pmemd -O -i umbrella_config/min_1_-50.umbin -o umbrella_productions/min_1_-50.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-49.rst -r umbrella_productions/min_1_-50.rst -inf umbrella_productions/min_1_-50.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-50.umbin -o umbrella_productions/rel_1_-50.out -p R2220A.prmtop -c umbrella_productions/min_1_-50.rst -r umbrella_productions/rel_1_-50.rst -inf umbrella_productions/rel_1_-50.mdinfo -ref umbrella_productions/min_1_-50.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-50.umbin -o umbrella_productions/rel_2_25C_-50.out -p R2220A.prmtop -c umbrella_productions/rel_1_-50.rst -r umbrella_productions/rel_2_25C_-50.rst -inf umbrella_productions/rel_2_25C_-50.mdinfo -ref umbrella_productions/rel_1_-50.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-50.umbin -o umbrella_productions/rel_3_25C_-50.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-50.rst -r umbrella_productions/rel_3_25C_-50.rst -inf umbrella_productions/rel_3_25C_-50.mdinfo -ref umbrella_productions/rel_2_25C_-50.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-50.umbin -o umbrella_productions/prod_25C_4ns_-50.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-50.rst -r umbrella_productions/prod_25C_4ns_-50.rst -inf umbrella_productions/prod_25C_4ns_-50.mdinfo -x umbrella_productions/prod_25C_4ns_-50.nc -ref umbrella_productions/rel_3_25C_-50.rst 

#-51
pmemd -O -i umbrella_config/min_1_-51.umbin -o umbrella_productions/min_1_-51.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-50.rst -r umbrella_productions/min_1_-51.rst -inf umbrella_productions/min_1_-51.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-51.umbin -o umbrella_productions/rel_1_-51.out -p R2220A.prmtop -c umbrella_productions/min_1_-51.rst -r umbrella_productions/rel_1_-51.rst -inf umbrella_productions/rel_1_-51.mdinfo -ref umbrella_productions/min_1_-51.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-51.umbin -o umbrella_productions/rel_2_25C_-51.out -p R2220A.prmtop -c umbrella_productions/rel_1_-51.rst -r umbrella_productions/rel_2_25C_-51.rst -inf umbrella_productions/rel_2_25C_-51.mdinfo -ref umbrella_productions/rel_1_-51.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-51.umbin -o umbrella_productions/rel_3_25C_-51.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-51.rst -r umbrella_productions/rel_3_25C_-51.rst -inf umbrella_productions/rel_3_25C_-51.mdinfo -ref umbrella_productions/rel_2_25C_-51.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-51.umbin -o umbrella_productions/prod_25C_4ns_-51.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-51.rst -r umbrella_productions/prod_25C_4ns_-51.rst -inf umbrella_productions/prod_25C_4ns_-51.mdinfo -x umbrella_productions/prod_25C_4ns_-51.nc -ref umbrella_productions/rel_3_25C_-51.rst 

#-52
pmemd -O -i umbrella_config/min_1_-52.umbin -o umbrella_productions/min_1_-52.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-51.rst -r umbrella_productions/min_1_-52.rst -inf umbrella_productions/min_1_-52.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-52.umbin -o umbrella_productions/rel_1_-52.out -p R2220A.prmtop -c umbrella_productions/min_1_-52.rst -r umbrella_productions/rel_1_-52.rst -inf umbrella_productions/rel_1_-52.mdinfo -ref umbrella_productions/min_1_-52.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-52.umbin -o umbrella_productions/rel_2_25C_-52.out -p R2220A.prmtop -c umbrella_productions/rel_1_-52.rst -r umbrella_productions/rel_2_25C_-52.rst -inf umbrella_productions/rel_2_25C_-52.mdinfo -ref umbrella_productions/rel_1_-52.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-52.umbin -o umbrella_productions/rel_3_25C_-52.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-52.rst -r umbrella_productions/rel_3_25C_-52.rst -inf umbrella_productions/rel_3_25C_-52.mdinfo -ref umbrella_productions/rel_2_25C_-52.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-52.umbin -o umbrella_productions/prod_25C_4ns_-52.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-52.rst -r umbrella_productions/prod_25C_4ns_-52.rst -inf umbrella_productions/prod_25C_4ns_-52.mdinfo -x umbrella_productions/prod_25C_4ns_-52.nc -ref umbrella_productions/rel_3_25C_-52.rst 

#-53
pmemd -O -i umbrella_config/min_1_-53.umbin -o umbrella_productions/min_1_-53.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-52.rst -r umbrella_productions/min_1_-53.rst -inf umbrella_productions/min_1_-53.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-53.umbin -o umbrella_productions/rel_1_-53.out -p R2220A.prmtop -c umbrella_productions/min_1_-53.rst -r umbrella_productions/rel_1_-53.rst -inf umbrella_productions/rel_1_-53.mdinfo -ref umbrella_productions/min_1_-53.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-53.umbin -o umbrella_productions/rel_2_25C_-53.out -p R2220A.prmtop -c umbrella_productions/rel_1_-53.rst -r umbrella_productions/rel_2_25C_-53.rst -inf umbrella_productions/rel_2_25C_-53.mdinfo -ref umbrella_productions/rel_1_-53.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-53.umbin -o umbrella_productions/rel_3_25C_-53.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-53.rst -r umbrella_productions/rel_3_25C_-53.rst -inf umbrella_productions/rel_3_25C_-53.mdinfo -ref umbrella_productions/rel_2_25C_-53.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-53.umbin -o umbrella_productions/prod_25C_4ns_-53.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-53.rst -r umbrella_productions/prod_25C_4ns_-53.rst -inf umbrella_productions/prod_25C_4ns_-53.mdinfo -x umbrella_productions/prod_25C_4ns_-53.nc -ref umbrella_productions/rel_3_25C_-53.rst 

#-54
pmemd -O -i umbrella_config/min_1_-54.umbin -o umbrella_productions/min_1_-54.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-53.rst -r umbrella_productions/min_1_-54.rst -inf umbrella_productions/min_1_-54.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-54.umbin -o umbrella_productions/rel_1_-54.out -p R2220A.prmtop -c umbrella_productions/min_1_-54.rst -r umbrella_productions/rel_1_-54.rst -inf umbrella_productions/rel_1_-54.mdinfo -ref umbrella_productions/min_1_-54.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-54.umbin -o umbrella_productions/rel_2_25C_-54.out -p R2220A.prmtop -c umbrella_productions/rel_1_-54.rst -r umbrella_productions/rel_2_25C_-54.rst -inf umbrella_productions/rel_2_25C_-54.mdinfo -ref umbrella_productions/rel_1_-54.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-54.umbin -o umbrella_productions/rel_3_25C_-54.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-54.rst -r umbrella_productions/rel_3_25C_-54.rst -inf umbrella_productions/rel_3_25C_-54.mdinfo -ref umbrella_productions/rel_2_25C_-54.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-54.umbin -o umbrella_productions/prod_25C_4ns_-54.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-54.rst -r umbrella_productions/prod_25C_4ns_-54.rst -inf umbrella_productions/prod_25C_4ns_-54.mdinfo -x umbrella_productions/prod_25C_4ns_-54.nc -ref umbrella_productions/rel_3_25C_-54.rst 

#-55
pmemd -O -i umbrella_config/min_1_-55.umbin -o umbrella_productions/min_1_-55.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-54.rst -r umbrella_productions/min_1_-55.rst -inf umbrella_productions/min_1_-55.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-55.umbin -o umbrella_productions/rel_1_-55.out -p R2220A.prmtop -c umbrella_productions/min_1_-55.rst -r umbrella_productions/rel_1_-55.rst -inf umbrella_productions/rel_1_-55.mdinfo -ref umbrella_productions/min_1_-55.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-55.umbin -o umbrella_productions/rel_2_25C_-55.out -p R2220A.prmtop -c umbrella_productions/rel_1_-55.rst -r umbrella_productions/rel_2_25C_-55.rst -inf umbrella_productions/rel_2_25C_-55.mdinfo -ref umbrella_productions/rel_1_-55.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-55.umbin -o umbrella_productions/rel_3_25C_-55.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-55.rst -r umbrella_productions/rel_3_25C_-55.rst -inf umbrella_productions/rel_3_25C_-55.mdinfo -ref umbrella_productions/rel_2_25C_-55.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-55.umbin -o umbrella_productions/prod_25C_4ns_-55.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-55.rst -r umbrella_productions/prod_25C_4ns_-55.rst -inf umbrella_productions/prod_25C_4ns_-55.mdinfo -x umbrella_productions/prod_25C_4ns_-55.nc -ref umbrella_productions/rel_3_25C_-55.rst 

#-56
pmemd -O -i umbrella_config/min_1_-56.umbin -o umbrella_productions/min_1_-56.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-55.rst -r umbrella_productions/min_1_-56.rst -inf umbrella_productions/min_1_-56.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-56.umbin -o umbrella_productions/rel_1_-56.out -p R2220A.prmtop -c umbrella_productions/min_1_-56.rst -r umbrella_productions/rel_1_-56.rst -inf umbrella_productions/rel_1_-56.mdinfo -ref umbrella_productions/min_1_-56.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-56.umbin -o umbrella_productions/rel_2_25C_-56.out -p R2220A.prmtop -c umbrella_productions/rel_1_-56.rst -r umbrella_productions/rel_2_25C_-56.rst -inf umbrella_productions/rel_2_25C_-56.mdinfo -ref umbrella_productions/rel_1_-56.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-56.umbin -o umbrella_productions/rel_3_25C_-56.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-56.rst -r umbrella_productions/rel_3_25C_-56.rst -inf umbrella_productions/rel_3_25C_-56.mdinfo -ref umbrella_productions/rel_2_25C_-56.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-56.umbin -o umbrella_productions/prod_25C_4ns_-56.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-56.rst -r umbrella_productions/prod_25C_4ns_-56.rst -inf umbrella_productions/prod_25C_4ns_-56.mdinfo -x umbrella_productions/prod_25C_4ns_-56.nc -ref umbrella_productions/rel_3_25C_-56.rst 

#-57
pmemd -O -i umbrella_config/min_1_-57.umbin -o umbrella_productions/min_1_-57.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-56.rst -r umbrella_productions/min_1_-57.rst -inf umbrella_productions/min_1_-57.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-57.umbin -o umbrella_productions/rel_1_-57.out -p R2220A.prmtop -c umbrella_productions/min_1_-57.rst -r umbrella_productions/rel_1_-57.rst -inf umbrella_productions/rel_1_-57.mdinfo -ref umbrella_productions/min_1_-57.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-57.umbin -o umbrella_productions/rel_2_25C_-57.out -p R2220A.prmtop -c umbrella_productions/rel_1_-57.rst -r umbrella_productions/rel_2_25C_-57.rst -inf umbrella_productions/rel_2_25C_-57.mdinfo -ref umbrella_productions/rel_1_-57.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-57.umbin -o umbrella_productions/rel_3_25C_-57.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-57.rst -r umbrella_productions/rel_3_25C_-57.rst -inf umbrella_productions/rel_3_25C_-57.mdinfo -ref umbrella_productions/rel_2_25C_-57.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-57.umbin -o umbrella_productions/prod_25C_4ns_-57.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-57.rst -r umbrella_productions/prod_25C_4ns_-57.rst -inf umbrella_productions/prod_25C_4ns_-57.mdinfo -x umbrella_productions/prod_25C_4ns_-57.nc -ref umbrella_productions/rel_3_25C_-57.rst 

#-58
pmemd -O -i umbrella_config/min_1_-58.umbin -o umbrella_productions/min_1_-58.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-57.rst -r umbrella_productions/min_1_-58.rst -inf umbrella_productions/min_1_-58.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-58.umbin -o umbrella_productions/rel_1_-58.out -p R2220A.prmtop -c umbrella_productions/min_1_-58.rst -r umbrella_productions/rel_1_-58.rst -inf umbrella_productions/rel_1_-58.mdinfo -ref umbrella_productions/min_1_-58.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-58.umbin -o umbrella_productions/rel_2_25C_-58.out -p R2220A.prmtop -c umbrella_productions/rel_1_-58.rst -r umbrella_productions/rel_2_25C_-58.rst -inf umbrella_productions/rel_2_25C_-58.mdinfo -ref umbrella_productions/rel_1_-58.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-58.umbin -o umbrella_productions/rel_3_25C_-58.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-58.rst -r umbrella_productions/rel_3_25C_-58.rst -inf umbrella_productions/rel_3_25C_-58.mdinfo -ref umbrella_productions/rel_2_25C_-58.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-58.umbin -o umbrella_productions/prod_25C_4ns_-58.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-58.rst -r umbrella_productions/prod_25C_4ns_-58.rst -inf umbrella_productions/prod_25C_4ns_-58.mdinfo -x umbrella_productions/prod_25C_4ns_-58.nc -ref umbrella_productions/rel_3_25C_-58.rst 

#-59
pmemd -O -i umbrella_config/min_1_-59.umbin -o umbrella_productions/min_1_-59.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-58.rst -r umbrella_productions/min_1_-59.rst -inf umbrella_productions/min_1_-59.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-59.umbin -o umbrella_productions/rel_1_-59.out -p R2220A.prmtop -c umbrella_productions/min_1_-59.rst -r umbrella_productions/rel_1_-59.rst -inf umbrella_productions/rel_1_-59.mdinfo -ref umbrella_productions/min_1_-59.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-59.umbin -o umbrella_productions/rel_2_25C_-59.out -p R2220A.prmtop -c umbrella_productions/rel_1_-59.rst -r umbrella_productions/rel_2_25C_-59.rst -inf umbrella_productions/rel_2_25C_-59.mdinfo -ref umbrella_productions/rel_1_-59.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-59.umbin -o umbrella_productions/rel_3_25C_-59.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-59.rst -r umbrella_productions/rel_3_25C_-59.rst -inf umbrella_productions/rel_3_25C_-59.mdinfo -ref umbrella_productions/rel_2_25C_-59.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-59.umbin -o umbrella_productions/prod_25C_4ns_-59.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-59.rst -r umbrella_productions/prod_25C_4ns_-59.rst -inf umbrella_productions/prod_25C_4ns_-59.mdinfo -x umbrella_productions/prod_25C_4ns_-59.nc -ref umbrella_productions/rel_3_25C_-59.rst 

#-60
pmemd -O -i umbrella_config/min_1_-60.umbin -o umbrella_productions/min_1_-60.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-59.rst -r umbrella_productions/min_1_-60.rst -inf umbrella_productions/min_1_-60.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-60.umbin -o umbrella_productions/rel_1_-60.out -p R2220A.prmtop -c umbrella_productions/min_1_-60.rst -r umbrella_productions/rel_1_-60.rst -inf umbrella_productions/rel_1_-60.mdinfo -ref umbrella_productions/min_1_-60.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-60.umbin -o umbrella_productions/rel_2_25C_-60.out -p R2220A.prmtop -c umbrella_productions/rel_1_-60.rst -r umbrella_productions/rel_2_25C_-60.rst -inf umbrella_productions/rel_2_25C_-60.mdinfo -ref umbrella_productions/rel_1_-60.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-60.umbin -o umbrella_productions/rel_3_25C_-60.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-60.rst -r umbrella_productions/rel_3_25C_-60.rst -inf umbrella_productions/rel_3_25C_-60.mdinfo -ref umbrella_productions/rel_2_25C_-60.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-60.umbin -o umbrella_productions/prod_25C_4ns_-60.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-60.rst -r umbrella_productions/prod_25C_4ns_-60.rst -inf umbrella_productions/prod_25C_4ns_-60.mdinfo -x umbrella_productions/prod_25C_4ns_-60.nc -ref umbrella_productions/rel_3_25C_-60.rst 

#-61
pmemd -O -i umbrella_config/min_1_-61.umbin -o umbrella_productions/min_1_-61.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-60.rst -r umbrella_productions/min_1_-61.rst -inf umbrella_productions/min_1_-61.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-61.umbin -o umbrella_productions/rel_1_-61.out -p R2220A.prmtop -c umbrella_productions/min_1_-61.rst -r umbrella_productions/rel_1_-61.rst -inf umbrella_productions/rel_1_-61.mdinfo -ref umbrella_productions/min_1_-61.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-61.umbin -o umbrella_productions/rel_2_25C_-61.out -p R2220A.prmtop -c umbrella_productions/rel_1_-61.rst -r umbrella_productions/rel_2_25C_-61.rst -inf umbrella_productions/rel_2_25C_-61.mdinfo -ref umbrella_productions/rel_1_-61.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-61.umbin -o umbrella_productions/rel_3_25C_-61.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-61.rst -r umbrella_productions/rel_3_25C_-61.rst -inf umbrella_productions/rel_3_25C_-61.mdinfo -ref umbrella_productions/rel_2_25C_-61.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-61.umbin -o umbrella_productions/prod_25C_4ns_-61.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-61.rst -r umbrella_productions/prod_25C_4ns_-61.rst -inf umbrella_productions/prod_25C_4ns_-61.mdinfo -x umbrella_productions/prod_25C_4ns_-61.nc -ref umbrella_productions/rel_3_25C_-61.rst 

#-62
pmemd -O -i umbrella_config/min_1_-62.umbin -o umbrella_productions/min_1_-62.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-61.rst -r umbrella_productions/min_1_-62.rst -inf umbrella_productions/min_1_-62.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-62.umbin -o umbrella_productions/rel_1_-62.out -p R2220A.prmtop -c umbrella_productions/min_1_-62.rst -r umbrella_productions/rel_1_-62.rst -inf umbrella_productions/rel_1_-62.mdinfo -ref umbrella_productions/min_1_-62.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-62.umbin -o umbrella_productions/rel_2_25C_-62.out -p R2220A.prmtop -c umbrella_productions/rel_1_-62.rst -r umbrella_productions/rel_2_25C_-62.rst -inf umbrella_productions/rel_2_25C_-62.mdinfo -ref umbrella_productions/rel_1_-62.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-62.umbin -o umbrella_productions/rel_3_25C_-62.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-62.rst -r umbrella_productions/rel_3_25C_-62.rst -inf umbrella_productions/rel_3_25C_-62.mdinfo -ref umbrella_productions/rel_2_25C_-62.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-62.umbin -o umbrella_productions/prod_25C_4ns_-62.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-62.rst -r umbrella_productions/prod_25C_4ns_-62.rst -inf umbrella_productions/prod_25C_4ns_-62.mdinfo -x umbrella_productions/prod_25C_4ns_-62.nc -ref umbrella_productions/rel_3_25C_-62.rst 

#-63
pmemd -O -i umbrella_config/min_1_-63.umbin -o umbrella_productions/min_1_-63.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-62.rst -r umbrella_productions/min_1_-63.rst -inf umbrella_productions/min_1_-63.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-63.umbin -o umbrella_productions/rel_1_-63.out -p R2220A.prmtop -c umbrella_productions/min_1_-63.rst -r umbrella_productions/rel_1_-63.rst -inf umbrella_productions/rel_1_-63.mdinfo -ref umbrella_productions/min_1_-63.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-63.umbin -o umbrella_productions/rel_2_25C_-63.out -p R2220A.prmtop -c umbrella_productions/rel_1_-63.rst -r umbrella_productions/rel_2_25C_-63.rst -inf umbrella_productions/rel_2_25C_-63.mdinfo -ref umbrella_productions/rel_1_-63.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-63.umbin -o umbrella_productions/rel_3_25C_-63.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-63.rst -r umbrella_productions/rel_3_25C_-63.rst -inf umbrella_productions/rel_3_25C_-63.mdinfo -ref umbrella_productions/rel_2_25C_-63.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-63.umbin -o umbrella_productions/prod_25C_4ns_-63.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-63.rst -r umbrella_productions/prod_25C_4ns_-63.rst -inf umbrella_productions/prod_25C_4ns_-63.mdinfo -x umbrella_productions/prod_25C_4ns_-63.nc -ref umbrella_productions/rel_3_25C_-63.rst 

#-64
pmemd -O -i umbrella_config/min_1_-64.umbin -o umbrella_productions/min_1_-64.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-63.rst -r umbrella_productions/min_1_-64.rst -inf umbrella_productions/min_1_-64.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-64.umbin -o umbrella_productions/rel_1_-64.out -p R2220A.prmtop -c umbrella_productions/min_1_-64.rst -r umbrella_productions/rel_1_-64.rst -inf umbrella_productions/rel_1_-64.mdinfo -ref umbrella_productions/min_1_-64.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-64.umbin -o umbrella_productions/rel_2_25C_-64.out -p R2220A.prmtop -c umbrella_productions/rel_1_-64.rst -r umbrella_productions/rel_2_25C_-64.rst -inf umbrella_productions/rel_2_25C_-64.mdinfo -ref umbrella_productions/rel_1_-64.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-64.umbin -o umbrella_productions/rel_3_25C_-64.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-64.rst -r umbrella_productions/rel_3_25C_-64.rst -inf umbrella_productions/rel_3_25C_-64.mdinfo -ref umbrella_productions/rel_2_25C_-64.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-64.umbin -o umbrella_productions/prod_25C_4ns_-64.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-64.rst -r umbrella_productions/prod_25C_4ns_-64.rst -inf umbrella_productions/prod_25C_4ns_-64.mdinfo -x umbrella_productions/prod_25C_4ns_-64.nc -ref umbrella_productions/rel_3_25C_-64.rst 

#-65
pmemd -O -i umbrella_config/min_1_-65.umbin -o umbrella_productions/min_1_-65.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-64.rst -r umbrella_productions/min_1_-65.rst -inf umbrella_productions/min_1_-65.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-65.umbin -o umbrella_productions/rel_1_-65.out -p R2220A.prmtop -c umbrella_productions/min_1_-65.rst -r umbrella_productions/rel_1_-65.rst -inf umbrella_productions/rel_1_-65.mdinfo -ref umbrella_productions/min_1_-65.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-65.umbin -o umbrella_productions/rel_2_25C_-65.out -p R2220A.prmtop -c umbrella_productions/rel_1_-65.rst -r umbrella_productions/rel_2_25C_-65.rst -inf umbrella_productions/rel_2_25C_-65.mdinfo -ref umbrella_productions/rel_1_-65.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-65.umbin -o umbrella_productions/rel_3_25C_-65.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-65.rst -r umbrella_productions/rel_3_25C_-65.rst -inf umbrella_productions/rel_3_25C_-65.mdinfo -ref umbrella_productions/rel_2_25C_-65.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-65.umbin -o umbrella_productions/prod_25C_4ns_-65.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-65.rst -r umbrella_productions/prod_25C_4ns_-65.rst -inf umbrella_productions/prod_25C_4ns_-65.mdinfo -x umbrella_productions/prod_25C_4ns_-65.nc -ref umbrella_productions/rel_3_25C_-65.rst 

#-66
pmemd -O -i umbrella_config/min_1_-66.umbin -o umbrella_productions/min_1_-66.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-65.rst -r umbrella_productions/min_1_-66.rst -inf umbrella_productions/min_1_-66.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-66.umbin -o umbrella_productions/rel_1_-66.out -p R2220A.prmtop -c umbrella_productions/min_1_-66.rst -r umbrella_productions/rel_1_-66.rst -inf umbrella_productions/rel_1_-66.mdinfo -ref umbrella_productions/min_1_-66.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-66.umbin -o umbrella_productions/rel_2_25C_-66.out -p R2220A.prmtop -c umbrella_productions/rel_1_-66.rst -r umbrella_productions/rel_2_25C_-66.rst -inf umbrella_productions/rel_2_25C_-66.mdinfo -ref umbrella_productions/rel_1_-66.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-66.umbin -o umbrella_productions/rel_3_25C_-66.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-66.rst -r umbrella_productions/rel_3_25C_-66.rst -inf umbrella_productions/rel_3_25C_-66.mdinfo -ref umbrella_productions/rel_2_25C_-66.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-66.umbin -o umbrella_productions/prod_25C_4ns_-66.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-66.rst -r umbrella_productions/prod_25C_4ns_-66.rst -inf umbrella_productions/prod_25C_4ns_-66.mdinfo -x umbrella_productions/prod_25C_4ns_-66.nc -ref umbrella_productions/rel_3_25C_-66.rst 

#-67
pmemd -O -i umbrella_config/min_1_-67.umbin -o umbrella_productions/min_1_-67.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_-66.rst -r umbrella_productions/min_1_-67.rst -inf umbrella_productions/min_1_-67.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_-67.umbin -o umbrella_productions/rel_1_-67.out -p R2220A.prmtop -c umbrella_productions/min_1_-67.rst -r umbrella_productions/rel_1_-67.rst -inf umbrella_productions/rel_1_-67.mdinfo -ref umbrella_productions/min_1_-67.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_-67.umbin -o umbrella_productions/rel_2_25C_-67.out -p R2220A.prmtop -c umbrella_productions/rel_1_-67.rst -r umbrella_productions/rel_2_25C_-67.rst -inf umbrella_productions/rel_2_25C_-67.mdinfo -ref umbrella_productions/rel_1_-67.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_-67.umbin -o umbrella_productions/rel_3_25C_-67.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_-67.rst -r umbrella_productions/rel_3_25C_-67.rst -inf umbrella_productions/rel_3_25C_-67.mdinfo -ref umbrella_productions/rel_2_25C_-67.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_-67.umbin -o umbrella_productions/prod_25C_4ns_-67.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_-67.rst -r umbrella_productions/prod_25C_4ns_-67.rst -inf umbrella_productions/prod_25C_4ns_-67.mdinfo -x umbrella_productions/prod_25C_4ns_-67.nc -ref umbrella_productions/rel_3_25C_-67.rst 

#0
pmemd -O -i umbrella_config/min_1_0.umbin -o umbrella_productions/min_1_0.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_0.rst -r umbrella_productions/min_1_0.rst -inf umbrella_productions/min_1_0.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_0.umbin -o umbrella_productions/rel_1_0.out -p R2220A.prmtop -c umbrella_productions/min_1_0.rst -r umbrella_productions/rel_1_0.rst -inf umbrella_productions/rel_1_0.mdinfo -ref umbrella_productions/min_1_0.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_0.umbin -o umbrella_productions/rel_2_25C_0.out -p R2220A.prmtop -c umbrella_productions/rel_1_0.rst -r umbrella_productions/rel_2_25C_0.rst -inf umbrella_productions/rel_2_25C_0.mdinfo -ref umbrella_productions/rel_1_0.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_0.umbin -o umbrella_productions/rel_3_25C_0.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_0.rst -r umbrella_productions/rel_3_25C_0.rst -inf umbrella_productions/rel_3_25C_0.mdinfo -ref umbrella_productions/rel_2_25C_0.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_0.umbin -o umbrella_productions/prod_25C_4ns_0.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_0.rst -r umbrella_productions/prod_25C_4ns_0.rst -inf umbrella_productions/prod_25C_4ns_0.mdinfo -x umbrella_productions/prod_25C_4ns_0.nc -ref umbrella_productions/rel_3_25C_0.rst 

#1
pmemd -O -i umbrella_config/min_1_1.umbin -o umbrella_productions/min_1_1.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_0.rst -r umbrella_productions/min_1_1.rst -inf umbrella_productions/min_1_1.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_1.umbin -o umbrella_productions/rel_1_1.out -p R2220A.prmtop -c umbrella_productions/min_1_1.rst -r umbrella_productions/rel_1_1.rst -inf umbrella_productions/rel_1_1.mdinfo -ref umbrella_productions/min_1_1.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_1.umbin -o umbrella_productions/rel_2_25C_1.out -p R2220A.prmtop -c umbrella_productions/rel_1_1.rst -r umbrella_productions/rel_2_25C_1.rst -inf umbrella_productions/rel_2_25C_1.mdinfo -ref umbrella_productions/rel_1_1.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_1.umbin -o umbrella_productions/rel_3_25C_1.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_1.rst -r umbrella_productions/rel_3_25C_1.rst -inf umbrella_productions/rel_3_25C_1.mdinfo -ref umbrella_productions/rel_2_25C_1.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_1.umbin -o umbrella_productions/prod_25C_4ns_1.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_1.rst -r umbrella_productions/prod_25C_4ns_1.rst -inf umbrella_productions/prod_25C_4ns_1.mdinfo -x umbrella_productions/prod_25C_4ns_1.nc -ref umbrella_productions/rel_3_25C_1.rst 

#2
pmemd -O -i umbrella_config/min_1_2.umbin -o umbrella_productions/min_1_2.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_1.rst -r umbrella_productions/min_1_2.rst -inf umbrella_productions/min_1_2.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_2.umbin -o umbrella_productions/rel_1_2.out -p R2220A.prmtop -c umbrella_productions/min_1_2.rst -r umbrella_productions/rel_1_2.rst -inf umbrella_productions/rel_1_2.mdinfo -ref umbrella_productions/min_1_2.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_2.umbin -o umbrella_productions/rel_2_25C_2.out -p R2220A.prmtop -c umbrella_productions/rel_1_2.rst -r umbrella_productions/rel_2_25C_2.rst -inf umbrella_productions/rel_2_25C_2.mdinfo -ref umbrella_productions/rel_1_2.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_2.umbin -o umbrella_productions/rel_3_25C_2.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_2.rst -r umbrella_productions/rel_3_25C_2.rst -inf umbrella_productions/rel_3_25C_2.mdinfo -ref umbrella_productions/rel_2_25C_2.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_2.umbin -o umbrella_productions/prod_25C_4ns_2.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_2.rst -r umbrella_productions/prod_25C_4ns_2.rst -inf umbrella_productions/prod_25C_4ns_2.mdinfo -x umbrella_productions/prod_25C_4ns_2.nc -ref umbrella_productions/rel_3_25C_2.rst 

#3
pmemd -O -i umbrella_config/min_1_3.umbin -o umbrella_productions/min_1_3.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_2.rst -r umbrella_productions/min_1_3.rst -inf umbrella_productions/min_1_3.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_3.umbin -o umbrella_productions/rel_1_3.out -p R2220A.prmtop -c umbrella_productions/min_1_3.rst -r umbrella_productions/rel_1_3.rst -inf umbrella_productions/rel_1_3.mdinfo -ref umbrella_productions/min_1_3.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_3.umbin -o umbrella_productions/rel_2_25C_3.out -p R2220A.prmtop -c umbrella_productions/rel_1_3.rst -r umbrella_productions/rel_2_25C_3.rst -inf umbrella_productions/rel_2_25C_3.mdinfo -ref umbrella_productions/rel_1_3.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_3.umbin -o umbrella_productions/rel_3_25C_3.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_3.rst -r umbrella_productions/rel_3_25C_3.rst -inf umbrella_productions/rel_3_25C_3.mdinfo -ref umbrella_productions/rel_2_25C_3.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_3.umbin -o umbrella_productions/prod_25C_4ns_3.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_3.rst -r umbrella_productions/prod_25C_4ns_3.rst -inf umbrella_productions/prod_25C_4ns_3.mdinfo -x umbrella_productions/prod_25C_4ns_3.nc -ref umbrella_productions/rel_3_25C_3.rst 

#4
pmemd -O -i umbrella_config/min_1_4.umbin -o umbrella_productions/min_1_4.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_3.rst -r umbrella_productions/min_1_4.rst -inf umbrella_productions/min_1_4.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_4.umbin -o umbrella_productions/rel_1_4.out -p R2220A.prmtop -c umbrella_productions/min_1_4.rst -r umbrella_productions/rel_1_4.rst -inf umbrella_productions/rel_1_4.mdinfo -ref umbrella_productions/min_1_4.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_4.umbin -o umbrella_productions/rel_2_25C_4.out -p R2220A.prmtop -c umbrella_productions/rel_1_4.rst -r umbrella_productions/rel_2_25C_4.rst -inf umbrella_productions/rel_2_25C_4.mdinfo -ref umbrella_productions/rel_1_4.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_4.umbin -o umbrella_productions/rel_3_25C_4.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_4.rst -r umbrella_productions/rel_3_25C_4.rst -inf umbrella_productions/rel_3_25C_4.mdinfo -ref umbrella_productions/rel_2_25C_4.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_4.umbin -o umbrella_productions/prod_25C_4ns_4.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_4.rst -r umbrella_productions/prod_25C_4ns_4.rst -inf umbrella_productions/prod_25C_4ns_4.mdinfo -x umbrella_productions/prod_25C_4ns_4.nc -ref umbrella_productions/rel_3_25C_4.rst 

#5
pmemd -O -i umbrella_config/min_1_5.umbin -o umbrella_productions/min_1_5.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_4.rst -r umbrella_productions/min_1_5.rst -inf umbrella_productions/min_1_5.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_5.umbin -o umbrella_productions/rel_1_5.out -p R2220A.prmtop -c umbrella_productions/min_1_5.rst -r umbrella_productions/rel_1_5.rst -inf umbrella_productions/rel_1_5.mdinfo -ref umbrella_productions/min_1_5.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_5.umbin -o umbrella_productions/rel_2_25C_5.out -p R2220A.prmtop -c umbrella_productions/rel_1_5.rst -r umbrella_productions/rel_2_25C_5.rst -inf umbrella_productions/rel_2_25C_5.mdinfo -ref umbrella_productions/rel_1_5.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_5.umbin -o umbrella_productions/rel_3_25C_5.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_5.rst -r umbrella_productions/rel_3_25C_5.rst -inf umbrella_productions/rel_3_25C_5.mdinfo -ref umbrella_productions/rel_2_25C_5.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_5.umbin -o umbrella_productions/prod_25C_4ns_5.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_5.rst -r umbrella_productions/prod_25C_4ns_5.rst -inf umbrella_productions/prod_25C_4ns_5.mdinfo -x umbrella_productions/prod_25C_4ns_5.nc -ref umbrella_productions/rel_3_25C_5.rst 

#6
pmemd -O -i umbrella_config/min_1_6.umbin -o umbrella_productions/min_1_6.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_5.rst -r umbrella_productions/min_1_6.rst -inf umbrella_productions/min_1_6.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_6.umbin -o umbrella_productions/rel_1_6.out -p R2220A.prmtop -c umbrella_productions/min_1_6.rst -r umbrella_productions/rel_1_6.rst -inf umbrella_productions/rel_1_6.mdinfo -ref umbrella_productions/min_1_6.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_6.umbin -o umbrella_productions/rel_2_25C_6.out -p R2220A.prmtop -c umbrella_productions/rel_1_6.rst -r umbrella_productions/rel_2_25C_6.rst -inf umbrella_productions/rel_2_25C_6.mdinfo -ref umbrella_productions/rel_1_6.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_6.umbin -o umbrella_productions/rel_3_25C_6.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_6.rst -r umbrella_productions/rel_3_25C_6.rst -inf umbrella_productions/rel_3_25C_6.mdinfo -ref umbrella_productions/rel_2_25C_6.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_6.umbin -o umbrella_productions/prod_25C_4ns_6.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_6.rst -r umbrella_productions/prod_25C_4ns_6.rst -inf umbrella_productions/prod_25C_4ns_6.mdinfo -x umbrella_productions/prod_25C_4ns_6.nc -ref umbrella_productions/rel_3_25C_6.rst 

#7
pmemd -O -i umbrella_config/min_1_7.umbin -o umbrella_productions/min_1_7.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_6.rst -r umbrella_productions/min_1_7.rst -inf umbrella_productions/min_1_7.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_7.umbin -o umbrella_productions/rel_1_7.out -p R2220A.prmtop -c umbrella_productions/min_1_7.rst -r umbrella_productions/rel_1_7.rst -inf umbrella_productions/rel_1_7.mdinfo -ref umbrella_productions/min_1_7.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_7.umbin -o umbrella_productions/rel_2_25C_7.out -p R2220A.prmtop -c umbrella_productions/rel_1_7.rst -r umbrella_productions/rel_2_25C_7.rst -inf umbrella_productions/rel_2_25C_7.mdinfo -ref umbrella_productions/rel_1_7.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_7.umbin -o umbrella_productions/rel_3_25C_7.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_7.rst -r umbrella_productions/rel_3_25C_7.rst -inf umbrella_productions/rel_3_25C_7.mdinfo -ref umbrella_productions/rel_2_25C_7.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_7.umbin -o umbrella_productions/prod_25C_4ns_7.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_7.rst -r umbrella_productions/prod_25C_4ns_7.rst -inf umbrella_productions/prod_25C_4ns_7.mdinfo -x umbrella_productions/prod_25C_4ns_7.nc -ref umbrella_productions/rel_3_25C_7.rst 

#8
pmemd -O -i umbrella_config/min_1_8.umbin -o umbrella_productions/min_1_8.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_7.rst -r umbrella_productions/min_1_8.rst -inf umbrella_productions/min_1_8.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_8.umbin -o umbrella_productions/rel_1_8.out -p R2220A.prmtop -c umbrella_productions/min_1_8.rst -r umbrella_productions/rel_1_8.rst -inf umbrella_productions/rel_1_8.mdinfo -ref umbrella_productions/min_1_8.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_8.umbin -o umbrella_productions/rel_2_25C_8.out -p R2220A.prmtop -c umbrella_productions/rel_1_8.rst -r umbrella_productions/rel_2_25C_8.rst -inf umbrella_productions/rel_2_25C_8.mdinfo -ref umbrella_productions/rel_1_8.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_8.umbin -o umbrella_productions/rel_3_25C_8.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_8.rst -r umbrella_productions/rel_3_25C_8.rst -inf umbrella_productions/rel_3_25C_8.mdinfo -ref umbrella_productions/rel_2_25C_8.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_8.umbin -o umbrella_productions/prod_25C_4ns_8.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_8.rst -r umbrella_productions/prod_25C_4ns_8.rst -inf umbrella_productions/prod_25C_4ns_8.mdinfo -x umbrella_productions/prod_25C_4ns_8.nc -ref umbrella_productions/rel_3_25C_8.rst 

#9
pmemd -O -i umbrella_config/min_1_9.umbin -o umbrella_productions/min_1_9.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_8.rst -r umbrella_productions/min_1_9.rst -inf umbrella_productions/min_1_9.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_9.umbin -o umbrella_productions/rel_1_9.out -p R2220A.prmtop -c umbrella_productions/min_1_9.rst -r umbrella_productions/rel_1_9.rst -inf umbrella_productions/rel_1_9.mdinfo -ref umbrella_productions/min_1_9.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_9.umbin -o umbrella_productions/rel_2_25C_9.out -p R2220A.prmtop -c umbrella_productions/rel_1_9.rst -r umbrella_productions/rel_2_25C_9.rst -inf umbrella_productions/rel_2_25C_9.mdinfo -ref umbrella_productions/rel_1_9.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_9.umbin -o umbrella_productions/rel_3_25C_9.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_9.rst -r umbrella_productions/rel_3_25C_9.rst -inf umbrella_productions/rel_3_25C_9.mdinfo -ref umbrella_productions/rel_2_25C_9.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_9.umbin -o umbrella_productions/prod_25C_4ns_9.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_9.rst -r umbrella_productions/prod_25C_4ns_9.rst -inf umbrella_productions/prod_25C_4ns_9.mdinfo -x umbrella_productions/prod_25C_4ns_9.nc -ref umbrella_productions/rel_3_25C_9.rst 

#10
pmemd -O -i umbrella_config/min_1_10.umbin -o umbrella_productions/min_1_10.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_9.rst -r umbrella_productions/min_1_10.rst -inf umbrella_productions/min_1_10.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_10.umbin -o umbrella_productions/rel_1_10.out -p R2220A.prmtop -c umbrella_productions/min_1_10.rst -r umbrella_productions/rel_1_10.rst -inf umbrella_productions/rel_1_10.mdinfo -ref umbrella_productions/min_1_10.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_10.umbin -o umbrella_productions/rel_2_25C_10.out -p R2220A.prmtop -c umbrella_productions/rel_1_10.rst -r umbrella_productions/rel_2_25C_10.rst -inf umbrella_productions/rel_2_25C_10.mdinfo -ref umbrella_productions/rel_1_10.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_10.umbin -o umbrella_productions/rel_3_25C_10.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_10.rst -r umbrella_productions/rel_3_25C_10.rst -inf umbrella_productions/rel_3_25C_10.mdinfo -ref umbrella_productions/rel_2_25C_10.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_10.umbin -o umbrella_productions/prod_25C_4ns_10.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_10.rst -r umbrella_productions/prod_25C_4ns_10.rst -inf umbrella_productions/prod_25C_4ns_10.mdinfo -x umbrella_productions/prod_25C_4ns_10.nc -ref umbrella_productions/rel_3_25C_10.rst 

#11
pmemd -O -i umbrella_config/min_1_11.umbin -o umbrella_productions/min_1_11.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_10.rst -r umbrella_productions/min_1_11.rst -inf umbrella_productions/min_1_11.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_11.umbin -o umbrella_productions/rel_1_11.out -p R2220A.prmtop -c umbrella_productions/min_1_11.rst -r umbrella_productions/rel_1_11.rst -inf umbrella_productions/rel_1_11.mdinfo -ref umbrella_productions/min_1_11.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_11.umbin -o umbrella_productions/rel_2_25C_11.out -p R2220A.prmtop -c umbrella_productions/rel_1_11.rst -r umbrella_productions/rel_2_25C_11.rst -inf umbrella_productions/rel_2_25C_11.mdinfo -ref umbrella_productions/rel_1_11.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_11.umbin -o umbrella_productions/rel_3_25C_11.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_11.rst -r umbrella_productions/rel_3_25C_11.rst -inf umbrella_productions/rel_3_25C_11.mdinfo -ref umbrella_productions/rel_2_25C_11.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_11.umbin -o umbrella_productions/prod_25C_4ns_11.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_11.rst -r umbrella_productions/prod_25C_4ns_11.rst -inf umbrella_productions/prod_25C_4ns_11.mdinfo -x umbrella_productions/prod_25C_4ns_11.nc -ref umbrella_productions/rel_3_25C_11.rst 

#12
pmemd -O -i umbrella_config/min_1_12.umbin -o umbrella_productions/min_1_12.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_11.rst -r umbrella_productions/min_1_12.rst -inf umbrella_productions/min_1_12.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_12.umbin -o umbrella_productions/rel_1_12.out -p R2220A.prmtop -c umbrella_productions/min_1_12.rst -r umbrella_productions/rel_1_12.rst -inf umbrella_productions/rel_1_12.mdinfo -ref umbrella_productions/min_1_12.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_12.umbin -o umbrella_productions/rel_2_25C_12.out -p R2220A.prmtop -c umbrella_productions/rel_1_12.rst -r umbrella_productions/rel_2_25C_12.rst -inf umbrella_productions/rel_2_25C_12.mdinfo -ref umbrella_productions/rel_1_12.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_12.umbin -o umbrella_productions/rel_3_25C_12.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_12.rst -r umbrella_productions/rel_3_25C_12.rst -inf umbrella_productions/rel_3_25C_12.mdinfo -ref umbrella_productions/rel_2_25C_12.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_12.umbin -o umbrella_productions/prod_25C_4ns_12.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_12.rst -r umbrella_productions/prod_25C_4ns_12.rst -inf umbrella_productions/prod_25C_4ns_12.mdinfo -x umbrella_productions/prod_25C_4ns_12.nc -ref umbrella_productions/rel_3_25C_12.rst 

#13
pmemd -O -i umbrella_config/min_1_13.umbin -o umbrella_productions/min_1_13.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_12.rst -r umbrella_productions/min_1_13.rst -inf umbrella_productions/min_1_13.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_13.umbin -o umbrella_productions/rel_1_13.out -p R2220A.prmtop -c umbrella_productions/min_1_13.rst -r umbrella_productions/rel_1_13.rst -inf umbrella_productions/rel_1_13.mdinfo -ref umbrella_productions/min_1_13.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_13.umbin -o umbrella_productions/rel_2_25C_13.out -p R2220A.prmtop -c umbrella_productions/rel_1_13.rst -r umbrella_productions/rel_2_25C_13.rst -inf umbrella_productions/rel_2_25C_13.mdinfo -ref umbrella_productions/rel_1_13.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_13.umbin -o umbrella_productions/rel_3_25C_13.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_13.rst -r umbrella_productions/rel_3_25C_13.rst -inf umbrella_productions/rel_3_25C_13.mdinfo -ref umbrella_productions/rel_2_25C_13.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_13.umbin -o umbrella_productions/prod_25C_4ns_13.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_13.rst -r umbrella_productions/prod_25C_4ns_13.rst -inf umbrella_productions/prod_25C_4ns_13.mdinfo -x umbrella_productions/prod_25C_4ns_13.nc -ref umbrella_productions/rel_3_25C_13.rst 

#14
pmemd -O -i umbrella_config/min_1_14.umbin -o umbrella_productions/min_1_14.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_13.rst -r umbrella_productions/min_1_14.rst -inf umbrella_productions/min_1_14.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_14.umbin -o umbrella_productions/rel_1_14.out -p R2220A.prmtop -c umbrella_productions/min_1_14.rst -r umbrella_productions/rel_1_14.rst -inf umbrella_productions/rel_1_14.mdinfo -ref umbrella_productions/min_1_14.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_14.umbin -o umbrella_productions/rel_2_25C_14.out -p R2220A.prmtop -c umbrella_productions/rel_1_14.rst -r umbrella_productions/rel_2_25C_14.rst -inf umbrella_productions/rel_2_25C_14.mdinfo -ref umbrella_productions/rel_1_14.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_14.umbin -o umbrella_productions/rel_3_25C_14.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_14.rst -r umbrella_productions/rel_3_25C_14.rst -inf umbrella_productions/rel_3_25C_14.mdinfo -ref umbrella_productions/rel_2_25C_14.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_14.umbin -o umbrella_productions/prod_25C_4ns_14.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_14.rst -r umbrella_productions/prod_25C_4ns_14.rst -inf umbrella_productions/prod_25C_4ns_14.mdinfo -x umbrella_productions/prod_25C_4ns_14.nc -ref umbrella_productions/rel_3_25C_14.rst 

#15
pmemd -O -i umbrella_config/min_1_15.umbin -o umbrella_productions/min_1_15.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_14.rst -r umbrella_productions/min_1_15.rst -inf umbrella_productions/min_1_15.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_15.umbin -o umbrella_productions/rel_1_15.out -p R2220A.prmtop -c umbrella_productions/min_1_15.rst -r umbrella_productions/rel_1_15.rst -inf umbrella_productions/rel_1_15.mdinfo -ref umbrella_productions/min_1_15.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_15.umbin -o umbrella_productions/rel_2_25C_15.out -p R2220A.prmtop -c umbrella_productions/rel_1_15.rst -r umbrella_productions/rel_2_25C_15.rst -inf umbrella_productions/rel_2_25C_15.mdinfo -ref umbrella_productions/rel_1_15.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_15.umbin -o umbrella_productions/rel_3_25C_15.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_15.rst -r umbrella_productions/rel_3_25C_15.rst -inf umbrella_productions/rel_3_25C_15.mdinfo -ref umbrella_productions/rel_2_25C_15.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_15.umbin -o umbrella_productions/prod_25C_4ns_15.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_15.rst -r umbrella_productions/prod_25C_4ns_15.rst -inf umbrella_productions/prod_25C_4ns_15.mdinfo -x umbrella_productions/prod_25C_4ns_15.nc -ref umbrella_productions/rel_3_25C_15.rst 

#16
pmemd -O -i umbrella_config/min_1_16.umbin -o umbrella_productions/min_1_16.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_15.rst -r umbrella_productions/min_1_16.rst -inf umbrella_productions/min_1_16.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_16.umbin -o umbrella_productions/rel_1_16.out -p R2220A.prmtop -c umbrella_productions/min_1_16.rst -r umbrella_productions/rel_1_16.rst -inf umbrella_productions/rel_1_16.mdinfo -ref umbrella_productions/min_1_16.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_16.umbin -o umbrella_productions/rel_2_25C_16.out -p R2220A.prmtop -c umbrella_productions/rel_1_16.rst -r umbrella_productions/rel_2_25C_16.rst -inf umbrella_productions/rel_2_25C_16.mdinfo -ref umbrella_productions/rel_1_16.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_16.umbin -o umbrella_productions/rel_3_25C_16.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_16.rst -r umbrella_productions/rel_3_25C_16.rst -inf umbrella_productions/rel_3_25C_16.mdinfo -ref umbrella_productions/rel_2_25C_16.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_16.umbin -o umbrella_productions/prod_25C_4ns_16.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_16.rst -r umbrella_productions/prod_25C_4ns_16.rst -inf umbrella_productions/prod_25C_4ns_16.mdinfo -x umbrella_productions/prod_25C_4ns_16.nc -ref umbrella_productions/rel_3_25C_16.rst 

#17
pmemd -O -i umbrella_config/min_1_17.umbin -o umbrella_productions/min_1_17.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_16.rst -r umbrella_productions/min_1_17.rst -inf umbrella_productions/min_1_17.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_17.umbin -o umbrella_productions/rel_1_17.out -p R2220A.prmtop -c umbrella_productions/min_1_17.rst -r umbrella_productions/rel_1_17.rst -inf umbrella_productions/rel_1_17.mdinfo -ref umbrella_productions/min_1_17.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_17.umbin -o umbrella_productions/rel_2_25C_17.out -p R2220A.prmtop -c umbrella_productions/rel_1_17.rst -r umbrella_productions/rel_2_25C_17.rst -inf umbrella_productions/rel_2_25C_17.mdinfo -ref umbrella_productions/rel_1_17.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_17.umbin -o umbrella_productions/rel_3_25C_17.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_17.rst -r umbrella_productions/rel_3_25C_17.rst -inf umbrella_productions/rel_3_25C_17.mdinfo -ref umbrella_productions/rel_2_25C_17.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_17.umbin -o umbrella_productions/prod_25C_4ns_17.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_17.rst -r umbrella_productions/prod_25C_4ns_17.rst -inf umbrella_productions/prod_25C_4ns_17.mdinfo -x umbrella_productions/prod_25C_4ns_17.nc -ref umbrella_productions/rel_3_25C_17.rst 

#18
pmemd -O -i umbrella_config/min_1_18.umbin -o umbrella_productions/min_1_18.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_17.rst -r umbrella_productions/min_1_18.rst -inf umbrella_productions/min_1_18.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_18.umbin -o umbrella_productions/rel_1_18.out -p R2220A.prmtop -c umbrella_productions/min_1_18.rst -r umbrella_productions/rel_1_18.rst -inf umbrella_productions/rel_1_18.mdinfo -ref umbrella_productions/min_1_18.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_18.umbin -o umbrella_productions/rel_2_25C_18.out -p R2220A.prmtop -c umbrella_productions/rel_1_18.rst -r umbrella_productions/rel_2_25C_18.rst -inf umbrella_productions/rel_2_25C_18.mdinfo -ref umbrella_productions/rel_1_18.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_18.umbin -o umbrella_productions/rel_3_25C_18.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_18.rst -r umbrella_productions/rel_3_25C_18.rst -inf umbrella_productions/rel_3_25C_18.mdinfo -ref umbrella_productions/rel_2_25C_18.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_18.umbin -o umbrella_productions/prod_25C_4ns_18.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_18.rst -r umbrella_productions/prod_25C_4ns_18.rst -inf umbrella_productions/prod_25C_4ns_18.mdinfo -x umbrella_productions/prod_25C_4ns_18.nc -ref umbrella_productions/rel_3_25C_18.rst 

#19
pmemd -O -i umbrella_config/min_1_19.umbin -o umbrella_productions/min_1_19.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_18.rst -r umbrella_productions/min_1_19.rst -inf umbrella_productions/min_1_19.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_19.umbin -o umbrella_productions/rel_1_19.out -p R2220A.prmtop -c umbrella_productions/min_1_19.rst -r umbrella_productions/rel_1_19.rst -inf umbrella_productions/rel_1_19.mdinfo -ref umbrella_productions/min_1_19.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_19.umbin -o umbrella_productions/rel_2_25C_19.out -p R2220A.prmtop -c umbrella_productions/rel_1_19.rst -r umbrella_productions/rel_2_25C_19.rst -inf umbrella_productions/rel_2_25C_19.mdinfo -ref umbrella_productions/rel_1_19.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_19.umbin -o umbrella_productions/rel_3_25C_19.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_19.rst -r umbrella_productions/rel_3_25C_19.rst -inf umbrella_productions/rel_3_25C_19.mdinfo -ref umbrella_productions/rel_2_25C_19.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_19.umbin -o umbrella_productions/prod_25C_4ns_19.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_19.rst -r umbrella_productions/prod_25C_4ns_19.rst -inf umbrella_productions/prod_25C_4ns_19.mdinfo -x umbrella_productions/prod_25C_4ns_19.nc -ref umbrella_productions/rel_3_25C_19.rst 

#20
pmemd -O -i umbrella_config/min_1_20.umbin -o umbrella_productions/min_1_20.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_19.rst -r umbrella_productions/min_1_20.rst -inf umbrella_productions/min_1_20.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_20.umbin -o umbrella_productions/rel_1_20.out -p R2220A.prmtop -c umbrella_productions/min_1_20.rst -r umbrella_productions/rel_1_20.rst -inf umbrella_productions/rel_1_20.mdinfo -ref umbrella_productions/min_1_20.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_20.umbin -o umbrella_productions/rel_2_25C_20.out -p R2220A.prmtop -c umbrella_productions/rel_1_20.rst -r umbrella_productions/rel_2_25C_20.rst -inf umbrella_productions/rel_2_25C_20.mdinfo -ref umbrella_productions/rel_1_20.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_20.umbin -o umbrella_productions/rel_3_25C_20.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_20.rst -r umbrella_productions/rel_3_25C_20.rst -inf umbrella_productions/rel_3_25C_20.mdinfo -ref umbrella_productions/rel_2_25C_20.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_20.umbin -o umbrella_productions/prod_25C_4ns_20.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_20.rst -r umbrella_productions/prod_25C_4ns_20.rst -inf umbrella_productions/prod_25C_4ns_20.mdinfo -x umbrella_productions/prod_25C_4ns_20.nc -ref umbrella_productions/rel_3_25C_20.rst 

#21
pmemd -O -i umbrella_config/min_1_21.umbin -o umbrella_productions/min_1_21.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_20.rst -r umbrella_productions/min_1_21.rst -inf umbrella_productions/min_1_21.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_21.umbin -o umbrella_productions/rel_1_21.out -p R2220A.prmtop -c umbrella_productions/min_1_21.rst -r umbrella_productions/rel_1_21.rst -inf umbrella_productions/rel_1_21.mdinfo -ref umbrella_productions/min_1_21.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_21.umbin -o umbrella_productions/rel_2_25C_21.out -p R2220A.prmtop -c umbrella_productions/rel_1_21.rst -r umbrella_productions/rel_2_25C_21.rst -inf umbrella_productions/rel_2_25C_21.mdinfo -ref umbrella_productions/rel_1_21.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_21.umbin -o umbrella_productions/rel_3_25C_21.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_21.rst -r umbrella_productions/rel_3_25C_21.rst -inf umbrella_productions/rel_3_25C_21.mdinfo -ref umbrella_productions/rel_2_25C_21.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_21.umbin -o umbrella_productions/prod_25C_4ns_21.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_21.rst -r umbrella_productions/prod_25C_4ns_21.rst -inf umbrella_productions/prod_25C_4ns_21.mdinfo -x umbrella_productions/prod_25C_4ns_21.nc -ref umbrella_productions/rel_3_25C_21.rst 

#22
pmemd -O -i umbrella_config/min_1_22.umbin -o umbrella_productions/min_1_22.out -p R2220A.prmtop -c umbrella_productions/prod_25C_4ns_21.rst -r umbrella_productions/min_1_22.rst -inf umbrella_productions/min_1_22.mdinfo 

pmemd.cuda -O -i umbrella_config/rel_1_22.umbin -o umbrella_productions/rel_1_22.out -p R2220A.prmtop -c umbrella_productions/min_1_22.rst -r umbrella_productions/rel_1_22.rst -inf umbrella_productions/rel_1_22.mdinfo -ref umbrella_productions/min_1_22.rst 

pmemd.cuda -O -i umbrella_config/rel_2_25C_22.umbin -o umbrella_productions/rel_2_25C_22.out -p R2220A.prmtop -c umbrella_productions/rel_1_22.rst -r umbrella_productions/rel_2_25C_22.rst -inf umbrella_productions/rel_2_25C_22.mdinfo -ref umbrella_productions/rel_1_22.rst 

pmemd.cuda -O -i umbrella_config/rel_3_25C_22.umbin -o umbrella_productions/rel_3_25C_22.out -p R2220A.prmtop -c umbrella_productions/rel_2_25C_22.rst -r umbrella_productions/rel_3_25C_22.rst -inf umbrella_productions/rel_3_25C_22.mdinfo -ref umbrella_productions/rel_2_25C_22.rst 

pmemd.cuda -O -i umbrella_config/prod_25C_4ns_22.umbin -o umbrella_productions/prod_25C_4ns_22.out -p R2220A.prmtop -c umbrella_productions/rel_3_25C_22.rst -r umbrella_productions/prod_25C_4ns_22.rst -inf umbrella_productions/prod_25C_4ns_22.mdinfo -x umbrella_productions/prod_25C_4ns_22.nc -ref umbrella_productions/rel_3_25C_22.rst 

