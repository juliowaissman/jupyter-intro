#!/bin/bash

# Convierte la libreta a slides y le cambia el nombre a index.html

# jupyter-nbconvert --to slides jupyter_basico.ipynb --reveal-prefix=reveal.js
jupyter-nbconvert --to slides jupyter_basico.ipynb --reveal-prefix="https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.1.0"
mv jupyter_basico.slides.html index.html

# Actualiza la rama master

git add -A .
git commit -m "Actualiza"
git push origin master

# Actualiza la rama gh-pages

git checkout gh-pages
git rebase master
git push origin gh-pages
git checkout master
