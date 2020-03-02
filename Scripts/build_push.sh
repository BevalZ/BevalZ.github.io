#!/bin/bash

# Variaties
time=$(date "+%Y-%m-%d %H:%M:%S")


# Shift workspace
cd ..
echo "The current  directory is \n"
pwd

# Build book
echo "Start to build book\n"
gitbook build
echo "The book has beem build\n"

# Shift workspace
cd ..
cd brach\ of\ B\&C/
echo "The current  directory is \n"
pwd

## Delete all content 
rm -fr ./*
echo "\n"
echo "Old build has been cleaned\n"

## Copy the latest version of book
echo "Start to Copy the latest version"
cp -r ../bioinformatics_clinical/_book/* ./

## Git version control
git add .
git commit -m "Update at $time"
git push

echo "The latest version of book has been uploaded successfully at $time"

# push to github
cd ..
pwd
git clone https://github.com/BevalZ/BevalZ.github.io.git
cd BevalZ.github.io/
rm -fr ./*
cp -r ../bioinformatics_clinical/_book/* ./
git add .
git commit -m "Update at $time"
git push
cd ..
rm -fr BevalZ.github.io/
