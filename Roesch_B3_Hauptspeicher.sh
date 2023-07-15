#!/bin/bash
#
#Author: Rösch Florian
#Name: B.3 Hauptspeicher
#Date:07.14.2023 (m.d.y)

echo "Teilaufgabe 1"
free -g | awk '/Mem:/{print $2}'

echo "Teilaufgabe 2"
fGetHardwareMemorie () {
    free -g | awk '/Mem:/{print $2}'
}

speichergroesse=$(fGetHardwareMemorie)

echo "Teilfaufgabe 3"
if [ $speichergroesse -lt 2 ]; then
    echo Kinderrechner ;exit 0 ; fi  

if [ $speichergroesse -lt 9  ]; then
    echo Standartrechner ;exit 0 ; fi  

if [ $speichergroesse -gt 8 ]; then
    echo Profirechner ;exit 0 ; fi  


