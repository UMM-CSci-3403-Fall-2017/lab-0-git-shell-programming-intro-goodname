#!/usr/bin/bash

##Name of compressed tgz file
$1=tarchive

##Name of Scratch directory
$2=scratchDir

##Extracts contents from big_dir.tgz into scratchDir
tar -xf big_dir.tgz --$scratchDir

##Finds all files in the scratchDir directory containing a "DELETE ME!" line
##and deletes that file
rm `grep -lr "DELETE ME!" $scratchDir`

##Create directory for cleaned tar files
`mkdir ./$scratchDir/cleaned_$tarchive`=cleanDir

##cp -R $scratchDir/. $cleanDir

##tar -z $cleanDir

##./$scratchDir/


