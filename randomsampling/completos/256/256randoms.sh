#!/bin/bash 
#SBATCH -n 1 # Numero de CPU cores a serem alocados 
#SBATCH -N 1 # Numero de nodes a serem alocados
#SBATCH -t 90-00:00 # Tempo limite de execucao (D-HH:MM)
#SBATCH -p long # Particao (fila) a ser submetido
#SBATCH --qos qos_long # QOS 
  
# Comandos de execução do seu programa:
SAMP=100
SIZ=256

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
