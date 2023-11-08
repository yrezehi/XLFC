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

if ! [ -x "$(command -v gzip)" ]; then
    echo "\nERROR: Gzip is not installed on the system!"
fi

if [ -f /proc/version ]; then
    echo "\nKernal: "
    cat /proc/version
    echo " has to be newer than 4.14!"   
fi

if ! [ -x "$(command -v m4)" ]; then
    echo "\nERROR: M4 is not installed on the system!"
fi

if ! [ -x "$(command -v make)" ]; then
    echo "\nERROR: Make is not installed on the system!"
fi

if ! [ -x "$(command -v patch)" ]; then
    echo "\nERROR: Patch is not installed on the system!"
fi

if ! [ -x "$(command -v perl)" ]; then
    echo "\nERROR: Perl is not installed on the system!"
fi

if ! [ -x "$(command -v python)" ]; then
    echo "\nERROR: Python is not installed on the system!"
fi

if ! [ -x "$(command -v sed)" ]; then
    echo "\nERROR: Sed is not installed on the system!"
fi

if ! [ -x "$(command -v tar)" ]; then
    echo "\nERROR: Tar is not installed on the system!"
fi

if ! [ -x "$(command -v texinfo)" ]; then
    echo "\nERROR: Texinfo is not installed on the system!"
fi

if ! [ -x "$(command -v xz)" ]; then
    echo "\nERROR: XZ is not installed on the system!"
fi

cat > hostreqs.sh << "EOF"