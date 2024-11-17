# Function design

!!!- info "Learning objectives"

    - Understand design by contract
    - Understand algorithm names increase expressiveness of code
    - Understand difference between `if` and `assert` in function writing

## Why?

You want your program to do many things, like
reading files, doing an analysis and saving the
results to files. You want it to be correct.

You needs to convert your ideas to functions.

## Terminology

Term                 |Description
---------------------|---------------
Function arguments   |The values that go into a function
Function body        |Everything the function does with its arguments
Function declaration |The function name and arguments
Function definition  |The complete function
Function name        |The name of the function
Function return type |The data type the function returns
Function signature   |The function name and arguments
Procedure            |A function that has no return type

```python
def my_function(my_arguments):
    # ...
    return my_return_type
```

## Problem

How do I write functions [1] that are:

- easy to use
- correct
- fast [2]

- [1] For now, we use `algorithm == function`,
  as the definition of an algorithm is
  'a step-by-step procedure for solving a problem or accomplishing some
  end' `[dictionary definition]`
- [2] pick any vague definition

## What is a good function? 1/3

A good function ...

- Sometimes: is documented
  `[Ram, 2013][tidyverse style guideline of functions]`
- Is small `[Martin, 2009]`
  `[CppCore functions][tidyverse style guideline of functions]`
- Has a good name `[Martin, 2009]`
  `[CppCore functions][tidyverse style guideline of functions]`
  `[PEP 20a][Reitz et al., 2016]`
- Is easy to use correctly and hard to use incorrectly
  `[Meyers, 2005][CppCore functions][PEP 20c][PEP 20d]`
- Does one thing correctly `[Martin, 2009]`
  `[CppCore functions]`
  `[tidyverse style guideline of functions]`
- Is tested `[Martin, 2011][CppCore functions]`
  `[tidyverse style guideline of functions]`
- Raises helpful exceptions `[Martin, 2009]`
  `[CppCore functions][tidyverse style guideline of functions][PEP 20b]`
- Fast iff needed `[CppCore functions]`

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

Mandatory in some contexts `[Ram, 2013]`
`[tidyverse style guideline of functions]`.

## A good function has a good name

> There are only two hard things in Computer Science:
> cache invalidation and naming things
>
> Phil Karlton

