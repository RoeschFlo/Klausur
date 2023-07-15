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