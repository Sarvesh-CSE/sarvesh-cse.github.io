#!/bin/sh
# Builds both CVs from the single source cv.tex.
#
#   cv.tex  ->  cv.pdf              working copy, red [TO COMPLETE] prompts visible
#           ->  ../cv.pdf           public copy, incomplete sections omitted
#
# The public copy sits at the site root and is served at
# https://sarvesh-cse.github.io/cv.pdf
#
# Run from this directory:  sh build.sh

set -e
cd "$(dirname "$0")"

echo "Building working copy (with TO COMPLETE prompts)..."
pdflatex -interaction=nonstopmode -halt-on-error cv.tex > /dev/null
echo "  -> cv.pdf"

echo "Building public copy (incomplete sections omitted)..."
pdflatex -interaction=nonstopmode -halt-on-error \
  -jobname=cv-public "\def\PUBLICBUILD{}\input{cv.tex}" > /dev/null
cp cv-public.pdf ../cv.pdf
echo "  -> ../cv.pdf  (published)"

echo
echo "Done. Commit and push to publish:"
echo "  cd .. && git add -A && git commit -m 'Update CV' && git push"
