---
tags:
  - testing
  - tests
---

# Testing

!!!- info "Learning outcomes"

    - understand the benefit of using a testing framework
    - practice writing tests within a formal testing framework
    - understand the benefit of continuous integration tests
    - practice fixing continuous integration tests

???- question "For teachers"

    Prerequisites are:

    - Learners have practiced pair programming
    - Learners can do the git basic workflow on `master`

    Teaching goals are:

    - Learners understand what TDD is
    - Learners understand why TDD is important
    - Learners have done multiple TDD cycles

    Teaching form used:

    - Pair programming
    - `master` branch

    Lesson plan:

    - 5 mins: prior knowledge
        - When do you trust your code?
        - When do you trust code written by others?
        - How do you convince other developers of a bug?

    - 5 mins: presentation
    - 10 mins: demonstration `is_zero`
    - 25 mins: challenge
    - 10 mins: feedback

## Testing

Simple testing can prevent most critical failures `[Yuan et al., 2014]`

- [Using a formal testing framework](testing_framework.md)
- [Testing indeterminate functions](testing_indeterminate_functions.md)
- [Testing in a team and project](testing_in_a_team.md)
- [Continuous integration](../continuous_integration/README.md)

## Recap

- Testing helps code correctness
    - Use the Beyoncé Rule on precious behavior
- Testing + CI:
    - Helps teaching
    - Helps bug reporting

## Weaknesses

- We developed only simple algorithms
- We only use simple data structures
- We ignore if code is fast (vague wording on purpose!)

This will be addressed in the next lectures :-)

## Observables

In duos, `owner_name` is the GitHub username first in the alphabet.

- 1: `owner_name/is_prime(x)`
- 2: `owner_name/get_digits(x)`
- 3: `owner_name/flip_coin(x)`
- 4: `owner_name/roll_dice(x)`

## References

- `[Yuan et al., 2014]`
  Yuan, Ding, et al.
  "Simple testing can prevent most critical failures:
  An analysis of production failures in distributed data-intensive systems."
  11th USENIX Symposium on Operating Systems Design and Implementation
  (OSDI 14). 2014.
- `[Zen of Python]`
  [Zen Of Python: 'Errors should never pass silently'](https://peps.python.org/pep-0020/#the-zen-of-python)
