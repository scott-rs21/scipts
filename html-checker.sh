#!/bin/bash
# Settings to make bash more strict in handling errors and splitting strings
set -euo pipefail
IFS=$'\n\t'

tarball=$1

if [ "$tarball" == "" ] || [ ! -s $tarball ]; then
  echo "Unable to find tarball artifact."
  exit 1
fi

if [ -d source ]; then
  rm -rf source
fi

mkdir source
cd source
tar fxvz ../$tarball
ls -l
exit 0
