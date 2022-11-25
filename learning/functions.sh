#!/usr/bin/env bash

function decir_hola {
    echo "funcion_hola $1"
    return 0
}

function decir_adios {
    echo "funcion_adios $1"
    return 0
}

function dormir {
    echo "durmiendo 2s"
    sleep 2s
    return 0
}

function ultimo_codigo_salida {
    echo "el anterior script arrojo un codigo de salida -> [$?]"
}

decir_hola "helios"
ultimo_codigo_salida
dormir
decir_adios "helios 2"
ultimo_codigo_salida
dormir

echo "fin del script $0"
