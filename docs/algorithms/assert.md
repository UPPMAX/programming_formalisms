# assert

!!!- info "Learning objectives"

    - Understand design by contract
    - Understand algorithm names increase expressiveness of code
    - Understand difference between `if` and `assert` in function writing

## The role of `assert` within functions

Within functions, `assert` is used for:

- as a stub
- to do things in debug mode only
- to document assumptions a developer makes

## `assert` differs between debug and release

```bash
$ cat assert.py
assert 1 == 2

$ python -O assert.py

$ python assert.py
Traceback (most recent call last):
  File "/home/richel/assert.py", line 1, in <module>
    assert 1 == 2
AssertionError
```

## `assert` as a stub


```python
def align(dna_sequences):
    """Align the DNA sequences"""
    assert len(dna_sequences) == 2 # TODO
```

## `assert` in debug mode

```python
def align_two_dna_sequences(dna_sequences):
    """Internal function to align two DNA sequences"""
    assert len(dna_sequences) == 2 # TODO
```

Superior to documentation, as it cannot be ignored.

> Assert liberally to document internal assumptions and invariants
>
> @sutter2004cpp chapter 68.

## `assert` to document assumptions a developer makes

```python
def align_two_dna_sequences(dna_sequences):
    """Align the DNA sequences"""
    # ....
    results = ["AAAA", "AAC-"] # Should be result of calculation
    assert len(results[1]) == len(results[2])
```
