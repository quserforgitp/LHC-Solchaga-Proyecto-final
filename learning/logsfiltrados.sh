#!/usr/bin/env bash

function mostrarLogsOrdenados () {

    cat /var/log/syslog | awk '{ $1=$2=$3=$4=""; print $0 }' | sort | uniq --count | sort --ignore-case --reverse --numeric-sort | head -n 20

    return 0
}

mostrarLogsOrdenados

exit 0
