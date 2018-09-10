#!/bin/bash

tarball=$1

if [ "$tarball" == "" ] || [ ! -s $tarball ]; then
  echo "Unable to find tarball artifact."
  exit 1
fi

mkdir source
cd source
tar fxvz ../$tarball
ls -l
exit 0
