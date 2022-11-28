#!/usr/bin/env bash

function empaquetarYcomprimir () {

    NOMBRE_TAR="$(date +'%Y-%B-%d_%H-%M-%S').tar.gz"

    tar  -cvzf "$NOMBRE_TAR" *.txt &> /dev/null

    borrarComprimidos $NOMBRE_TAR
    return 0

}

function borrarComprimidos () {
    
    NAMES=$(tar -tf $NOMBRE_TAR)
    rm $NAMES

    return 0
}
