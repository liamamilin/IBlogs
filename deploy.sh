#!/bin/bash
set -e

MSG="${1:-$(date +'%Y-%m-%d %H:%M')}"

git add -A
git commit -m "$MSG"
git push
QUARTO="/Applications/RStudio.app/Contents/Resources/app/quarto/bin/quarto"
$QUARTO publish gh-pages
