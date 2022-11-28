#!/usr/bin/env bash

#   MACROS
readonly NUM_CARACTERES=100

function generarArchivos () {
    VECES=$1
    for (( i=0;i<$VECES;i++ ))
    do
        echo $(cat /dev/urandom | tr -cd '[:alnum:]' | head -c $NUM_CARACTERES;echo) >> file$i.txt
    done
    
    return 0
}

