#!/bin/bash 
#SBATCH -n 1 # Numero de CPU cores a serem alocados 
#SBATCH -N 1 # Numero de nodes a serem alocados
#SBATCH -t 90-00:00 # Tempo limite de execucao (D-HH:MM)
#SBATCH -p long # Particao (fila) a ser submetido
#SBATCH --qos qos_long # QOS 
  
# Comandos de execução do seu programa:
inc0=1; inc1=2; inc2=3; inc3=4; inc4=5; inc5=6; inc6=7; inc7=8; inc8=9; inc9=10; inc10=11; inc11=12; inc12=13; inc13=14; inc14=15; inc15=16; inc16=17; inc17=18; inc18=19; inc19=20; inc20=21; inc21=22; inc22=23; inc23=24; inc24=25; inc25=26; inc26=27; inc27=28; inc28=29; inc29=30; inc30=34; inc31=38; inc32=43; inc33=49; inc34=55; inc35=62; inc36=70; inc37=78; inc38=88; inc39=99;
SAMP=10000
SIZ=128
for i in $(seq 0 1 39);
do
    gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D STEP=$((inc$i)) -o inc$i.out -std=c99
    ./inc$i.out
    rm -rf inc$i.out
done
