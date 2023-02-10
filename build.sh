#!/usr/bin/env bash

cd src || exit
pdflatex main.tex
find . -name "*.aux" -type f -delete
find . -name "*.log" -type f -delete
find . -name "*.out" -type f -delete
mv main.pdf ../main.pdf
cd .. || exit
