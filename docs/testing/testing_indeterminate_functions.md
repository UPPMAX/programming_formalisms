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

## Testing indeterministic functions

Functions that do not always return the same values.

```python
def flip_coin():
    """Produce a random boolean."""
    return random.randint(0, 1) > 0
```

How to test these?

## Randomness

A Random Number Generator ('RNG') produces the same random values after setting the same RNG seed.

```python
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
