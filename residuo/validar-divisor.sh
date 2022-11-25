#!/usr/bin/env bash

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
