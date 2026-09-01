#!/bin/sh
# Local build. Optional — GitHub Actions rebuilds the public CV automatically
# whenever cv.tex is pushed, so you only need this if you want to preview
# changes before pushing.
#
#   cv.tex         ->  cv.pdf         working copy, red [TO COMPLETE] prompts
#   cv-public.tex  ->  ../cv.pdf      public copy, incomplete sections omitted
#
# The public copy is served at https://sarvesh-cse.github.io/cv.pdf
#
# Run from this directory:  sh build.sh

set -e
cd "$(dirname "$0")"

echo "Building working copy (with TO COMPLETE prompts)..."
pdflatex -interaction=nonstopmode -halt-on-error cv.tex > /dev/null
echo "  -> cv.pdf"

echo "Building public copy (incomplete sections omitted)..."
pdflatex -interaction=nonstopmode -halt-on-error cv-public.tex > /dev/null
cp cv-public.pdf ../cv.pdf
echo "  -> ../cv.pdf  (published)"

echo
echo "Done. Commit and push to publish:"
echo "  cd .. && git add -A && git commit -m 'Update CV' && git push"
