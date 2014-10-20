#!/bin/bash

set -e


SCRIPT=$(readlink -f "$0")
EXEPATH=$(dirname "$SCRIPT")


$EXEPATH/bin/e-reset.elf > e-reset.log

if [ $? -ne 0 ] 
then
    echo "$SCRIPT FAILED"
else
    echo "$SCRIPT PASSED"
fi

