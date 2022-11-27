#!/usr/bin/env bash

if [[ $# -lt 1 ]];then
    echo "indique el numero de archivos que quiere generar"
    echo "ej -> ./generador.sh 4"
    exit 1
fi

# constantes (#define macros)
readonly NUM_CARACTERES=100


VECES=$1

for (( i=0;i<$VECES;i++ ))
do
    echo $(cat /dev/urandom | tr -cd '[:alnum:]' | head -c $NUM_CARACTERES;echo) >> archivo$(( $i + 1 )).txt
done