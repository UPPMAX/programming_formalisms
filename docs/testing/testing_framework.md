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

```{python}
assert 1 + 1 == 2
```

Using `unittest`:

```{python}
import unittest

class TestSmall(unittest.TestCase):
    def test_is_true(self):
        self.assertIsTrue(1 + 1 == 2)
```

:neutral_face: Mostly scaffolding here

### Test if something is equal

No testing framework:

```{python}
assert 1 + 1 == 2
```

Using `unittest`:

```{python}
import unittest

class TestSmall(unittest.TestCase):
    def test_is_equal(self):
        self.assertEqual(1 + 1, 2)
```

:monocle_face: Hamcrest notation can give better error message.

### Test if something raises an exception

No testing framework:

```{python}
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

```{python}
import unittest

class TestSmall(unittest.TestCase):
    def test_raises(self):
        self.assertRaises(RunTimeError, raise_error)
```

:smile: here it pays off.

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
