---
tags:
  - speed
  - runtime
  - run-time
  - improve
---

# Improve runtime speed

!!!- info "Learning outcomes"

    - Practice to improve the runtime speed

???- question "For teachers"

    Prerequisites are:

    - .

    Teaching goals are:

    - .

    Prior:

    - .

## Why improve run-time speed?

!!! info "A runtime speed profile"

    ![A flamegraph](flamegraph_50.png)

    > A runtime speed profile visualization adapted from
    > [some example Java code](https://github.com/jarasez/flamegraph)

Your program is too slow.
You want to make it go faster.
You've used runtime speed profiling to find the
runtime speed bottleneck.
Now, you want to follow a formal method
to improve the runtime speed.

## How to improve run-time speed

As an example, we assume that a function called `is_prime` is
the speed bottleneck.
Its behaviour is tested to be correct.

### 1. Write the test

We will write a new implementation of `is_prime`, in the
hope that it will be faster. We will call the current implementation
`is_prime_1` and the new implementation `is_prime_2`.
This is the test we'll write:

```python
assert get_t_is_prime_2() * 10 < get_t_is_prime_1()
```

Here we test that the newer implementation must be 10x as fast,
but you can use any constant other than 10 here.

### 2. Refactor

Before this situation:

- `is_prime`: the function actually used by the program,
  with the first implementation

Here is the simplified code:

```python
def is_prime(num):
    # First implementation here
```

The program now calls for three versions of `is_prime`:

- `is_prime`: the function actually used by the program
- `is_prime_1`: the first implementation
- `is_prime_2`: the second implementation

This calls for a split of the code like this:

```python
def is_prime(num):
    return is_prime_1(num)

def is_prime_1(num):
    # First implementation here

def is_prime_2(num):
    return is_prime_1(num)
```

Now:

- `is_prime` is a so-called 'forwarding function' or 'logistic function',
  probably calling the fastest implementation
- `is_prime_1` is just the first implementation
- `is_prime_2` is a stub for a (hopefully) faster implementation that,
  for now, calls the first implementation:
  we can assume that both implementations
  are equally fast :-)

## 3. Set up the test

The speed tests require some scaffolding,
due to the behavior of the `timeit` Python library:

```python
def get_test_prime():
    return 15485863

def get_t_is_prime_1_impl():
    is_prime_1(get_test_prime())

def get_t_is_prime_2_impl():
    is_prime_2(get_test_prime())

def get_t_is_prime_1():
    import timeit
    return timeit.timeit(get_t_is_prime_1_impl, number = 1)

def get_t_is_prime_2():
    import timeit
    return timeit.timeit(get_t_is_prime_2_impl, number = 1)
```

Note the functions with `_impl`. In this context, `impl` is short for
'implementation'. 'implementation' is commonly used for 'the place where
the actual work happens'. We need to create an `impl` function,
because `timeit` can only measure the duration of
functions that have no arguments

???- question "Really?"

    No, but:

    - the code would become less readable, as more scaffolding would be needed
    - implementation functions do exist


???- question "What is a slower implementation of `is_prime`?"

    Here is a slower implementation of `is_prime`:

    ```python
    def is_prime_1(num):
        if num > 1:
            for n in range(2, num):
                if (num % n) == 0:
                    return False
            return True
        else:
            return False
    ```


## Exercises

### Exercise 1: improve the run-time speed

Start with the code below,
including the test that breaks the code.
Assume that `is_prime` is correct.

```python
def is_prime(num):
    if num > 1:
        for n in range(2, num):
            if (num % n) == 0:
                return False
        return True
    else:
        return False

assert get_t_is_prime_2() * 10 < get_t_is_prime_1()
```

Fix the test following TDD.
Use any second implementation to determine if a number is prime.
Let `is_prime` use the faster implementation.

???- question "What is a faster implementation of `is_prime`?"

    Here is a faster implementation of `is_prime`:

    ```python
    def is_prime(num):
        for n in range(2, int(num**0.5) + 1):
            if num % n == 0:
                return False
        return True
    ```

???- question "Answer"

    ```python
    def is_prime(num):
        return is_prime_2(num)

    def is_prime_1(num):
        if num > 1:
            for n in range(2, num):
                if (num % n) == 0:
                    return False
            return True
        else:
            return False

    def is_prime_2(num):
        for n in range(2, int(num**0.5) + 1):
            if num % n == 0:
                return False
        return True

    def get_test_prime():
        return 15485863

    def get_t_is_prime_1_impl():
        is_prime_1(get_test_prime())

    def get_t_is_prime_2_impl():
        is_prime_2(get_test_prime())

    def get_t_is_prime_1():
        import timeit
        return timeit.timeit(get_t_is_prime_1_impl, number = 1)

    def get_t_is_prime_2():
        import timeit
        return timeit.timeit(get_t_is_prime_2_impl, number = 1)


    assert get_t_is_prime_2() * 10 < get_t_is_prime_1()
    ```

!!! info "Summary"

    - One can (and should) test for runtime speed improvement
    - Measure the runtime speed bottleneck; do **not** follow your gut-feeling 
    - Consider following the literature over your gut-feeling
