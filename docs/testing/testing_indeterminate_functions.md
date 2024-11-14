# Indeterminate functions

!!!- info "Learning objectives"

    - practice writing tests for indeterminate functions
      within a formal testing framework

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

A Random Number Generator ('RNG') produces the same random values
after setting the same RNG seed.

```python
import random
random.seed(5)
assert flip_coin()
random.seed(2)
assert not flip_coin()
```

## Exercises

## Exercise 1: first attempt

???- info "Learning objectives"

    - practice writing tests for indeterminate functions
      within a formal testing framework

In pairs, develop a function using TDD using the `unittest` framework.

The function is a function which returns the result of a dice throw:
a random integer value from 1 to and including 6.

!!! info "The function"

    - Function name: `get_dice_throw_value_[names]`,
      for example, `get_dice_throw_value_anna_and_sven`
    - Output:
        - Returns a random integer value from 1 to and including 6.

!!! info "Social"

    - Ping-Pong Pair programming
    - Discuss how and when to switch roles first!
    - Decide who is the first driver,
      e.g. the person with first name first in alphabet
    - Try to be **an exemplary duo**

!!! info "Technical"

    - Create a topic branch for your pair. Branch of from `develop`
    - Work within scaffolding of the learners project
        - Functions are in `src/[package_name]/`.
          Call the file `utils_[names].py`, e.g. `utils_anna_and_sven.py`
        - Tests are in `tests/`.
          Call the file `test_utils_[names].py`,
          e.g. `test_utils_anna_and_sven.py`
    - When done, create a Pull Request to `develop`. Do not merge!

## Exercise 2: second attempt

???- info "Learning objectives"

    - practice writing tests for indeterminate functions
      within a formal testing framework

In pairs, develop an indeterminate function
using TDD using the `unittest` framework.

Use the same setup as exercise 1.

However, decide upon an interesting function at your estimated level.
When disagreeing: pick the easiest function.

If needed, this function is suggested:

!!! info "The function"

    - Function name: `get_lottery_values_[names]`,
      for example, `get_lottery_values_anna_and_sven`
    - Input: the highest value that can be drawn,
      e.g. 45, which is common in [lottry games](https://en.wikipedia.org/wiki/List_of_six-number_lottery_games)
    - Output: Returns a list of six random numbers,
      in range [1, `highest_value`] (i.e. including
      one and the highest value that can be drawn). Each number must be unique.
      The numbers need not to be sorted.
      Assuming a highest value of 45, them:
          - Valid examples: `[1, 2, 3, 4, 5, 6]`, `[6, 5, 4, 3, 2, 1]`
          - Invalid examples: `[1, 1, 1, 1, 1, 1]` (due to duplicates),
            `[1, 2, 3, 4, 5, 46]` (last value is heigher than 45),
    - If the input is not one integer that is at least 6,
      a `TypeError` is raised.
