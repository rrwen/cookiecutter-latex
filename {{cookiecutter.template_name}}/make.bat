latex {{cookiecutter.tex_file}} -output-directory=log -interaction=nonstopmode
bibtex log/{{cookiecutter.tex_file}}.aux
latex {{cookiecutter.tex_file}}.tex -output-directory=log -interaction=nonstopmode
pdflatex {{cookiecutter.tex_file}} -aux-directory=log -interaction=nonstopmode