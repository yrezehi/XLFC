#!/bin/bash

for ARGUMENT in "$@"; do
    export "${ARGUMENT%%=*}"="${ARGUMENT#*=}";
done

# 
if [ ! -f /bin/sh ]; then
    echo "\nWARNING: no hard link to bash"
fi

# binutils less than 2.41
if ! [ -x "$(command -v binutils)" ]; then
    echo "\nERROR: binutils is not installed on the system!"
fi