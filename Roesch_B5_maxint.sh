#!/bin/bash
#
#Author: Rösch Florian
#Name: B.5 maxint in bash
#Date:07.14.2023 (m.d.y)
#This script shows you the max number that can be stored in a variable in bash

for (( j=1000000000000000000; j>0; j/=10 )); do 
    echo "Zahl die dazu addiert wird $j"
    for ((i=k ; i>-1; )); do 
        k=$i
       i=$(( i + j ))
       echo "Aktueller Zählerstand $i"
    done   
done

echo "Stand nach überlauf $i"
maxint=$(( i - 1))
echo "Maximal möglche positive Zahl $maxint"
