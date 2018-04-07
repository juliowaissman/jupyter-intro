#!/bin/bash

jupyter-nbconvert --to slides jupyter_basico.ipynb --reveal-prefix=reveal.js
git add -A .
git commit -m "Actualiza"
git push origin master

