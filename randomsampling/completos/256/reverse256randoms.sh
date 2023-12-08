#!/bin/bash 
#SBATCH -n 1 # Numero de CPU cores a serem alocados 
#SBATCH -N 1 # Numero de nodes a serem alocados
#SBATCH -t 90-00:00 # Tempo limite de execucao (D-HH:MM)
#SBATCH -p long # Particao (fila) a ser submetido
#SBATCH --qos qos_long # QOS 
  
# Comandos de execução do seu programa:
SAMP=400
SIZ=256
for i in $(seq 50 -1 1); 
do
    if [ "$i" == 1 ]; then DETA=1e-05
    fi
    if [ "$i" == 2 ]; then DETA=1.2648552168552958e-05
    fi
    if [ "$i" == 3 ]; then DETA=1.5998587196060572e-05
    fi
    if [ "$i" == 4 ]; then DETA=2.0235896477251556e-05
    fi
    if [ "$i" == 5 ]; then DETA=2.559547922699533e-05
    fi
    if [ "$i" == 6 ]; then DETA=3.237457542817647e-05
    fi
    if [ "$i" == 7 ]; then DETA=4.094915062380427e-05
    fi
    if [ "$i" == 8 ]; then DETA=5.1794746792312125e-05
    fi
    if [ "$i" == 9 ]; then DETA=6.55128556859551e-05
    fi
    if [ "$i" == 10 ]; then DETA=8.286427728546843e-05
    fi
    if [ "$i" == 11 ]; then DETA=0.00010481131341546853
    fi
    if [ "$i" == 12 ]; then DETA=0.00013257113655901095
    fi
    if [ "$i" == 13 ]; then DETA=0.00016768329368110083
    fi
    if [ "$i" == 14 ]; then DETA=0.00021209508879201905
    fi
    if [ "$i" == 15 ]; then DETA=0.0002682695795279727
    fi
    if [ "$i" == 16 ]; then DETA=0.000339322177189533
    fi
    if [ "$i" == 17 ]; then DETA=0.00042919342601287783
    fi
    if [ "$i" == 18 ]; then DETA=0.0005428675439323859
    fi
    if [ "$i" == 19 ]; then DETA=0.0006866488450042998
    fi
    if [ "$i" == 20 ]; then DETA=0.000868511373751353
    fi
    if [ "$i" == 21 ]; then DETA=0.0010985411419875584
    fi
    if [ "$i" == 22 ]; then DETA=0.0013894954943731374
    fi
    if [ "$i" == 23 ]; then DETA=0.001757510624854793
    fi
    if [ "$i" == 24 ]; then DETA=0.0022229964825261957
    fi
    if [ "$i" == 25 ]; then DETA=0.002811768697974231
    fi
    if [ "$i" == 26 ]; then DETA=0.0035564803062231283
    fi
    if [ "$i" == 27 ]; then DETA=0.004498432668969444
    fi
    if [ "$i" == 28 ]; then DETA=0.005689866029018299
    fi
    if [ "$i" == 29 ]; then DETA=0.0071968567300115215
    fi
    if [ "$i" == 30 ]; then DETA=0.009102981779915217
    fi
    if [ "$i" == 31 ]; then DETA=0.011513953993264481
    fi
    if [ "$i" == 32 ]; then DETA=0.014563484775012445
    fi
    if [ "$i" == 33 ]; then DETA=0.018420699693267165
    fi
    if [ "$i" == 34 ]; then DETA=0.023299518105153717
    fi
    if [ "$i" == 35 ]; then DETA=0.029470517025518096
    fi
    if [ "$i" == 36 ]; then DETA=0.037275937203149416
    fi
    if [ "$i" == 37 ]; then DETA=0.04714866363457394
    fi
    if [ "$i" == 38 ]; then DETA=0.05963623316594643
    fi
    if [ "$i" == 39 ]; then DETA=0.07543120063354623
    fi
    if [ "$i" == 40 ]; then DETA=0.09540954763499944
    fi
    if [ "$i" == 41 ]; then DETA=0.1206792640639329
    fi
    if [ "$i" == 42 ]; then DETA=0.15264179671752334
    fi
    if [ "$i" == 43 ]; then DETA=0.19306977288832497
    fi
    if [ "$i" == 44 ]; then DETA=0.244205309454865
    fi
    if [ "$i" == 45 ]; then DETA=0.30888435964774846
    fi
    if [ "$i" == 46 ]; then DETA=0.3906939937054621
    fi
    if [ "$i" == 47 ]; then DETA=0.49417133613238384
    fi
    if [ "$i" == 48 ]; then DETA=0.6250551925273976
    fi
    if [ "$i" == 49 ]; then DETA=0.7906043210907702
    fi
    if [ "$i" == 50 ]; then DETA=1.0
    fi
    gcc randomsamples.c -lm -O3 -D L=$SIZ -D SAMPLES=$SAMP -D DETA=$DETA -o inc.out -std=c99
    ./inc.out
    rm -rf inc.out
done
