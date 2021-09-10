#!/bin/bash
echo "testing for hugo"
if ! command -v hugo &> /dev/null
then
    echo "Fail"
    exit
else
    echo "PASS"
fi

echo "testing for make"
if ! command -v make &> /dev/null
then
    echo "FAIL"
else
    echo "PASS"
fi

#make build

