#!/bin/bash

rm -rf plugins.txt

md5 collection/repository/components/plugins/* > plugins.txt
find . -type f > listOfFiles.list