#!/usr/bin/env bash

function eliminarArchivosViejos () {

    rm $(ls -t | awk 'NR>5')
    cd ..
    
    return 0
}
