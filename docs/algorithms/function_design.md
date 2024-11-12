# Function design

!!!- info "Learning objectives"

    - Understand design by contract
    - Understand algorithm names increase expressiveness of code
    - Understand difference between `if` and `assert` in function writing

## Intro


## Problem

How do I write functions [1] that are:

- easy to use
- correct
- fast [2]

References;

- [1] For now, we use `algorithm == function`,
  as the definition of an algorithm is
  'a step-by-step procedure for solving a problem or accomplishing some
  end' `[dictionary definition]`
- [2] pick any vague definition

## What is a good function? 1/3

A good function ...

. . .


- Sometimes: is documented `[Ram, 2013]` `[tidyverse style guideline of functions]`
- Is small `[Martin, 2009]`
  @cpp_core_guidelines_functions
  `[tidyverse style guideline of functions]`
- Has a good (:innocent:) name `[Martin, 2009]`
  @cpp_core_guidelines_functions `[tidyverse style guideline of functions]`
  @pep_20 @hitchhikers_guide_to_python_general_concepts
- Is easy to use correctly and hard to use incorrectly
  @meyers2005effective
  @cpp_core_guidelines_functions @pep_20
- Does one thing correctly `[Martin, 2009]`
  @cpp_core_guidelines_functions
  `[tidyverse style guideline of functions]`
- Is tested @martin2011clean @cpp_core_guidelines_functions
  `[tidyverse style guideline of functions]`
- Raises helpful exceptions `[Martin, 2009]`
  @cpp_core_guidelines_functions
  `[tidyverse style guideline of functions]` @pep_20
- Fast iff needed @cpp_core_guidelines_functions

## Design by contract

![Design by contract](design_by_contract.png)

