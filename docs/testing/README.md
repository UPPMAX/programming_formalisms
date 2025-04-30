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

## Why use tests?

Testing *helps* ensure the correctness of code.

- Coding errors are extremely common `[Baggerly & Coombes, 2009]`
- Contribute to the reproducibility crisis in science `[Vable et al., 2021]`,
  e.g. `[Rahman & Farhana, 2020]`
- Simple testing can prevent most critical failures `[Yuan et al., 2014]`

## Levels of testing

Test            |Description
----------------|--------------------------------------------------------
Unit test       |Tests 1 unit, e.g. a function
Integration test|Tests multiple units together, i.e. a part of the system
System test     |Tests the system as a whole

## References

- `[Yuan et al., 2014]`
  Yuan, Ding, et al.
  "Simple testing can prevent most critical failures:
  An analysis of production failures in distributed data-intensive systems."
  11th USENIX Symposium on Operating Systems Design and Implementation
  (OSDI 14). 2014.
- `[Zen of Python]`
  [Zen Of Python: 'Errors should never pass silently'](https://peps.python.org/pep-0020/#the-zen-of-python)
