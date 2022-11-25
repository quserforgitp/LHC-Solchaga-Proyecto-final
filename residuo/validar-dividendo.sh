#!/usr/bin/env bash

function validar_dividendo {
    if [[ $DIVIDENDO -lt 0  ]]; then
        DIVIDENDO=$(( $DIVIDENDO * -1 ))        
    fi

    return 0
}
