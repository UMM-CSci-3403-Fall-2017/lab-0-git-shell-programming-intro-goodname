#!/usr/bin/bash

##Name of compressed tgz file
tarchive=$1

##Name of Scratch directory
scratchDir=$2

here=$(pwd)

##Extracts contents from big_dir.tgz into scratchDir
tar -xf $tarchive --directory $scratchDir

cd $scratchDir

tar -czf cleaned_$tarchive $here

##Finds all files in the scratchDir directory containing a "DELETE ME!" line
##and deletes that file
rm `grep -lr "DELETE ME!" $scratchDir`

##Create directory for cleaned tar fileis
##`mkdir ./$scratchDir/cleaned_$tarchive`=cleanDir

cp -R $scratchDir/. ./cleaned_$tarchive
