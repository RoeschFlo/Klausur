#!/bin/bash
#
#Author: Rösch Florian
#Name: B.4 Quadrat Zeichen
#Date:07.14.2023 (m.d.y)

if [ $# -ne 1 ]; then
    echo "Bitte geben Sie genau einen Parameter an."
    exit 1
fi

if [[ $1 =~ [^0-9] || $1 =~ [[:space:]] ]]; then
    echo "Der Parameter enthält Leerzeichen oder andere Zeichen als Ziffern."
    exit 1
fi

fenstergroesse=$(tput cols)

kantenlaenge=$1

if [[ kantenlaenge -gt fenstergroesse  ]]; then 
    echo "Sorry dein Input für die Kantenlänge ist größer als die Fensterbreite."
    echo  "Das Programm wird abgebrochen" ; exit 1
fi

kantenlaenge_klein=$(( kantenlaenge - 2 ))
hoehe=$(( kantenlaenge / 2 ))
hoehe=$(( hoehe - 2 ))


for ((i = 0 ; i < kantenlaenge ; i++)); do
    printf "*"
done

echo ""

for ((i = 0 ; i < hoehe ; i++)); do
    printf "*"
        for ((j = 0 ; j < kantenlaenge_klein ; j++)); do
        printf " "
        done
    printf "*"
    echo ""
done

for ((i = 0 ; i < kantenlaenge ; i++)); do
    printf "*"
done

echo ""
