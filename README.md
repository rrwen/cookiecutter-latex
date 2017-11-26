# cookiecutter-latex

Richard Wen  
rrwen.dev@gmail.com  

Personal template for LaTeX documents with Python cookiecutter.

[![Build Status](https://travis-ci.org/rrwen/cookiecutter-latex.svg?branch=master)](https://travis-ci.org/rrwen/cookiecutter-latex)
[![GitHub license](https://img.shields.io/github/license/rrwen/cookiecutter-latex.svg)](https://github.com/rrwen/cookiecutter-latex/blob/master/LICENSE)

## Install

1. Install [Python](https://www.python.org/downloads/)
2. Install [cookiecutter](https://pypi.python.org/pypi/cookiecutter) via `pip`
3. Install [TeX Live](https://www.tug.org/texlive/acquire-netinstall.html) or [Miktex](https://miktex.org/download)

```
pip install cookiecutter
```

## Usage

1. Create the [LaTeX](https://www.latex-project.org/) template using [cookiecutter](https://pypi.python.org/pypi/cookiecutter)
2. Change the directory to the folder with the same name as the `template_name` input
3. Render a pdf of the main file named as the `tex_file` input

In Windows:

```
cookiecutter gh:rrwen/cookiecutter-latex
cd <template_name>
make
```

In Linux/Mac:

```
cookiecutter gh:rrwen/cookiecutter-latex
cd <template_name>
chmod +x make.sh
./make.sh
```

See [Implementation](#implementation) for more details.

## Developer Notes

### Create Github Repository

1. Ensure [git](https://git-scm.com/) is installed
2. Change directory to the generated folder `cd <template_name>`
3. Initialize the repository
4. Add the generated files to commit
5. Create an empty [Github repository](https://help.github.com/articles/create-a-repo/) with the same name as `template_name`
6. Pull any changes if the Github repository is not empty
7. Push the commit from `4.` to your created Github repository

```
git init
git add .
git commit -a -m "Initial commit"
git remote add origin https://github.com/<github_user>/<template_name>.git
git pull origin master --allow-unrelated-histories
git push -u origin master
```

### Implementation

This code creates a latex template using [cookiecutter](https://pypi.python.org/pypi/cookiecutter).

* The main file is [cookiecutter.json](https://github.com/rrwen/cookiecutter-latex/blob/master/cookiecutter.json) which defines the inputs for the command line interface
* The inputs then replace any values surrounded with `{{}}` inside the folder [{{cookiecutter.template_name}}](https://github.com/rrwen/cookiecutter-latex/tree/master/%7B%7Bcookiecutter.template_name%7D%7D)

```
        cookiecutter              <-- template tool
             |
      cookiecutter.json           <-- template inputs
             |
{{cookiecutter.template_name}}    <-- generated template
```

The following files will be created inside a folder with the same name as the `template_name` input:

File | Description
--- | ---
**LICENSE** | MIT [license file](https://help.github.com/articles/licensing-a-repository/) automatically created from github
**README.md** | a readme [Markdown](https://daringfireball.net/projects/markdown/) file with header section
