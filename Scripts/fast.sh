#!/bin/bash

# Shift workspace
cd ..

# Input the directory
echo Please input the file that you want to create
read filename
mkdir $filename

# Shift workspace and touch files
cd ./$filename
touch README.md
echo "# The content is under construction <br>" >> README.md
echo "![](http://5b0988e595225.cdn.sohucs.com/images/20180921/27badd82e5b14253b6397d9b0fe4ff4b.gif)" >> README.md
cd ..

# Append the file to the SUMMARY.md
sed -i '/TODO/i\\* ['$filename']('$filename'\/README.md)' SUMMARY.md

