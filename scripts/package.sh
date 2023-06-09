#!/usr/bin/bash

#Check program requirements
if ! command -v tar &> /dev/null
then
    echo "tar is required to use this program"
    exit 1
fi
if ! command -v xz &> /dev/null
then
    echo "xz is required to use this"
    exit 1
fi

rm *.xz
tar -cJf automcserver.tar.xz ./*

#Set up folders