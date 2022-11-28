#!/usr/bin/env bash

if [[ $# -ne 1 ]];then
    echo "Indique el numero de archivos que quiere generar"
    echo "ej -> ./main.sh 4"
    exit 1
fi

#   ALMACENANDO VALOR PROVEIDO POR USUARIO

NUM_ARCHIVOS=$1

#   IMPORTANDO FUNCIONALIDADES
source ./1-generador.sh
source ./2-compresor.sh
source ./3-eliminador.sh

generarArchivos $NUM_ARCHIVOS
empaquetarYcomprimir

## DEBUG manteniendo los archivos .sh
touch *.sh

# Si hay mas de 5 archivos, entonces elimina los mas viejos
if [[ $(ls -t | awk 'NR>5' | wc -w) -gt 0 ]];then
    eliminarArchivosViejos
fi

exit 0
