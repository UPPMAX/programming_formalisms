# Continous integration

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

```{python}
import random
i = random.randint(0, 1) # noqa: S311
```

You will need to defend this in a code review.

## Testing indeterministic functions

Functions that do not always return the same values.

```{python}
#| echo: true
#| eval: true
def flip_coin():
    """Produce a random boolean."""
    return random.randint(0, 1) > 0
```

How to test these?

## Randomness

A Random Number Generator ('RNG') produces the same random values after setting the same RNG seed.

```{python}
#| echo: true
#| eval: true
import random
random.seed(5)
assert flip_coin()
random.seed(2)
assert not flip_coin()
```

# Exercise 2: `flip_coin`

-   Time: 45 minutes

## Exercise 2: `flip_coin`

-   Function name: `flip_coin_[name]`, for example, `flip_coin_richel`
-   Input: none
-   Output: Returns `True` in 50% of all cases, else returns `False`
-   **Get all CI scripts to pass**

## Exercise 2: `flip_coin`, social

-   Ping-Pong Pair programming
-   Discuss how and when to switch roles first!
-   Person with first name first in alphabet starts
-   Try to be **an exemplary duo**

## Exercise 2: `flip_coin`, technical

-   Work within scaffolding of the learners project
    -   Functions are in `src/[package_name]/testing.py`
    -   Tests are in `tests/test_testing.py`
-   Work on the main branch only, share code using `git push` and `git pull`
-   order the `flip_coin_[name]` functions and tests alphabetically, e.g. `flip_coin_lars` comes before `flip_coin_richel`

# Tests in a team

> If all tests pass, we are -by definition- happy.
>
> Programming team [tresinformal](https://github.com/tresinformal)

## Problem

Q: When one works in a team, how to make sure my code keeps doing the same?

```{python}
#| echo: true
#| eval: true
def get_test_dna_sequence():
  """Get a DNA sequence to be used in testing"""
  return "ACGTACGT"
```

. . .

A: Apply the Beyoncé Rule

## Beyoncé rule

'If you like it, then you gotta put a test on it'

```{python}
#| echo: true
#| eval: true
assert get_test_dna_sequence() == "ACGTACGT"
```

Teams should be reluctant to change tests: this will likely break other code.

![Beyoncé](beyonce.png)

> Source: [Wikimedia](https://commons.wikimedia.org/wiki/Category:Beyonc%C3%A9_Knowles_in_2020#/media/File:Beyonc%C3%A9_Black_Is_King_Still.png)

## Untestable functions

Q: How to test this function?

```{python}
#| echo: true
#| eval: true
def print_hello():
    print("Hello world")
```

. . .

A: Never write untestable functions

## Making untestable functions testable

Q: How to make this function testable?

```{python}
#| echo: true
#| eval: true
def print_hello():
    print("Hello world")
```

. . .

```{python}
#| echo: true
#| eval: true
def get_hello_world_text():
    return "Hello world"
```

## Testing graphical functions

Q: How to test this function thoroughly:

-   Plot looks pretty
-   Colors are correct
-   Trend line is drawn

```{python}
#| echo: true
#| eval: true
def save_plot(filename, x_y_data):
    """Save the X-Y data as a scatter plot"""
```

. . .

A: usually: use **a human**, e.g. a code reviewer

In most cases, graphical analysis tools and/or AI are overkill. If you are stubborn: try!

# Exercise 3: `get_digits`

-   Time: 45 minutes

## Exercise 3: `get_digits`

-   Function name: `get_digits_[name]`, for example, `get_digits_richel`
-   Input: a positive number
-   Output:
    -   Returns the number split into a list of digits, e.g. `314` become `[3, 1, 4]`
    -   Gives an error when the input is not a positive integer
-   **Get all CI scripts to pass**

## Exercise 3: `get_digits`, social

-   Ping-Pong Pair programming
-   Discuss how and when to switch roles first!
-   Person with first name first in alphabet starts
-   Try to be **an exemplary duo**

## Exercise 3: `get_digits`, technical

-   Work within scaffolding of the learners project
    -   Functions are in `src/[package_name]/testing.py`
    -   Tests are in `tests/test_testing.py`
-   Work on the main branch only, share code using `git push` and `git pull`
-   order the `get_digits_[name]` functions and tests alphabetically, e.g. `get_digits_lars` comes before `get_digits_richel`

## Exercise 3: solution

`get_digits` video:

-   [download (.ogv)](https://richelbilderbeek.nl/tdd_python_get_digits.ogv)
-   [YouTube](https://youtu.be/vmRuSWhdA7c)

## Videos


Title                        |Length   |Download                                                                 |YouTube
-----------------------------|---------|-------------------------------------------------------------------------|---------------------------------------------------------
Testing lecture 2            |15 mins  |[here](https://richelbilderbeek.nl/programming_formalisms_testing_2.ogv) |[here](https://youtu.be/FMNG6oO8McA)
`get_digits`                 |24 mins  |[here](https://richelbilderbeek.nl/tdd_python_get_digits.ogv)            |[here](https://youtu.be/vmRuSWhdA7c)

## References

 * [Chen, 2019] Chen, Changqi. "An Empirical Investigation of Correlation between Code Complexity and Bugs." arXiv preprint arXiv:1912.01142 (2019).
 * [Del Frate et al., 1995] Del Frate, Fabio, et al. "On the correlation between code coverage and software reliability." Proceedings of Sixth International Symposium on Software Reliability Engineering. ISSRE'95. IEEE, 1995.
 * [Fang, 2001] Fang, Xuefen. "Using a coding standard to improve program quality." Proceedings Second Asia-Pacific Conference on Quality Software. IEEE, 2001.
 * [Horgan et al., 1994] Horgan, Joseph R., Saul London, and Michael R. Lyu. "Achieving software quality with testing coverage measures." Computer 27.9 (1994): 60-69.
 * [Jader et al., 2018] Abd Jader, Marwa Najm, and Riyadh Zaghlool Mahmood. "Calculating McCabe's cyclomatic complexity metric and its effect on the quality aspects of software.". International Journal of Innovative Research and Creative Technology. 2018. Volume 3. Issue 5. pages 10-22
 * [Mens et al., 2008] Mens, Tom, et al. "Predicting bugs from history." Software evolution (2008): 69-88.
 * [Ram et al., 2018] Ram, Karthik, et al. "A community of practice around peer review for long-term research software sustainability." Computing in Science & Engineering 21.2 (2018): 59-65.
 * [Van Rossum et al., 2001] Van Rossum, Guido, Barry Warsaw, and Nick Coghlan. "PEP 8–style guide for python code." Python. org 1565 (2001): 28.
 * [Vasilescu et al., 2015] Vasilescu, Bogdan, et al. "Quality and productivity outcomes relating to continuous integration in GitHub." Proceedings of the 2015 10th joint meeting on foundations of software engineering. 2015.
 * [Wickham, 2019] Wickham, Hadley. Advanced R. chapman and hall/CRC, 2019.
