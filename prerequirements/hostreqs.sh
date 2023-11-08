#!/bin/bash

for ARGUMENT in "$@"; do
    export "${ARGUMENT%%=*}"="${ARGUMENT#*=}";
done

# if prompt type is sh-bash
if [ ! -f /bin/sh ]; then
    echo "\nWARNING: no hard link to bash"
fi

# binutils less than 2.41
if ! [ -x "$(command -v binutils)" ]; then
    echo "\nERROR: binutils is not installed on the system!"
fi

# if prompt type is sh-bash
if [ ! -f /usr/bin/yacc ]; then
    echo "\nWARNING: no hard link to bison"
fi

if ! [ -x "$(command -v diffutils)" ]; then
    echo "\nERROR: diffutils is not installed on the system!"
fi

if ! [ -x "$(command -v findutils)" ]; then
    echo "\nERROR: findutils is not installed on the system!"
fi

# if prompt type is sh-bash
if [ ! -f /usr/bin/awk ]; then
    echo "\nWARNING: no hard link to gawk"
fi

if ! [ -x "$(command -v gcc)" ]; then
    echo "\nERROR: GCC is not installed on the system!"
fi

if ! [ -x "$(command -v grep)" ]; then
    echo "\nERROR: Grep is not installed on the system!"
fi