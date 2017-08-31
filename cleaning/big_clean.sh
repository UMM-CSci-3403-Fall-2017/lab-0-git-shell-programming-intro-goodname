#!/usr/bin/bash

##Name of compressed tgz file
tarchive=$1

##Name of Scratch directory
scratchDir=$2

##Extracts contents from big_dir.tgz into scratchDir
tar -xf big_dir.tgz --$scratchDir

tar -czf cleaned_$tarchive $(pwd)

##Finds all files in the scratchDir directory containing a "DELETE ME!" line
##and deletes that file
rm `grep -lr "DELETE ME!" $scratchDir`

##Create directory for cleaned tar files
##`mkdir ./$scratchDir/cleaned_$tarchive`=cleanDir

cp -R $scratchDir/. $cleanDir


