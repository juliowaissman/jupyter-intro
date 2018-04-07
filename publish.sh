#!/bin/bash

jupyter-nbconvert --to slides jupyter_basico.ipynb --reveal-prefix=reveal.js
mv jupyter_basico.slides.html index.html
git add -A .
git commit -m "Actualiza"
git push origin master

