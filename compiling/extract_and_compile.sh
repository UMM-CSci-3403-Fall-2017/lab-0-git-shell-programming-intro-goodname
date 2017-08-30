#!/usr/bin/bash
echo "hi"
firstNum=$1
dirName=$2

tar -xf NthPrime.tgz --$dirName

echo "hi"

gcc ./NthPrime/*.c -o ./NthPrime/NthPrime

./NthPrime/NthPrime $firstNum








