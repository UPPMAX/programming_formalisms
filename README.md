# Programming formalisms

![](images/programming_formalism_logo.png)

> 'Programming Formalisms' course logo, by Jonas Söderberg and Lars Eklund

[![Build PDFs](https://github.com/UPPMAX/programming_formalisms/actions/workflows/build_pdfs.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/programming_formalisms/actions/workflows/build_pdfs.yaml)
[![Check links](https://github.com/UPPMAX/programming_formalisms/actions/workflows/check_links.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/programming_formalisms/actions/workflows/check_links.yaml)
[![Check spelling](https://github.com/UPPMAX/programming_formalisms/actions/workflows/check_spelling.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/programming_formalisms/actions/workflows/check_spelling.yaml)

The goal of the course is [to give an understanding of formal principles of software development](https://github.com/UPPMAX/programming_formalisms/issues/54).
[Only what is used by the student project is course content, with alternatives relevant to academics provided in lecture (or extra material) to what we do](https://github.com/UPPMAX/programming_formalisms/issues/52).

* [Shared documents](shared_documents/README.md)
* [Projects](docs/project/projects.md)
* [GitHub Pages of this repository](https://uppmax.github.io/programming_formalisms/)
* [GitHub repository](https://github.com/UPPMAX/programming_formalisms)

## For teachers

* [Learning line](learning_line.md)
* [Lesson plans](lesson_plans/README.md)
* [Evaluations](evaluations/README.md) (includes retrospectives)
* [Reflections](reflections/README.md)

## Files used for continuous integration scripts

<!-- markdownlint-disable MD013 -->
<!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Filename                                  |Descriptions
------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------
[mlc_config.json](mlc_config.json)        |Configuration of the link checker, use `markdown-link-check --config mlc_config.json --quiet docs/**/*.md` to do link checking locally
[.spellcheck.yml](.spellcheck.yml)        |Configuration of the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.wordlist.txt](.wordlist.txt)            |Whitelisted words for the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.markdownlint.jsonc](.markdownlint.jsonc)|Configuration of the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.
[.markdownlintignore](.markdownlintignore)|Files ignored by the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.

<!-- markdownlint-enable MD013 -->
