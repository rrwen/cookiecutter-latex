#!/bin/bash
latex {{cookiecutter.tex_file}}.tex -interaction=nonstopmode
bibtex {{cookiecutter.tex_file}}
latex {{cookiecutter.tex_file}}.tex -interaction=nonstopmode
pdflatex {{cookiecutter.tex_file}}.tex -interaction=nonstopmode