> [Source: Wikipedia](https://en.wikipedia.org/wiki/Design_by_contract#/media/File:Design_by_contract.svg)

## A good function is documented

```python
def sort_1(x):
  """Sort list `x` in-place.

  Returns nothing
  """

def sort_2(x):
  """Sort list `x`.

  Returns the sorted list.
  """

assert sort_1.__doc__
assert sort_2.__doc__
```

???- question "Prefer R?"

    ```r
    #' Sort list `x` in-place.
    #' @param x a list
    #' @return nothing
    sort_1 <- function(x) {
      # ...
    }

    #' Sort list `x`
    #' @param x a list
    #' @return the sorted list
    sort_2 <- function(x) {
      # ...
    }

    # Check if functions have documentation here
    ```

Mandatory in some contexts `[Ram, 2013]` `[tidyverse style guideline of functions]`

## A good function has a good name

> There are only two hard things in Computer Science:
> cache invalidation and naming things
>
> Phil Karlton

![https://www.karlton.org/karlton/images/with-fish.jpg](phil_karlton_with_fish.jpg)

- starts with a verb `[tidyverse style guideline of functions]`
- readable @pep_20
- intention-revealing `[Martin, 2009]`
- pronounceable `[Martin, 2009]`
- searchable `[Martin, 2009]`
- not cute `[Martin, 2009]`
- no pun `[Martin, 2009]`
- carefully @cpp_core_guidelines_functions

## Examples of bad function names?

Could you give examples of bad function names?

. . .

- `calculate`: calculates what?

. . .

- `calc_bfgt`: calculates what??

. . .

- `prime`: a prime number is a data type. What does this function do?

. . .

- `needleman_wunch`: this is a technique to get a DNA alignment.

. . .

## Example 1

Imagine two DNA sequences:

```text
AAACCCGGGTTT
ATACCCGGGTAT
         x
```

How would you call the algorithm that detects the location
of the `*` (but not of the `x`, as the `*` comes earlier)?

## Solutions 1

- `get_first_mismatch_pos`, `get_first_mismatch_locus`,
  `find_first_mismatch_pos`, `find_first_mismatch_locus`
- you answer that ...
    1. starts with a verb
    2. is as English as possible
    3. only uses common abbreviations

## Example 2

Imagine two DNA sequences:

```text
AAACCCGGGTTT
ATACCCGGGTAT
         *
```

How would you call the algorithm that detects all the locations of the `*`s?

## Solutions 2

- `find_mismatch_positions`, `find_mismatch_loci`,
  `get_mismatch_positions`, `get_mismatch_loci`
- you answer that ...
    1. starts with a verb
    2. is as English as possible
    3. only uses common abbreviations

## Example 3

Imagine two DNA sequences:

```text
AAACCCGGGTTT
ATACCGGGTTT
```

How would you call the algorithm that makes the sequences have as much similarities as possible, by possibly inserting a `-`

```text
AAACCCGGGTTT
ATACC-GGGTTT
```

## Solutions 3

- `align_seqs`, `align_sequences`, `align_dna_sequences`, `align_dna_seqs`,
  `calc_aligned_seqs`, `get_aligned_seqs`
- you answer that ...
    1. starts with a verb
    2. is as English as possible
    3. only uses common abbreviations

## A good function has a clear name

- [F.1: "Package" meaningful operations as carefully named functions](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#Rf-package)
- [Use verbs, strive for names that are concise and meaningful](https://style.tidyverse.org/functions.html#naming)

## A function has a clear interface 1/3

Comment on this [function from Pythonpool](https://www.pythonpool.com/check-if-number-is-prime-in-python/):

```python
i=2

def Prime(no, i):
    if no == i:
        return True
    elif no % i == 0:
        return False
    return Prime(no, i + 1)
```

. . .

Function names start with lowercase character, name does not start with a
verb, input is not checked, clumsy interface:

```python
assert Prime(2, 2)
assert Prime(3, 2)
assert Prime(3, 3) # Nothing stops me!
assert not Prime(4, 2)
assert Prime(5, 2)
```

*The* classic on refactoring is @fowler2018refactoring.

## A function has a clear interface 2/3

Comment on this function again:

```python
def is_prime(no, i = 2):
    assert isinstance(no, int)
    assert isinstance(i, int)
    if no == i:
        return True
    elif no % i == 0:
        return False
    return is_prime(no, i + 1)
```

. . .

- Clumsy interface:

```python
assert is_prime(2)
assert is_prime(2, 2) # Nothing stops me!
assert is_prime(3)
assert not is_prime(4)
assert is_prime(5)
```

## A function has a clear interface 3/3

Comment on this function again:

```python
def is_prime(no):
    if not isinstance(no, int):
        raise TypeError("'no' must be integer")
    return is_prime_internal(no)

def is_prime_internal(no, i = 2):
    assert isinstance(no, int)
    assert isinstance(i, int)
    if no == i:
        return True
    elif no % i == 0:
        return False
    return is_prime_internal(no, i + 1)

assert is_prime(2)
assert is_prime(3)
assert not is_prime(4)
assert is_prime(5)
```

. . .

I think it is OK, please correct me :-)

## A function does one thing correctly

[F.2: A function should perform a single logical operation](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#Rf-logical), hence don't:

```python
def do_x_and_y(): pass

do_x_and_y()
```

Do:

```python
def do_x(): pass

def do_y(): pass

do_x()
do_y()
```

You rarely need `and` in a function name. Possible exception:
mean and standard deviation

## What is a good function? 2/3

A good function:

- **Has a clear name**
- **Does one thing correctly**
- Is tested
- Gives clear error messages
- Is documented
- Fast iff needed

## A good function is tested

- [F.2: A function should perform a single logical operation](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#Rf-logical): A function that performs a single operation is simpler to understand, test, and reuse.
- [Joint Strike Fighter Coding Standards, section 3](http://www.stroustrup.com/JSF-AV-rules.pdf): Testability: Source code should be written to facilitate testability

## Example 1

Imagine two DNA sequences:

```text
AAACCCGGGTTT
ATACCGGGTTT
```

The function `align_dna_seqs` aligns two DNA sequences to this:

```text
AAACCCGGGTTT
ATACC-GGGTTT
```

Which tests would you write?

## Solutions 1

```python
assert align_dna_seqs(
  "AAACCCGGGTTT", "ATACCCGGGTAT"
  ) == {
 "AAACCCGGGTTT", "ATACC-GGGTTT"
  }
assert align_dna_seqs(
  { "AAACCCGGGTTT", "ATACCCGGGTAT" }
) ==
  { "AAACCCGGGTTT", "ATACC-GGGTTT" }
```

???- question "Prefer R?"

    ```r
    expect_equal(
      align_dna_seqs("AAACCCGGGTTT", "ATACCCGGGTAT"),
      c("AAACCCGGGTTT", "ATACC-GGGTTT")
    )
    expect_equal(
      align_dna_seqs(c("AAACCCGGGTTT","ATACCCGGGTAT")),
      c("AAACCCGGGTTT","ATACC-GGGTTT")
    )
    ```

## What is a good function? 3/3

A good function:

- **Has a clear name**
- **Does one thing correctly**
- **Is tested**
- Gives clear error messages
- Is documented
- Fast iff needed

## References

- `[dictionary definition]`
  <https://www.merriam-webster.com/dictionary/algorithm>
- `[Martin, 2009]` Martin, Robert C.
  Clean code: a handbook of agile software craftsmanship. Pearson Education, 2009.
- `[Ram, 2013]` Ram, K. "rOpenSci-open tools for open science."
  AGU Fall Meeting Abstracts. Vol. 2013. 2013.
- `[tidyverse style guideline of functions]`
  <https://style.tidyverse.org/functions.html>
