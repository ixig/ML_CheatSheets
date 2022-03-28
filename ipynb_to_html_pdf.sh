#!/bin/bash

for FILE in ipynb/*
do
FNAME="${FILE##*/}"
FROOT="${FNAME%.*}"
jupyter-nbconvert "$FILE" --to html --output "../html/$FROOT.html"
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --headless --disable-gpu --print-to-pdf-no-header --print-to-pdf="pdf/$FROOT.pdf" "html/$FROOT.html"
done