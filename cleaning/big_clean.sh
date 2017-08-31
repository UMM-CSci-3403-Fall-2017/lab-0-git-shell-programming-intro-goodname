#!/usr/bin/bash

##Name of compressed tgz file
tarchive=$1

##Name of Scratch directory
scratchDir=$2

##Saving starting directory
here=$(pwd)

##copying the tarchive file without the .tgz and saving it as a variable
tarName=$(echo $tarchive | cut -f 1 -d '.')

##Extracts contents from big_dir.tgz into scratchDir
tar -xf $tarchive --directory $scratchDir

##Moved into scratch directory
cd $scratchDir

##Finds all files in the scratchDir directory containing a "DELETE ME!" line
##and deletes that file
rm `grep -lr "DELETE ME!" $tarName`

##last argument tarchive without tgz
tar -zcf "cleaned_$tarchive" $tarName

##Move cleaned archive from scratch directory into cleaning
mv "cleaned_$tarchive" $here
