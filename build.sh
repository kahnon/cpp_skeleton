#!/bin/bash

BUILDDIR=$1

if [ -z "$BUILDDIR" ]; then
  BUILDDIR="./build/"
fi

echo "Building in directory $BUILDDIR"

if [ ! -d "$BUILDDIR" ]; then 
  cmake -S . -B $BUILDDIR
fi

cmake --build $BUILDDIR -j
