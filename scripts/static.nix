#!/bin/bash

# -*- mode: sh; -*-

set -e
set -u

##################################################

# HELP="««« $(basename $0) INPUT »»»"

##################################################

# INPUT="${1:?$HELP}"

##################################################

# OUTPUT="${INPUT}"

##################################################

echo ========================================
echo

time  nix-build --show-trace  "./nix/static"  -A "skeletor-static"  -o "./result-static"

echo
echo ========================================

##################################################
