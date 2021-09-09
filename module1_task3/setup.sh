#!/bin/bash
if ! command -v hugo &> /dev/null
then
    echo "hugo is not PRESENT"
    exit
else
    echo "hugo is PRESENT"
fi

if ! command -v make &> /dev/null
then
    echo "make is not PRESENT"
else
    echo "make is PRESENT"
fi

#make build

