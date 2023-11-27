# Programming formalisms

![](images/programming_formalism_logo.png)

> 'Programming Formalisms' course logo, by Jonas Söderberg and Lars Eklund

[![Build PDFs](https://github.com/UPPMAX/programming_formalisms/actions/workflows/build_pdfs.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/programming_formalisms/actions/workflows/build_pdfs.yaml)
[![Check links](https://github.com/UPPMAX/programming_formalisms/actions/workflows/check_links.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/programming_formalisms/actions/workflows/check_links.yaml)
[![Check spelling](https://github.com/UPPMAX/programming_formalisms/actions/workflows/check_spelling.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/programming_formalisms/actions/workflows/check_spelling.yaml)
[![Deploy GitHub Pages](https://github.com/UPPMAX/programming_formalisms/actions/workflows/jekyll-gh-pages.yml/badge.svg?branch=main)](https://github.com/UPPMAX/programming_formalisms/actions/workflows/jekyll-gh-pages.yml)

 * Course Repository for programming formalisms course.
 * Under this projects, notes, exercises and lecture slides will be stored.
 * Please view the [setup.md](setup.md) file for preparations

## Schedule

Day | Time       | Teacher            | Topic                                                                                                                                                                                          | Material
----|------------|--------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------
Mon |9-12, 13-16 |BC + JN (LE, RB)    | [Introduction day](https://uppmax.github.io/programming_formalisms_intro/index.html), including a Reflection by JN from 15:30-16:00                                                            |[HTML](https://uppmax.github.io/programming_formalisms_intro/index.html)
Tue |9-12        |LE      (RB)        | [Paradigms, Introduction to formalised development](development_design/README.md)                                                                                                              |[PDF](development_design/Development_and_Programming_Formalisms.pdf)
Tue |13-16       |JN + RB (LE, RB)    | [Social coding, pair programming as  a tool for rapid development](https://github.com/UPPMAX/programming_formalisms/tree/main/common_practices), including a Reflection by RB from 15:30-16:00 |[PDF](common_practices/slides/notes_social_coding.pdf)
Wed |9-12        |RB      (LE)        | [TDD](tdd/README.md)                                                                                                                                                                           |[PDF](tdd/tdd_lecture.pdf)
Wed |13-16       |RB + JN (LE)        | [Testing](tdd/README.md), including a Reflection by JN from 15:30-16:00                                                                                                                        |[PDF](testing/testing_lecture.pdf)
Thu |9-12        |RB      (LE)        | [Algorithms](algorithms/README.md)                                                                                                                                                             |[PDF](algorithms/algorithms_lecture.pdf)
Thu |13-16       |RB + LE (LE)        | [Data structures](tdd/README.md), including a Reflection by LE from 15:30-16:00                                                                                                                |[PDF](data_structures/data_structures_lecture.pdf)
Fri |9-12        |LE      (RB)        | [Modular programming](https://github.com/UPPMAX/programming_formalisms/blob/main/development_design/Modular_Programming.pdf)                                                                   |[PDF](development_design/Modular_Programming.pdf)
Fri |13-16       |RB + ML + JN (LE,RB)| [Optimisation](optimisation/README.md), including a Reflection by JN from 15:30-16:00                                                                                                          |[PDF](optimisation/optimisation_lecture.pdf)

 * `([names])` means that `[names]` assist or observe
 * Regular course room is at the room sent around
 * [Detailed schedule](detailed_schedule.md)

## Shared documents

 * [Day 1](https://hackmd.io/@LarsEklundScilifeLife/DayOneHT2023)
 * [Day 2](https://hackmd.io/@LarsEklundScilifeLife/DayTwoHT2023)
 * [Day 3](https://hackmd.io/@LarsEklundScilifeLife/DayThreeHT2023)
 * [Day 4](https://hackmd.io/@LarsEklundScilifeLife/DayFourHT2023)
 * [Day 5](https://hackmd.io/@LarsEklundScilifeLife/DayFiveHT2023)

## Projects

Team logo                                                                   |Link
----------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------
![](images/programming_formalisms_student_team_autumn_2023_logo_116x116.png)|[Autumn 2023](https://github.com/programming-formalisms/programming_formalisms_project_autumn_2023)
![](images/programming_formalisms_teacher_team_logo_116x116.png)            |[Example project](https://github.com/programming-formalisms/programming_formalisms_example_project)

## Former projects

Team logo                                                                   |Link
----------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------
![](images/programming_formalisms_student_team_summer_2023_logo_116x116.png)|[Summer 2023](https://github.com/programming-formalisms/programming_formalisms_project_summer_2023)

## Files

Filename                           |Descriptions
-----------------------------------|------------------------------------------------------------------------------------------------------
[mlc_config.json](mlc_config.json) |Configuration of the link checker
[.spellcheck.yml](.spellcheck.yml) |Configuration of the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.wordlist.txt](.wordlist.txt)     |Whitelisted words for the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.pylintrc](.pylintrc)             |Configuration file for pylint
[pyproject.toml](pyproject.toml)   |Configuration file of this package

## Links

 * [GitHub Pages of this repository](https://uppmax.github.io/programming_formalisms/)
 * [GitHub repository](https://github.com/UPPMAX/programming_formalisms)
 * [Learning line](learning_line.md)
 * [Lesson plans](lesson_plans/README.md)
 * [Retrospectives](retrospectives/README.md)
 * [Evaluations](evaluations/README.md)
 * [Reflections](reflections/README.md)
 * [Project Euler](https://projecteuler.net/archives)
