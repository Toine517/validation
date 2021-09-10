#!/bin/bash
echo "testing for is hugo PRESENT"
if ! command -v hugo &> /dev/null
then
    echo "FAILS"
    exit
else
    echo "PASS"
fi

echo "testing for is make PRESENT"
if ! command -v make &> /dev/null
then
    echo "FAILS"
else
    echo "PASS"
fi

make build 2>&1

