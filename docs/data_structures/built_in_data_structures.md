# Built-in data structures

!!!- info "Learning objectives"

    - .

# Built-in data structures

## Problem

Are there classes that can help me solve problems more elegantly?

## Python classes

- `list`: heterogeneous container
- `tuple`: immutable `list`
- `set`: sets
- `dict`: dictionary
- Regular expressions: text patterns

From [Python 'Data Structures' documentation](https://docs.python.org/3/tutorial/datastructures.html)

## `set`

Sorted collection of unique elements.

```python
data = [3, 1, 4, 1, 5]
s = set(data)
assert 3 in s
assert list(s) == [1, 3, 4, 5]
```

- No need to check for elements existing twice

## `dict`

A dictionary:

```python
periodic_table = dict({1: "Hydrogen", 2: "Helium", 3: "Lithium"})
periodic_table[2] = "helium"
assert periodic_table[2] == "helium"
```

- Commonly uses as a look-up table
- A look-up table can store the results of earlier calculations

## Regular expressions

A state-machine for a pattern in text

```python
import re
dna_regex = re.compile("^[ACGT]*$")
assert dna_regex.match("")
assert dna_regex.match("A")
assert dna_regex.match("CA")
assert dna_regex.match("GCA")
assert dna_regex.match("TGCA")
assert dna_regex.match("TGCAAAAAA")
assert not dna_regex.match("nonsense")
```

- <https://docs.python.org/3/library/re.html>

