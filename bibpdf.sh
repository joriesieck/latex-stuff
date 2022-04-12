#!/bin/bash
# make sure given file exists
[ -f $1.tex ] || { echo "$1.tex does not exist"; exit 1;}

# clean up
echo "cleaning up: removing $1.aux $1.log $1.pdf $1.dvi $1.bbl $1.blg $1.toc $1.nav $1.out $1.snm"
rm $1.aux $1.log $1.pdf $1.dvi $1.bbl $1.blg $1.nav $1.out $1.snm

# compile with bibliography - latex bibtex latex latex
echo "compiling bibliography"
latex $1.tex
bibtex $1
latex $1.tex
latex $1.tex

# compile pdf from dvi
dvipdfm $1.dvi

# clean up
echo "cleaning up: removing $1.aux $1.dvi $1.bbl $1.blg $1.toc $1.nav $1.out $1.snm $1.log"
rm $1.aux $1.dvi $1.bbl $1.blg $1.nav $1.out $1.snm $1.log

exit 0