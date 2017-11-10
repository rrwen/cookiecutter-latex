#!/bin/bash
latex {{cookiecutter.tex_file}} -interaction=nonstopmode
bibtex {{cookiecutter.tex_file}}
latex {{cookiecutter.tex_file}} -interaction=nonstopmode
pdflatex {{cookiecutter.tex_file}} -interaction=nonstopmode