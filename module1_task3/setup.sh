#!/bin/bash
echo "testing for is hugo PRESENT"
if ! command -v hugo &> /dev/null
then
    echo FAILS
    echo installing hugo
    apt-get update
    apt-get install hugo
else
    echo PASS
fi

echo "testing for is make PRESENT"
if ! command -v make &> /dev/null
then
    echo FAILS
    echo installing make
    apt-get update
    apt-get install make
else
    echo "PASS"
fi

make build 2>&1

