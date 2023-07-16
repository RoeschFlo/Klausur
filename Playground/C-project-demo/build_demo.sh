#!/bin/bash -u
#---------------------------------------------------------------------------
#     SYNOPSIS: template_mini [-hv]
#  DESCRIPTION: build the C-project-demo executable
#     LANGUAGE: bash script
#       AUTHOR: <Michael.Zwanger@th-nuernberg.de>
#---------------------------------------------------------------------------

set -x
gcc -c main.c
gcc -c module1.c

gcc  -o main.exe main.o module1.o 

ls -l main.exe

exit 0
