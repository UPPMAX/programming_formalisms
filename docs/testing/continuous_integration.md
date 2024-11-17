---
tags:
  - CI
  - Continuous integration
---

# Continuous integration

!!!- info "Learning objectives"

    - Understand what continuous integration is

???- question "For teachers"

    Prerequisites are:

    - Learners have .

    Teaching goals are:

    - Learners .

    Teaching form used:

    - .

    Lesson plan:

    - 5 mins: prior knowledge
        - When do you trust your code?
        - When do you trust code written by others?
        - How do you convince other developers of a bug?

    - 5 mins: presentation
    - 10 mins: demonstration `is_zero`
    - 25 mins: challenge
    - 10 mins: feedback

## Why?

You want things to happen upon a `git push` or a `git merge`.
Continuous integration scripts let you do just that!

### Use case 1: test the build in a clean/independent environment

You push/merge new code to `main` and you don't realize is that
the project does not work anymore, as it depended
on a file or operating system that only you have.
Wouldn't it be great
if code could be tested automatically in a clean/independent environment?

### Use case 2: measure code coverage

You wonder how much of your code is tested.
Wouldn't it be great
if code coverage could be measured automatically after a push?

### Use case 3: enforce coding standard

A team member (or external contributor)
is a sloppy code. You told him/her to follow the coding standards
multiple times and now have grown tired of doing so.
Wouldn't it be great
if code could be tested to follow a coding standard automatically
before merging?

### Use case 4: measure run-time speed

You want to measure the run-time speed of your project
in a clean/independent environment.
Wouldn't it be great
if code could be tested for run-time speed automatically after a push?

## How Continuous Integration looks like

'Continuous Integration' is to continuously integrate new
code with existing code (i.e. without human formal approval steps).
This is quite an obvious definition, more interesting is
to read how CI looks like (from `[Beck, 1999]`):
Continuous integration [is that new] code is
integrated with the current system
after no more than a few hours.
When integrating, the system is built
from scratch and all tests must pass
or the changes are discarded.

Scripts that are triggered when `push`ing code.

Assures quality:

- Tests pass
- Code has consistent style
- Links are valid (i.e. not broken)
- Spelling is correct
- [your check here]

## Features of Continuous Integration

- CI significantly increase the number of bugs exposed `[Vasilescu et al., 2015]`
- CI increases the speed at which new features are added `[Vasilescu et al., 2015]`

## Code coverage

- Percentage of code tested
- Correlates with code quality `[Horgan et al., 1994][Del Frate et al., 1995]`
- 100% mandatory to pass a code peer-review by rOpenSci `[Hart et al., 2013]`

## Coding style

- Following a consistent coding style improves software quality `[Fang, 2001]`
    - Python: PEP8 `[PEP 8]`
    - R: Tidyverse `[Wickham, 2019]`
- May include cyclomatic complexity
    - More complex code, more bugs `[Abd Jader et al., 2018][Chen, 2019][Mens et al., 2008]`

## Coding style tools

- Linter: program that tests code for style.

In Python: `ruff`, Sonar, `pytype`, Black, Codacy, Pylint, Flake8,
`autopep8`, Pychecker, Pylama

## Disable a `ruff` test

```python
import random
i = random.randint(0, 1) # noqa: S311
```

You will need to defend this in a code review.

## Exercises

### Exercise 1: improve the learners' project

- Go to the learners' project
- Click on the 'Actions' tab
- Look for an Action that fails. Pick your favorite:
    - 'Check code style': checks for Python style, will improve your
      Python grammar
    - 'Check package': checks if the repo can be built into a package,
      has the hardest Python problems
    - 'Check links': checks for links, straightforward
    - 'Check markdown': checks for markdown style, will improve
      your markdown grammar
    - 'Check spelling': spellcheck, straightforward
    - 'Measure codecov' and the code coverage:
      checks if all code in the repo is tested,
      needs to be 100%, practice writing tests
- Of your favorite action, look what the problem is
- Fix/improve it

## References

- `[Abd Jader et al., 2018]` Abd Jader, Marwa Najm, and Riyadh Zaghlool Mahmood.
  "Calculating McCabe's cyclomatic complexity metric and its effect on the
  quality aspects of software."
- `[Beck, 1999]` Beck, Kent.
  "Embracing change with extreme programming." Computer 32.10 (1999): 70-77.
- `[Booch, 1990]` Booch, Grady. Object oriented design with applications.
  Benjamin-Cummings Publishing Co., Inc., 1990.
- `[Chen, 2019]` Chen, Changqi.
  "An Empirical Investigation of Correlation between Code Complexity and Bugs."
  arXiv preprint arXiv:1912.01142 (2019).
- `[Del Frate et al., 1995]` Del Frate, Fabio, et al.
  "On the correlation between code coverage and software reliability."
  Proceedings of Sixth International Symposium on Software Reliability
  Engineering. ISSRE'95. IEEE, 1995.
- `[Fang, 2001]` Fang, Xuefen.
  "Using a coding standard to improve program quality." Proceedings Second
  Asia-Pacific Conference on Quality Software. IEEE, 2001.
- `[Hart et al., 2013]` Hart, Edmumd, et al.
  "rOpenSci-a collaborative effort to develop R-based tools for facilitating
  Open Science." figshare (2013): 791569.
- `[Mens et al., 2008]` Mens, Tom, et al.
  "Empirical studies of open source evolution."
  Software evolution (2008): 263-288.
- `[PEP 8]` Van Rossum, Guido, Barry Warsaw, and Nick Coghlan.
  "PEP 8–style guide for python code." Python. org 1565 (2001): 28.
- `[Horgan et al., 1994]` Horgan, Joseph R., Saul London, and Michael R. Lyu.
  "Achieving software quality with testing coverage measures."
  Computer 27.9 (1994): 60-69.
- `[Vasilescu et al., 2015]` Vasilescu, Bogdan, et al.
  "Quality and productivity outcomes relating to continuous integration in
  GitHub." Proceedings of the 2015 10th joint meeting on foundations of
  software engineering. 2015.
- `[Wickham, 2019]` Wickham, Hadley.
  Advanced R. chapman and hall/CRC, 2019.

