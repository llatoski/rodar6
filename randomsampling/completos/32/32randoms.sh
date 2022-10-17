#!/bin/bash 
#SBATCH -n 1 # Numero de CPU cores a serem alocados 
#SBATCH -N 1 # Numero de nodes a serem alocados
#SBATCH -t 90-00:00 # Tempo limite de execucao (D-HH:MM)
#SBATCH -p long # Particao (fila) a ser submetido
#SBATCH --qos qos_long # QOS 
  
# Comandos de execução do seu programa:
SAMP=10000
SIZ=32

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=1e-05 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=1.2648552168552958e-05 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=1.5998587196060572e-05 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=2.0235896477251556e-05 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=2.559547922699533e-05 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=3.237457542817647e-05 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=4.094915062380427e-05 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=5.1794746792312125e-05 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=6.55128556859551e-05 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=8.286427728546843e-05 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00010481131341546853 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00013257113655901095 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00016768329368110083 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00021209508879201905 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.0002682695795279727 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.000339322177189533 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00042919342601287783 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.0005428675439323859 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.0006866488450042998 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.000868511373751353 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.0010985411419875584 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.0013894954943731374 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.001757510624854793 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.0022229964825261957 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.002811768697974231 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.0035564803062231283 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.004498432668969444 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.005689866029018299 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.0071968567300115215 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.009102981779915217 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.011513953993264481 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.014563484775012445 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.018420699693267165 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.023299518105153717 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.029470517025518096 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.037275937203149416 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.04714866363457394 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.05963623316594643 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.07543120063354623 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.09540954763499944 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.1206792640639329 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.15264179671752334 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.19306977288832497 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.244205309454865 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.30888435964774846 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.3906939937054621 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.49417133613238384 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.6250551925273976 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.7906043210907702 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=1.0 -o inc.out -std=c99
./inc.out
rm -rf inc.out


