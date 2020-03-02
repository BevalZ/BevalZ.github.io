#!/bin/bash
# latex file convert

echo Please input the file to convert:
read filename
latex $filename.tex
dvipdfmx $filename.div
rm *.aux *.dvi *.log
