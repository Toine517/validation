#!/bin/bash
echo "testing for is hugo PRESENT"
if ! command -v hugo &> /dev/null
then
    echo FAILS
    echo installing hugo
    apt-get -qq update
    apt-get -y -qq install hugo
else
    echo PASS
fi

echo "testing for is make PRESENT"
if ! command -v make &> /dev/null
then
    echo FAILS
    echo installing make
    apt-get -qq update
    apt-get -y -qq install make
else
    echo "PASS"
fi

apt-get -y -qq install wget > NULL 2>&1
wget https://github.com/gohugoio/hugo/releases/download/v0.76.5/hugo_extended_0.76.5_Linux-64bit.deb > NULL 2>&1
dpkg -i hugo_extended_0.76.5_Linux-64bit.deb > NULL 2>&1

make build 2>&1

