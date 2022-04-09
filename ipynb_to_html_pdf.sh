#!/bin/bash

for FILE in $1
do
FNAME="${FILE##*/}"
FROOT="${FNAME%.*}"
jupyter-nbconvert "$FILE" --to html --output "../docs/$FROOT.html"
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --headless --disable-gpu --print-to-pdf-no-header --print-to-pdf="pdf/$FROOT.pdf" "docs/$FROOT.html"
done
