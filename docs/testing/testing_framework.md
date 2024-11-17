---
tags:
  - Test
  - Testing
  - Testing framework
  - unittest
  - Unit test
  - Unit tests
  - Unit testing
---

# Using a formal testing framework

!!!- info "Learning objectives"

    - understand the benefit of using a testing framework
    - practice writing tests within a formal testing framework

???- question "For teachers"

    Prerequisites are:

    - Learners have some idea of the benefit of using a testing framework
    - Learners have practiced writing tests within a formal testing framework

    ```mermaid
    gantt
      title Lesson plan using a testing framework
      dateFormat X
      axisFormat %s
      Introduction: intro, 0, 5s
      Theory 1: theory_1, after intro, 5s
      Exercise 1: crit, exercise_1, after theory_1, 25s
      Feedback 1: feedback_1, after exercise_1, 10s
    ```

    Prior questions:

    - When do you trust your code?
    - When do you trust code written by others?
    - How do you convince other developers of a bug?

## Why?

You want to write tests in the recommended way
and put their files in a recommended place.
You want your tests to be found by most of the tools
in the Python ecosystem.

## Testing

???- question "Prefer this lecture as a video?"

    See [this YouTube video](https://youtu.be/FXdEtzl-wws)

Testing *helps* ensure the correctness of code.

- Coding errors are extremely common `[Baggerly & Coombes, 2009]`
- Contribute to the reproducibility crisis in science `[Vable et al., 2021]`,
  e.g. `[Rahman & Farhana, 2020]`

## Testing framework

There are multiple testing frameworks:

- **`unittest`**
- `pytest`
- `nose`
- more

In this project, we use
[the official Python `unittest` package](https://docs.python.org/3/library/unittest.html),
because:

- It is [an official Python package](https://docs.python.org/3/library/unittest.html)
- It is heavily used
- Tools (among other, VS Code) can find it
- Standard way to write tests
- Failed tests give better error messages

Drawback of `unittest` (and many other testing frameworks):

- Takes some scaffolding

## Example test: test if something is true

No testing framework:

```python
assert 1 + 1 == 2
```

Using `unittest`:

```python
import unittest

class TestSmall(unittest.TestCase):
    def test_is_true(self):
        self.assertIsTrue(1 + 1 == 2)
```

Mostly scaffolding here...

## Example test: test if something is equal

No testing framework:

```python
assert 1 + 1 == 2
```

Using `unittest`:

```python
import unittest

class TestSmall(unittest.TestCase):
    def test_is_equal(self):
        self.assertEqual(1 + 1, 2)
```

Hamcrest notation can give better error message.

## Example test: test if something raises an exception

No testing framework:

```python
def raise_error():
    raise RunType("Raise an error!")

has_raised = False
try:
    raise_error()
except:
    has_raised = True
assert has_raised
```

Using `unittest`:

```python
import unittest

class TestSmall(unittest.TestCase):
    def test_raises(self):
        self.assertRaises(RunTimeError, raise_error)
```

Here using a formal testing framework saves typing.

## File setup

A testing framework needs files to be in standarized places.

One can search the web for this,
or [use an existing project](https://github.com/programming-formalisms/programming_formalisms_example_project)
as reference.

For the `unittest` framework, the actual functions are put in the
`src/[package_name]` folder, for example `src/bacsim/sven_utils.py`.

???- question "How does such a file look like?"

    Here is how such a file could look like:

    ```python
    """Sven's utility functions"""

    def is_zero(x):
        """Determine if `x` is zero.

        If `x` is not a number, a `TypeError` is raised.

        Returns `True` if `x` is zero
        """
        if not isinstance(x, (int, float)):
            msg = "'number' must be a number. "
            raise TypeError(
                msg,
                "Actual type of 'number': ", type(x),
            )
        return x == 0
    ```

The testing functions are put in the
`tests` folder and all files have `test_` added.
For example, the file to test `src/bacsim/richel_utils.py`
is called `tests/test_richel_utils.py`.

???- question "How does such a file look like?"

    Here is how such a file could look like:

    ```python
    """Tests all function in src.bacsim.richel_utils."""
    import unittest

    from src.bacsim.richel_utils import is_zero

    class TestRichelUtils(unittest.TestCase):

        """Class to test the functions in src.bacsim.richel_utils."""

        def test_is_zero(self):
            """Test 'is_zero'."""
            self.assertIsNotNone(is_zero.__doc__)
            self.assertTrue(is_zero(0))
            self.assertTrue(is_zero(0.0))
            self.assertFalse(is_zero(1))
            self.assertRaises(TypeError, is_zero, {1, 2})
            self.assertRaises(TypeError, is_zero, "I am a string")
    ```

## Running a test

???- question "Get error `ModuleNotFoundError: No module named 'src'`?"

    You will get the error `ModuleNotFoundError: No module named 'src'`
    when you click 'Run' on your file with tests.

    ![The error you get from running this script](running_a_test_script_normally_fails_annotated.png)

    > Clicking on 'Run' (see the red rectangle at the top-left)
    > for a file that has tests
    > will give the error `ModuleNotFoundError: No module named 'src'`.
    > Click the green 'Testing' tab at the right instead.

    Instead, click on the green 'Testing' tab at the right.

Click on the 'Testing' tab (with the erlenmeyer flask) at the right.

If you do this for the first time, you get some blue buttons.

???- question "How does that look like?"

    ![Click 'First'](testing_tab_first_click.png)

Click on 'Configure Python Tests'.

???- question "How does that look like?"

    ![Select the framework](testing_tab_select_framework.png)

Select 'unittest Standard Python test framework'

???- question "How does that look like?"

    ![Select 'test' folder](testing_tab_select_test_folder.png)

Select `tests` as the testing folder.

???- question "How does that look like?"

    ![Select the test file pattern](testing_tab_select_test_file_pattern.png)

Select `test_*.py` as the test file pattern.

???- question "How does that look like?"

    ![The 'Tests' tab](testing_tab_tests_present.png)

Now the tests are present at the left side in a folded up state.
One can unfold these.

???- question "How does that look like?"

    ![The unfolded 'Tests' tab](testing_tab_tests_present_and_run.png)

Clicking on the 'Run'/'Play' button to run the tests.

## Exercises

The learning objective of this exercise is to
practice writing tests within a formal testing framework.
Which function to implement is irrelevant,
so feel free to pick a function that fits your level.

If you feel comfortable enough with using `unittest`,
you are encouraged to develop code for the learners' project
instead.

## Exercise 1: a guided example

???- info "Learning objectives"

    - practice writing tests within a formal testing framework

The goal is to write a function to determine if a number is prime.

!!! info "The function"

    - Function name: `is_prime_[names]`, for example, `is_prime_anna_and_sven`
    - Output:
        - Returns `True` if the input is prime
        - Returns `False` if the input is not prime
        - Gives an error when the input is not one integer

!!! info "Technical"

    Work within scaffolding of the learners project:

    - Learner code is in `src/learners/`.
      Call the file `utils_[names].py`, e.g. `utils_anna_and_sven.py`
    - Tests are in `tests/`.
      Call the file `test_utils_[names].py`,
      e.g. `test_utils_anna_and_sven.py`

???- question "Need a video?"

    See [this YouTube video](https://youtu.be/jwAyMlaODfo)

## Exercise 2: your function

Develop a function at your skill level
using TDD using the `unittest` framework.

Put the code in the `src/learners` folder.

## Exercise 3: learners project

Develop a function at your skill level
using TDD using the `unittest` framework
in the learners' project.

'develop functionality' is still hard, as we have not
discussed function design, nor class design.

However, we can:

- ensure that a class we (may) need is in a file called `[class_name].py`,
  e.g. `coordinat.py`
- ensure the tests are in a file called `test_[class_name].py`,
  e.g. `test_coordinat.py`, so that `unittest` can actually find it
- write a minimal test is that one can create a class object:

```python
class TestCoordinat(unittest.TestCase):
    def test_can_create(self):
        Coordinat c
```

Write as much tests (and their fixes) as you can come up with.

  
## References

- `[Baggerly & Coombes, 2009]` Baggerly, Keith A., and Kevin R. Coombes.
  "Deriving chemosensitivity from cell lines: forensic bioinformatics and
  reproducible research in high-throughput biology."
  The Annals of Applied Statistics (2009): 1309-1334.
- `[Rahman & Farhana, 2020]` Rahman, Akond, and Effat Farhana.
  "An exploratory characterization of bugs in COVID-19 software projects."
  arXiv preprint arXiv:2006.00586 (2020).
- `[Vable et al., 2021]` Vable, Anusha M., Scott F. Diehl, and M. Maria Glymour.
  "Code review as a simple trick to enhance reproducibility, accelerate
  learning, and improve the quality of your team’s research."
  American Journal of Epidemiology 190.10 (2021): 2172-2177.
