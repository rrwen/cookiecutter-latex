#!/bin/bash
latex {{cookiecutter.tex_file}} -interaction=nonstopmode
bibtex {{cookiecutter.tex_file}}.aux
latex wen2017_reviewparamoptml.tex -interaction=nonstopmode
pdflatex {{cookiecutter.tex_file}} -interaction=nonstopmode