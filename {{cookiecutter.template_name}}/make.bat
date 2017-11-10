latex {{cookiecutter.tex_file}} -output-directory=log -interaction=nonstopmode -halt-on-error
bibtex log/{{cookiecutter.tex_file}}
latex {{cookiecutter.tex_file}} -output-directory=log -interaction=nonstopmode -halt-on-error
pdflatex {{cookiecutter.tex_file}} -aux-directory=log -interaction=nonstopmode -halt-on-error