![https://www.karlton.org/karlton/images/with-fish.jpg](phil_karlton_with_fish.jpg)

- starts with a verb `[tidyverse style guideline of functions]`
- readable `[PEP 20a]`
- intention-revealing `[Martin, 2009]`
- pronounceable `[Martin, 2009]`
- searchable `[Martin, 2009]`
- not cute `[Martin, 2009]`
- no pun `[Martin, 2009]`
- carefully `[CppCore functions]`


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

Function names start with lowercase character, name does not start with a
verb, input is not checked, clumsy interface:

```python
assert Prime(2, 2)
assert Prime(3, 2)
assert Prime(3, 3) # Nothing stops me!
assert not Prime(4, 2)
assert Prime(5, 2)
```

*The* classic on refactoring is `[Fowler, 2018]`.

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

A function should perform a single logical operation [CppCore F.2],
hence don't:

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

## A good function is tested

- A function should perform a single logical operation `[CppCore F.2]`.
  A function that performs a single operation
  is simpler to understand, test, and reuse.
- [Joint Strike Fighter Coding Standards, section 3](http://www.stroustrup.com/JSF-AV-rules.pdf):
  Testability: Source code should be written to facilitate testability

## Example 4

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

## Solutions 4

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

## Exercises

### Exercise 1: bad function names

Could you give examples of bad function names? Why are these names bad?

???- question "Answers"

    There are many, here are some:

    - `calculate`: calculates what?
    - `calc_bfgt`: calculates *what*?
    - `prime`: a prime number is a data type. What does this function do?
    - `needleman_wunch`: this is a technique to get a DNA alignment.


### Exercise 2: name the function

Imagine two DNA sequences:

```text
AAACCCGGGTTT
ATACCCGGGTAT
```

How would you call the algorithm that returns the number (i.e. a number
to indicate the second character) of which the characters
in the two DNA sequences mismatch
(it is `A` in the top one, `T` in the bottom one)?

???- question "Answer"

    There are many, here a table of combinations:

    1     |2          |3           |4
    ------|-----------|------------|-------
    `find`|`first`    |`difference`|`index`
    `get` |`[nothing]`|`mismatch`  |`locus`
    .     |.          |.           |`pos`

    These are up for debate and 'the best name' is determined by the
    project, progamming language and social rules, such as:

    Column 1: `find` versus `get`:

    - `get` is better:
      in some languages (e.g. C++) `find` is used in the standard libary
      for functions that return an iterator (whatever that is),
      hence `find` is confusing
    - `find` is better:
      We are looking for a difference, i.e. we are _finding_ something
      and our function name should reflect that

    Column 2: `first` versus `[nothing]`:

    - `first` is better: in some languages (e.g. C++) `first`
      is used in the standard library
      to indicate only the first match is returned,
      hence not using that would confuse
    - `nothing` is better: this is shorter

    Column 3: `difference` versus `mismatch`:

    - `mismatch` is better:
      in some languages (e.g. C++) the term 'mismatch' is used in the
      standard library for things that have different content
      (such as characters in a string),
      hence 'difference' would be the unexpected noun
    - `difference` is better:
      we are looking for a difference
      and our function name should reflect that

    Column 4: `index` versus `locus` versus `pos`:
    - `index` is better:
      if the function returns an index
      (i.e. the first position has index zero),
      `index` is the only correct description
    - `locus` is better:
      a position on a DNA sequence is called a 'locus',
      which is a more precise naming. Loci start counting at 1 (unlike
      Python indices, which start counting at 0), so the function is expected
      to do so too
    - `pos` is better:
      a position in a string is commonly abbreviated to `pos`
      and is broadly understood, also by non-biologists.

    Other good answers are those that:

    - starts with a verb
    - is as English as possible
    - only uses common abbreviations

## Example 2

Imagine two DNA sequences:

```text
AAACCCGGGTTT
ATACCCGGGTAT
```

How would you call the algorithm that detects all the locations of
where the DNA sequences are different?

???- question "Answer"

    There are many, here are two tables of combinations:

    1     |2          |3
    ------|-----------|-------------
    `find`|`all`      |`differences`
    `get` |`[nothing]`|`mismatches`


    1     |2          |3            |4
    ------|-----------|-------------|------
    `find`|`all`      |`difference` |`indices`
    `get` |`[nothing]`|`mismatch`   |`loci`
    .     |.          |.            |`pos`
    .     |.          |.            |`poss`
    .     |.          |.            |`posses`
    .     |.          |.            |`positions`

    Most of the reasoning is the same as in the previous answer,
    with the addition of:

    - `pos` is best: when it is common that `pos` can be a plural
      and/or in combination with `all` to signal so
    - `poss` is best: when this `+s` to signal a plural is
      already widespread in your project
      (note from Richel: I've never seen this in practice!)
    - `posses` is best: when the uses of a reduplicated plural
      (or: 'Gollumese', after the character in Lord of the Ring)
      to signal a plural is already widespread in your project
    - `positions` is best: when the project discourages these computer-y
      abbreviations

    Other good answers are those that:

    - starts with a verb
    - is as English as possible
    - only uses common abbreviations

## Example 3

Imagine two DNA sequences:

```text
AAACCCGGGTTT
ATACCGGGTTT
```

How would you call the algorithm that makes the sequences
have as much similarities as possible, by possibly inserting a `-`,
resulting in:

```text
AAACCCGGGTTT
ATACC-GGGTTT
```

???- question "Answer"

    1      |2          |3          |4
    -------|-----------|-----------|------
    `align`|`aligned`  |`dna`      |`seqs`
    `calc` |`[nothing]`|`[nothing]`|`sequences`
    `get`  |.          |.          |.

    Most of the reasoning is the same as in the previous answer,
    with the addition of:

    - `seqs` is a common abbreviation
    - `dna` signals that the function expects DNA sequences
      and will fail upon other sequences

    Other good answers are those that:

    - starts with a verb
    - is as English as possible
    - only uses common abbreviations

## References

- `[CppCore functions]` C++ Core Guidelines.
  <https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#S-functions>
- `[CppCore F.2]` C++ Core Guidelines.
   F.2: A function should perform a single logical operation,
   <https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#Rf-logical>
- `[Fowler, 2018]`
  Fowler, Martin.
  Refactoring: improving the design of existing code.
  Addison-Wesley Professional, 2018.
- `[Martin, 2009]` Martin, Robert C.
  Clean code: a handbook of agile software craftsmanship. Pearson Education, 2009.
- `[Martin, 2011]` Martin, Robert C.
  The clean coder: a code of conduct for professional programmers.
  Pearson Education, 2011.
- `[Meyers, 2005]` Meyers, Scott.
  Effective C++: 55 specific ways to improve your programs and designs.
  Pearson Education, 2005.
- `[PEP 20a]` PEP 20, 'Readability counts',
  [The Zen of Python](https://peps.python.org/pep-0020/#the-zen-of-python)
- `[PEP 20b]` PEP 20, 'Errors should never pass silently',
  [The Zen of Python](https://peps.python.org/pep-0020/#the-zen-of-python)
- `[PEP 20c]` PEP 20,
  'If the implementation is hard to explain, it's a bad idea.',
  [The Zen of Python](https://peps.python.org/pep-0020/#the-zen-of-python)
- `[PEP 20d]` PEP 20,
  'If the implementation is easy to explain, it may be a good idea.',
  [The Zen of Python](https://peps.python.org/pep-0020/#the-zen-of-python)
- `[Ram, 2013]` Ram, K. "rOpenSci-open tools for open science."
  AGU Fall Meeting Abstracts. Vol. 2013. 2013.
- `[tidyverse style guideline of functions]`
  <https://style.tidyverse.org/functions.html>
- `[Reitz et al., 2016]` Reitz, Kenneth, and Tanya Schlusser.
  The Hitchhiker's guide to Python: best practices for development.
  "O'Reilly Media, Inc.", 2016.
  Chapter 'General concepts'

