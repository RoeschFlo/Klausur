#!/bin/bash
#
#Author: Rösch Florian
#Name: B.3 Hauptspeicher
#Date:07.14.2023 (m.d.y)
# In Teilaufgabe 1 the srcipt outputs the free ram 
# In Teilaufgabe 2 the srcipt outputs the free ram but with the use of a function call
# In Teilaufgabe 3 the srcipt sorts your  system in a categorie depending on the size of 
# your ram 



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


