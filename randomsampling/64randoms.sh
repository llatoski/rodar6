#!/bin/bash 
#SBATCH -n 1 # Numero de CPU cores a serem alocados 
#SBATCH -N 1 # Numero de nodes a serem alocados
#SBATCH -t 90-00:00 # Tempo limite de execucao (D-HH:MM)
#SBATCH -p long # Particao (fila) a ser submetido
#SBATCH --qos qos_long # QOS 
  
# Comandos de execução do seu programa:
SAMP=100000
SIZ=64

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.001 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00106082 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00112534 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00119378 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00126638 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.0013434 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.0014251 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00151178 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00160372 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00170125 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00180472 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00191448 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00203092 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00215443 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00215443 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00228546 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00242446 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00257191 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00272833 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00289427 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00307029 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00325702 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00345511 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00366524 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00388816 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00412463 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00437548 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00464159 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00492388 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00522335 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00554102 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00587802 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00623551 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00661474 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00701704 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.0074438 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00789652 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00837678 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00888624 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.00942668 -o inc.out -std=c99
./inc.out
rm -rf inc.out

gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=0.01 -o inc.out -std=c99
./inc.out
rm -rf inc.out

