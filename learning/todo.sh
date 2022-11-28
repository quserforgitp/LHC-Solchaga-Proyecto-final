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
    echo $(cat /dev/urandom | tr -cd '[:alnum:]' | head -c $NUM_CARACTERES;echo) >> file$i.txt
done

tar --exclude='todo.sh' -cvzf "$(date +'%Y-%B-%d_%H-%M-%S').tar.gz" *.txt &> /dev/null
NAMES=$(tar -tf $(date +'%Y-%B-%d_%H-%M-%S').tar.gz)

rm $NAMES

echo
##echo "mostrando una lista de los 5 archivos mas nuevos"
##ls -t | awk 'NR<6'
##echo
##echo
##echo "mostrando lista de los archivos mas viejos excepto los 5 mas nuevos"

echo "$(ls -t | awk 'NR>5' | wc -w)"

if [[ $(ls -t | awk 'NR>5' | wc -w) -gt 0 ]];then
    rm $(ls -t | awk 'NR>5')
fi


exit 0
