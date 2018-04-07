#!/bin/bash

# jupyter-nbconvert --to slides jupyter_basico.ipynb --reveal-prefix=reveal.js
jupyter-nbconvert --to slides jupyter_basico.ipynb --reveal-prefix="https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.1.0"
mv jupyter_basico.slides.html index.html
git add -A .
git commit -m "Actualiza"
git push origin master

