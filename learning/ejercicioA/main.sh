#!/usr/bin/env bash

if [[ $# -ne 1 ]];then
    echo "Indique el numero de archivos que quiere generar"
    echo "ej -> ./main.sh 4"
    exit 1
fi

# CREANDO CARPETA DE PRUEBAS
if [ -d ./pruebas ] ; then
    echo "carpeta pruebas ya existe!"
    echo "voy a poner los archivos ahi"
else {
    mkdir pruebas
}
fi  

# CONSTANTE NOMBRE DE LA CARPETA EN DONDE TODO SUCEDE

readonly CARPETA="pruebas"

#   ALMACENANDO VALOR PROVEIDO POR USUARIO

NUM_ARCHIVOS=$1

#   IMPORTANDO FUNCIONES DESDE OTROS SCRIPTS
source ./1-generador.sh
source ./2-compresor.sh
source ./3-eliminador.sh

cd $CARPETA
generarArchivos $NUM_ARCHIVOS 
empaquetarYcomprimir

## DEBUG manteniendo los archivos .sh
##touch *.sh

# Si hay mas de 5 archivos, entonces elimina los mas viejos
if [[ $(ls -t | awk 'NR>5' | wc -w) -gt 0 ]];then

    eliminarArchivosViejos 
fi

exit 0
