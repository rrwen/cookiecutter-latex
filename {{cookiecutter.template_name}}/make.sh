#!/bin/sh
pdflatex {{cookiecutter.tex_file}} -interaction=nonstopmode -halt-on-error
bibtex {{cookiecutter.tex_file}}
pdflatex {{cookiecutter.tex_file}} -interaction=nonstopmode -halt-on-error
pdflatex {{cookiecutter.tex_file}} -interaction=nonstopmode -halt-on-error