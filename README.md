# Programming formalisms

![](images/programming_formalism_logo.png)

> 'Programming Formalisms' course logo, by Jonas Söderberg and Lars Eklund

[![Build PDFs](https://github.com/UPPMAX/programming_formalisms/actions/workflows/build_pdfs.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/programming_formalisms/actions/workflows/build_pdfs.yaml)
[![Check links](https://github.com/UPPMAX/programming_formalisms/actions/workflows/check_links.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/programming_formalisms/actions/workflows/check_links.yaml)
[![Check spelling](https://github.com/UPPMAX/programming_formalisms/actions/workflows/check_spelling.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/programming_formalisms/actions/workflows/check_spelling.yaml)
[![Deploy GitHub Pages](https://github.com/UPPMAX/programming_formalisms/actions/workflows/jekyll-gh-pages.yml/badge.svg?branch=main)](https://github.com/UPPMAX/programming_formalisms/actions/workflows/jekyll-gh-pages.yml)

The goal of the course is [to give an understanding of formal principles of software development](https://github.com/UPPMAX/programming_formalisms/issues/54).

 * [Shared documents](shared_documents/README.md)
 * [Projects](docs/misc/projects.md)
 * [GitHub Pages of this repository](https://uppmax.github.io/programming_formalisms/)
 * [GitHub repository](https://github.com/UPPMAX/programming_formalisms)

## For teachers

 * [Learning line](learning_line.md)
 * [Lesson plans](lesson_plans/README.md)
 * [Retrospectives](retrospectives/README.md)
 * [Evaluations](evaluations/README.md)
 * [Reflections](reflections/README.md)

## Files used for continuous integration scripts

Filename                           |Descriptions
-----------------------------------|------------------------------------------------------------------------------------------------------
[mlc_config.json](mlc_config.json) |Configuration of the link checker
[.spellcheck.yml](.spellcheck.yml) |Configuration of the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.wordlist.txt](.wordlist.txt)     |Whitelisted words for the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.pylintrc](.pylintrc)             |Configuration file for pylint
[pyproject.toml](pyproject.toml)   |Configuration file of this package
