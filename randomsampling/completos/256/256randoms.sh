#!/bin/bash 
#SBATCH -n 1 # Numero de CPU cores a serem alocados 
#SBATCH -N 1 # Numero de nodes a serem alocados
#SBATCH -t 90-00:00 # Tempo limite de execucao (D-HH:MM)
#SBATCH -p long # Particao (fila) a ser submetido
#SBATCH --qos qos_long # QOS 
  
# Comandos de execução do seu programa:
SAMP=100
SIZ=256


gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.6250551925273976 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.7906043210907702 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=1.0 -o inc.out -std=c99
./inc.out
rm -rf inc.out
