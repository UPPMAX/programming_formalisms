# Programming formalisms

!['Programming Formalisms' course logo, by Jonas Söderberg and Lars Eklund](images/programming_formalism_logo.png)

> 'Programming Formalisms' course logo, by Jonas Söderberg and Lars Eklund

<!-- markdownlint-disable MD013 --><!-- Badges cannot be split up over lines, hence will break 80 characters per line -->

[![Build PDFs](https://github.com/UPPMAX/programming_formalisms/actions/workflows/build_pdfs.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/programming_formalisms/actions/workflows/build_pdfs.yaml)
[![Check links](https://github.com/UPPMAX/programming_formalisms/actions/workflows/check_links.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/programming_formalisms/actions/workflows/check_links.yaml)
[![Check spelling](https://github.com/UPPMAX/programming_formalisms/actions/workflows/check_spelling.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/programming_formalisms/actions/workflows/check_spelling.yaml)

<!-- markdownlint-enable MD013 -->

## [Go to the nicely-rendered version of the course](https://uppmax.github.io/programming_formalisms/)

## Files used for continuous integration scripts

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Filename                                  |Descriptions
------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------
[mlc_config.json](mlc_config.json)        |Configuration of the link checker, use `markdown-link-check --config mlc_config.json --quiet docs/**/*.md` to do link checking locally
[.spellcheck.yml](.spellcheck.yml)        |Configuration of the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.wordlist.txt](.wordlist.txt)            |Whitelisted words for the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.markdownlint.jsonc](.markdownlint.json)|Configuration of the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.
[.markdownlintignore](.markdownlintignore)|Files ignored by the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.

<!-- markdownlint-enable MD013 -->
