#!/bin/bash
set -e

MSG="${1:-$(date +'%Y-%m-%d %H:%M')}"

git add -A
git commit -m "$MSG"
git push
quarto publish gh-pages
