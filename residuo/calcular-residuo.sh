#!/usr/bin/env bash

function calcular_residuo {
    
    while [ $DIVISOR -le $DIVIDENDO ]
    do
        DIVIDENDO=$(( $DIVIDENDO - $DIVISOR ))
    done
    echo "el residuo es $DIVIDENDO"
    return 0
}
