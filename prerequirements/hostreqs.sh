#!/bin/bash

for ARGUMENT in "$@"; do
    export "${ARGUMENT%%=*}"="${ARGUMENT#*=}";
done

# if prompt type is sh-bash
if [ ! -f /bin/sh ]; then
    echo -e "\nWARNING: no hard link to bash"
fi

# binutils less than 2.41
if ! [ -x "$(command -v binutils)" ]; then
    echo -e "\nERROR: binutils is not installed on the system!"
fi

# if prompt type is sh-bash
if [ ! -f /usr/bin/yacc ]; then
    echo -e "\nWARNING: no hard link to bison"
fi

if ! [ -x "$(command -v diffutils)" ]; then
    echo -e "\nERROR: diffutils is not installed on the system!"
fi

if ! [ -x "$(command -v findutils)" ]; then
    echo -e "\nERROR: findutils is not installed on the system!"
fi

# if prompt type is sh-bash
if [ ! -f /usr/bin/awk ]; then
    echo -e "\nWARNING: no hard link to gawk"
fi

if ! [ -x "$(command -v gcc)" ]; then
    echo -e "\nERROR: GCC is not installed on the system!"
fi

if ! [ -x "$(command -v grep)" ]; then
    echo -e "\nERROR: Grep is not installed on the system!"
fi

if ! [ -x "$(command -v gzip)" ]; then
    echo -e "\nERROR: Gzip is not installed on the system!"
fi

if [ -f /proc/version ]; then
    echo -e "\nKernal: "
    cat /proc/version
    echo -e " has to be newer than 4.14!"   
fi

if ! [ -x "$(command -v m4)" ]; then
    echo -e "\nERROR: M4 is not installed on the system!"
fi

if ! [ -x "$(command -v make)" ]; then
    echo -e "\nERROR: Make is not installed on the system!"
fi

if ! [ -x "$(command -v patch)" ]; then
    echo -e "\nERROR: Patch is not installed on the system!"
fi

if ! [ -x "$(command -v perl)" ]; then
    echo -e "\nERROR: Perl is not installed on the system!"
fi

if ! [ -x "$(command -v python)" ]; then
    echo -e "\nERROR: Python is not installed on the system!"
fi

if ! [ -x "$(command -v sed)" ]; then
    echo -e "\nERROR: Sed is not installed on the system!"
fi

if ! [ -x "$(command -v tar)" ]; then
    echo -e "\nERROR: Tar is not installed on the system!"
fi

if ! [ -x "$(command -v texinfo)" ]; then
    echo -e "\nERROR: Texinfo is not installed on the system!"
fi

if ! [ -x "$(command -v xz)" ]; then
    echo -e "\nERROR: XZ is not installed on the system!"
fi

echo "Standard Report: \n"
cat > hostreqs.sh << "EOF"