#!/bin/bash

allUpdatePath=/Users/chamila/updates/wilkinson/4.6.0

rm -rf updates
mkdir updates
rm -rf collection
mkdir collection
rm -rf unzip
mkdir unzip
fileItemString=$(cat  list.txt |tr "\n" " ")
fileItemArray=($fileItemString)
#echo ${fileItemArray[*]}
for i in "${fileItemArray[@]}"
do
   : 
   cp $allUpdatePath/$i updates/
done

unzip updates/\*.zip -d unzip/
echo "\nCopy extracted content to aggregated location...\n"
for file in */*/  ; 
do 
    echo $file; 
    cp -rf $file/carbon.home/ collection/
done

sh remove-content.sh