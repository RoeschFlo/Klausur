#!/bin/bash
#
#Author: Rösch Florian
#Name: B.2 Dateien Suchen
#Date:07.14.2023 (m.d.y)

#Teilaufgabe 1
echo "Teilaufgabe 1" 
ls | grep -E '^2019' 
echo

#Teilaufgabe 2
echo "Teilaufgabe 2"
ls | grep -E '^[0-9]{4}0101'
echo

#Teilaufgabe 3
echo "Teilaufgabe 3"
find  -type d | rev | cut -d'/' -f1 | rev | grep -E '^[A-Z][^[:space:]]*'


