# Using a formal testing framework

!!!- info "Learning objectives"

    - understand the benefit of using a testing framework
    - practice writing tests within a formal testing framework

???- question "For teachers"

    Prerequisites are:

    - Learners have .

    Teaching goals are:

    - .


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

## Testing

Testing *helps* ensure the correctness of code.

-   Coding errors are extremely common [Baggerly & Coombes, 2009]
-   Contribute to the reproducibility crisis in science [Vable et al., 2021], e.g. [Rahman & Farhana, 2020]

## Testing framework

-   **`unittest`**, `pytest`, `nose`, etc.
-   Makes it easier to write unit tests
-   Takes some scaffolding
-   Failed tests give a better error message

### Test if something is true

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

:neutral_face: Mostly scaffolding here

### Test if something is equal

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

### Test if something raises an exception

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

:smile: here it pays off.

## File setup

A testing framework needs files to be in standarized places.

One can search the web for this, 
or [use an existing project](https://github.com/programming-formalisms/programming_formalisms_example_project)
as reference.

For the `unittest` framework, the actual functions are put in the
`src/[package_name]` folder, for example `src/bacsim/richel_utils.py`.

???- question "How does such a file look like?"

    Here is how such a file could look like:

    ```python
    """Richel's utility functions"""

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

    ![](running_a_test_script_normally_fails_annotated.png)

    > Clicking on 'Run' (see the red rectangle at the top-left) for a file that has tests
    > will give the error `ModuleNotFoundError: No module named 'src'`.
    > Click the green 'Testing' tab at the right instead.

    Instead, click on the green 'Testing' tab at the right.

Click on the 'Testing' tab (with the erlenmeyer flask) at the right.

If you do this for the first time, you get some blue buttons.

???- question "How does that look like?"

    ![](testing_tab_first_click.png)

Click on 'Configure Python Tests'.

???- question "How does that look like?"

  ![](testing_tab_select_framework.png)

Select 'unittest Standard Python test framework'

???- question "How does that look like?"

    ![](testing_tab_select_test_folder.png)

Select `tests` as the testing folder.

???- question "How does that look like?"

    ![](testing_tab_select_test_file_pattern.png)

Select `test_*.py` as the test file pattern.

???- question "How does that look like?"

    ![](testing_tab_tests_present.png)

Now the tests are present at the left side in a folded up state.
One can unfold these.

???- question "How does that look like?"

    ![](testing_tab_tests_present_and_run.png)

Clicking on the 'Run'/'Play' button to run the tests.

## Exercises

### Exercise 1: `is_prime` observe

-   Only observe, no type-along!
-   Ask questions on the go! When in doubt: ask that question!
-   Time: 30 minutes

## Exercise 2: `is_prime`

-   Function name: `is_prime_[name]`, for example, `is_prime_richel`
-   Output:
    -   Returns `True` if the input is prime
    -   Returns `False` if the input is not prime
    -   Gives an error when the input is not an integer

## Exercise 3: `is_prime`, social

-   Ping-Pong Pair programming
-   Discuss how and when to switch roles first!
-   Person with first name first in alphabet starts
-   Try to be **an exemplary duo**

## Exercise 4: `is_prime`, technical

-   Work within scaffolding of the learners project
    -   Functions are in `src/[package_name]/testing.py`
    -   Tests are in `tests/test_testing.py`
-   Work on the main branch only, share code using `git push` and `git pull`
-   order the `is_prime_[name]` functions and tests alphabetically, e.g. `is_prime_lars` comes before `is_prime_richel`

## Live demo (30 minutes)

-   Or videos: [YouTube](https://youtu.be/jwAyMlaODfo) 

# Exercise 5: `is_prime`

-   Time: 30 minutes
-   Do the same exercise in pairs
-   There are multiple ways to do this: pick the way you feel is most natural

## Course material

Title                        |Length   |YouTube
-----------------------------|---------|------------------------------------
Testing lecture 1            |10 mins  |[here](https://youtu.be/FXdEtzl-wws)
`is_prime`                   |19 mins  |[here](https://youtu.be/jwAyMlaODfo)

## References

 * [Baggerly & Coombes, 2009] Baggerly, Keith A., and Kevin R. Coombes. "Deriving chemosensitivity from cell lines: forensic bioinformatics and reproducible research in high-throughput biology." The Annals of Applied Statistics (2009): 1309-1334.
 * [Rahman & Farhana, 2020] Rahman, Akond, and Effat Farhana. "An exploratory characterization of bugs in COVID-19 software projects." arXiv preprint arXiv:2006.00586 (2020).
 * [Vable et al., 2021] Vable, Anusha M., Scott F. Diehl, and M. Maria Glymour. "Code review as a simple trick to enhance reproducibility, accelerate learning, and improve the quality of your team’s research." American Journal of Epidemiology 190.10 (2021): 2172-2177.
