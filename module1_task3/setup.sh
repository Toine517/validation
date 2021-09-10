#!/bin/bash
echo "testing for hugo"
if ! command -v hugo &> /dev/null
then
    echo "FAILS"
    exit
else
    echo "PASS"
fi

echo "testing for make"
if ! command -v make &> /dev/null
then
    echo "FAILS"
else
    echo "PASS"
fi

#make build

