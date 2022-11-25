#!/usr/bin/env bash


DIVIDENDO=$1
DIVISOR=$2

while [ $DIVISOR -le $DIVIDENDO ]
do
    DIVIDENDO=$(( $DIVIDENDO - $DIVISOR ))
    echo "RESULTADO ES = $DIVIDENDO"
    sleep 2s
done
echo "el residuo es $DIVIDENDO"
