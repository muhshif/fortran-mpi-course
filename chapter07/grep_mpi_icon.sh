#!/bin/bash
# Helper script to grep MPI calls in ICON source

echo "Searching for MPI calls in ICON source tree..."
grep -rn 'MPI_' ./src | grep -v '.mod' | less
