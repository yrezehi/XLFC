#!/bin/bash

# Edit .bash_profile in both of home directory and /root/ run current file

if [[ -z "${LFS}" ]]; then
  export LFS=/mnt/lfs
fi
