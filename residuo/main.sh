#!/usr/bin/env bash

#GLOBAL
DIVISOR=""
DIVIDENDO=""

read -p "Dame el dividendo -> " DIVIDENDO
read -p "Dame el divisor -> " DIVISOR

source ./calcular-residuo.sh
source ./validar-dividendo.sh
source ./validar-divisor.sh

validar_dividendo
validar_divisor
calcular_residuo $DIVIDENDO $DIVISOR # (DIVIDENDO,DIVISOR)
