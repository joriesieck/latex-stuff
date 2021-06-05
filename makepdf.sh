#!/bin/bash
# make sure given file exists
[ -f $1.tex ] || { echo "$1.tex does not exist"; exit 1;}

# clean up
echo "cleaning up: removing $1.aux $1.log $1.pdf"
rm $1.aux $1.log $1.pdf

# convert to pdf
echo "converting to pdf"
pdflatex $1.tex

# remove aux and log files
echo "cleaning up: removing $1.aux $1.log"
rm $1.aux $1.log

exit 0
