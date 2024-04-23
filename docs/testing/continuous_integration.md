# Continuous integration

!!!- info "Learning objectives"

    - .

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

## Continuous Integration

Scripts that are triggered when `push`ing code.

Assures quality:

-   Tests pass
-   Code has consistent style
-   Links are valid (i.e. not broken)
-   Spelling is correct
-   [your check here]

## Continuous Integration

-   CI significantly increase the number of bugs exposed [Vasilescu et al., 2015]
-   CI increases the speed at which new features are added [Vasilescu et al., 2015]

Course repo has CI :-)

## Code coverage

-   Percentage of code tested
-   Correlates with code quality [Horgan et al., 1994][Del Frate et al., 1995]
-   100% mandatory to pass a code peer-review by rOpenSci [Ram et al., 2018]

## Coding style

-   Following a consistent coding style improves software quality [Fang, 2001]
    -   Python: PEP8 [Van Rossum et al., 2001]
    -   R: Tidyverse [Wickham, 2019]
-   May include cyclomatic complexity
    -   More complex code, more bugs [Jader et al., 2018][Chen, 2019][Mens et al., 2008]

## Coding style tools

-   Linter: program that tests code for style.

In Python: `ruff`, Sonar, `pytype`, Black, Codacy, Pylint, Flake8, `autopep8`, Pychecker, Pylama

## Disable a `ruff` test

```python
import random
i = random.randint(0, 1) # noqa: S311
```

You will need to defend this in a code review.
