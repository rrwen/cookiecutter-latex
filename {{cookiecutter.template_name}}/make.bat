latex {{cookiecutter.tex_file}}.tex -output-directory=log -interaction=nonstopmode
bibtex log/{{cookiecutter.tex_file}}
latex {{cookiecutter.tex_file}}.tex -output-directory=log -interaction=nonstopmode
pdflatex {{cookiecutter.tex_file}}.tex -aux-directory=log -interaction=nonstopmode