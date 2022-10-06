/*************************************************************************
 *                     Votante Latoski-Arenzon-Dantas 2D                  *
 *                             V1.07 18/06/2021                           *
 *************************************************************************/

/***************************************************************
 *                    OBRIGATORY DEFINITIONS
 **************************************************************/
// -D L="LATTICE_SIZE"
// -D DETA="ETA_INCREMENT"

/***************************************************************
 *                     OPTIONAL DEFINITIONS
 **************************************************************/
// -DNBINARY [non binary case]
// -DRESET  [full reset case]
// -DGRESET [gamma reset case]
// -DINTRANS [intrans case]

// -DSPEEDTEST [sweep and measure speed test]
// -DDEBUG [debug program]
// -DVISUAL [live gif of the evolution]
// -DSNAPSHOTS -I ~/VotanteLAD/liblat2eps/ -llat2eps [snapshots of the system]

/***************************************************************
 *                            INCLUDES                      
 **************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <string.h>
#include <stdbool.h>
#include <unistd.h>
#include "mc.h"

/****************************************************************
 *                       PARAMETERS DEFINITIONS                      
 ***************************************************************/

#define N          (L*L)  //Lattice volume
#define MCS         1E8 //Max evolution time
#define THRESHOLD   1. //Certainty's treshold
/***************************************************************
 *                            FUNCTIONS                       
 **************************************************************/
void structure(void);
void initialize(void);
void sweep(void);
void openfiles(void);
/***************************************************************
 *                         GLOBAL VARIABLES                   
 **************************************************************/

FILE *fp1,*fp2;
int *spin,**neigh,*measures,*zealot,*right,*left,*up, *down;
int *qt;
unsigned long seed;
long SOMA,SOMA2;
double DETA;
double *certainty;

/***************************************************************
 *                          MAIN PROGRAM  
 **************************************************************/
int main(void){
  structure();
  seed = time(0);
  DETA=(double)STEP/1000;
  openfiles();
  for(int i=0; i<SAMPLES; i++){
    initialize();
    for (int j=0;j<MCS;j++)  {
      if(  ( qt[1]==0 ) | ( qt[0]==0 )){
	fprintf(fp1,"%d\n",j);
	fflush(fp1);
	SOMA+=j;
	SOMA2+=j*j;
	break;
      }
      sweep();
    }
    seed=seed+2;
  }
  fclose(fp1);
}
/***************************************************************
 *                        INICIALIZAÇÃO  
 **************************************************************/
void structure(void) {
  neigh = (int**)malloc(N*sizeof(int*));
  right = malloc(N*sizeof(int));
  left = malloc(N*sizeof(int));
  up = malloc(N*sizeof(int));
  down = malloc(N*sizeof(int));
  for(int i=0; i<N; i++){
    neigh[i] = (int*)malloc(4*sizeof(int));
  }
  for (int i = 0; i < N; i++) {
    neigh[i][0] = (i+1)%L + (i/L)*L; //right
    neigh[i][1] = (i-1+L)%L + (i/L)*L; //left
    neigh[i][2] = (i-L+N)%N; //up
    neigh[i][3] = (i+L)%N; //down
    right[i] = neigh[i][0];
    left[i] = neigh[i][1];
    up[i] = neigh[i][2];
    down[i] = neigh[i][3];
  }
}

/***************************************************************
 *                        INICIALIZAÇÃO  
 **************************************************************/
void initialize(void) {
  start_randomic(seed);
  spin = malloc(N*sizeof(int));
  zealot = malloc(N*sizeof(int));
  certainty = malloc(N*sizeof(double));
  qt = malloc(2*sizeof(int));
  int k;
  for(int n=0; n<N; n++) {
    certainty[n] = 1;
    zealot[n] = 1;
    int k=FRANDOM*2;
    spin[n] = k*2 - 1; 
    qt[k]++;
  }
}

/****************************************************************
 *               MCS routine
 ***************************************************************/
void sweep(void) {
  int site;
  int dir;
  int neighbour;
  for (int n=0; n<N; n++) {
    site = FRANDOM*N;
    dir = FRANDOM*4;
    neighbour = neigh[site][dir];
    if(spin[site]!=spin[neighbour]) {
      if(zealot[site] == 0){
	qt[(spin[site] + 1 )/2]--;
	spin[site] = spin[neighbour];
	qt[(spin[neighbour] + 1 )/2]++;
      }
      certainty[neighbour] += DETA;
      certainty[site] = 0;
      if(certainty[site]<=THRESHOLD)zealot[site]=0;
      if(certainty[neighbour]>=THRESHOLD)zealot[neighbour]=1;
    }
    else{
      certainty[site] += DETA;
      certainty[neighbour] += DETA;
      if(certainty[site]>=THRESHOLD)zealot[site]=1;
      if(certainty[neighbour]>=THRESHOLD)zealot[neighbour]=1;
      continue;
    }
  }
}

/**************************************************************
 *               Open output files routine                   
 *************************************************************/

void openfiles(void) {
  char output_file1[300];
  char teste[250];
  sprintf(output_file1,"%.5f",DETA);
  fp1 = fopen(output_file1,"a");
  fflush(fp1);
  return;
}
