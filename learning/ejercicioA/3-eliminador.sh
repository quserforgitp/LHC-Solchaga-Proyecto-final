#!/usr/bin/env bash

function eliminarArchivosViejos () {

    rm $(ls -t | awk 'NR>5')
    
    return 0
}
