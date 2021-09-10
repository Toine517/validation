#!/bin/bash
echo "testing for is hugo PRESENT"
if ! command -v hugo &> /dev/null
then
    echo FAILS
    echo installing hugo
    apt-get update
    apt-get -y install hugo
else
    echo PASS
fi

echo "testing for is make PRESENT"
if ! command -v make &> /dev/null
then
    echo FAILS
    echo installing make
    apt-get update
    apt-get -y install make
else
    echo "PASS"
fi

apt-get -y install wget
wget https://github.com/gohugoio/hugo/releases/download/v0.76.5/hugo_extended_0.76.5_Linux-64bit.deb
dpkg -i hugo_extended_0.76.5_Linux-64bit.deb

make build 2>&1

