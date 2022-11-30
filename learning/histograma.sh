#!/usr/bin/env bash

function hacerHistograma () {
    awk '{$1=sprintf("%-*s", $1, ""); gsub(" ", "=", $1); printf("%-10s%s\n", $2, $1)}'
    return 0
}

hacerHistograma

