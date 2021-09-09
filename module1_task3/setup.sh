#!/bin/sh
if ! command -v hugo &> /dev/null
then
    echo "hugo is not present"
fi

if ! command -v make &> /dev/null
then
    echo "make is not present"
fi

make build

