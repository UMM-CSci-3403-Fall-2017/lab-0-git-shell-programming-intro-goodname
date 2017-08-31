#!/usr/bin/bash

##Name of compressed tgz file
tarchive=$1

##Name of Scratch directory
scratchDir=$2

here=$(pwd)

tarName=$(echo $tarchive | cut -f 1 -d '.')

##Extracts contents from big_dir.tgz into scratchDir
tar -xf $tarchive --directory $scratchDir

cd $scratchDir

##Finds all files in the scratchDir directory containing a "DELETE ME!" line
##and deletes that file
rm `grep -lr "DELETE ME!" $tarName`

pwd 
ls
echo $tarName


##last argument tarchive without tgz
tar -zcf "cleaned_$tarchive" $tarName

cp -R $scratchDir/. ./cleaned_$tarchive
