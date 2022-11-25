#!/usr/bin/env bash

# GLOBAL
DIVISOR=""
DIVIDENDO=""

function calcular_residuo {
    
    while [ $DIVISOR -le $DIVIDENDO ]
    do
        DIVIDENDO=$(( $DIVIDENDO - $DIVISOR ))
    done
    echo "el residuo es $DIVIDENDO"
    return 0
}

function validar_dividendo {
    if [[ $DIVIDENDO -lt 0  ]]; then
        DIVIDENDO=$(( $DIVIDENDO * -1 ))        
    fi

    return 0
}

function validar_divisor {

    if [[ $DIVISOR -eq 0  ]]; then
        echo "LA DIVISION POR CERO NO ESTA DEFINIDA!!!!"
        exit 1
    fi
    if [[ $DIVISOR -lt 0  ]]; then
        DIVISOR=$(( $DIVISOR * -1 ))        
    fi
    return 0
}

read -p "Dame el dividendo -> " DIVIDENDO
read -p "Dame el divisor -> " DIVISOR

validar_dividendo
validar_divisor
calcular_residuo $DIVIDENDO $DIVISOR # (DIVIDENDO,DIVISOR)
