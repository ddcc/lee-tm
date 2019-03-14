#!/bin/bash

set -e

if [ $# -ne 2 ]; then
  echo "$0 <input> <iterations>"
  exit
fi

for i in 4 16 64 128; do
  for j in $(seq 0 ${2}); do
    ./lee -f ${1} -t ${i} >> lee-$(basename ${1}).$i.log
  done
done
