#!/usr/bin/bash


##First argument passed in, used in the NthPrime program
firstNum=$1

##Second argument passed in, used to save the uncompressed and extracted
##gunzip file
dirName=$2

##Extracts NthPrime.gtz to the give directory
tar -xf NthPrime.tgz --$dirName

##Compiles the NthPrime file to NthPrime directory and makes it executable
gcc ./NthPrime/*.c -o ./NthPrime/NthPrime

##Runs the NthPrime program with the given argument
./NthPrime/NthPrime $firstNum








