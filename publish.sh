#!/bin/bash

jupyter-nbconvert --to slides jupyter_basico.ipynb --reveal-prefix=reveal.js
mv jupyter_basico.slides.html  index.html
mkdir -p /tmp/workspace
cp -r * /tmp/workspace/
git add -A .
git commit -m "Actualiza"
git checkout -B gh-pages
cp -r /tmp/workspace/* .
git add -A .
git commit -m "nueva version"
git push origin master gh-pages
git checkout master
rm -rf /tmp/workspace
