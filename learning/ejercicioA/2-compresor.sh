#!/usr/bin/env bash

function empaquetarYcomprimir () {

    tar --exclude='todo.sh' -cvzf "$(date +'%Y-%B-%d_%H-%M-%S').tar.gz" *.txt &> /dev/null

    borrarComprimidos
    return 0

}

function borrarComprimidos () {

    NAMES=$(tar -tf $(date +'%Y-%B-%d_%H-%M-%S').tar.gz)
    rm $NAMES
 
    return 0
}
