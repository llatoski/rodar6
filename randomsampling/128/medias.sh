#!/bin/bash
rm -rf *.dsf
for FILE in 0.* ;
    do 
        awk -f medias.awk $FILE >> medias.dsf
    done