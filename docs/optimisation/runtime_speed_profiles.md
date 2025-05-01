---
tags:
  - speed
  - runtime
  - run-time
  - profile
  - profiling
---

# Runtime speed profiles

!!!- info "Learning outcomes"

    - Practice to get a run-time speed profile

???- question "For teachers"

    Prerequisites are:

    - .

    Teaching goals are:

    - .

    Prior:

    - .

    Lesson plans:

    ```mermaid
    gantt
      title Lesson plan pair programming 1
      dateFormat X
      axisFormat %s
      Introduction : intro, 0, 5s
      Theory 1: theory_1, after intro, 5s
      Exercise 1: crit, exercise_1, after theory_1, 15s
      Feedback 1: feedback_1, after exercise_1, 5s
      Theory 2: theory_2, after feedback_1, 5s
      Exercise 2: crit, exercise_2, after theory_2, 10s
      Exercise 2 after the break: crit, after exercise_2, 5s
    ```


## Why use runtime speed profiles?

> It is far, far easier to make a correct program fast, than it is to make a fast program correct.
>
> Herb Sutter

???- question "How does Herb Sutter look like?"

    ![Herb Sutter](herb_sutter.jpg)

    > Source [Wikimedia](https://commons.wikimedia.org/wiki/Category:Herb_Sutter#/media/File:Professional_Developers_Conference_2009_Technical_Leaders_Panel_7.jpg)

Your program is too slow.
You want to make it go faster.
Instead of guessing, you want to follow a formal method
to detect the speed bottleneck

## Another myth

```python
def slow_tmp_swap(x, y):
    tmp = x
    x = y
    y = tmp
    return x, y

def superfast_xor_swap(x, y):
    x ^= y
    y ^= x
    x ^= y
    return x, y
```

- [C++ Core Guidelines: Per.4: Don't assume that complicated code is necessarily faster than simple code](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#per4-dont-assume-that-complicated-code-is-necessarily-faster-than-simple-code)
- [C++ Core Guidelines: Per.5: Don't assume that low-level code is necessarily faster than high-level code](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#per5-dont-assume-that-low-level-code-is-necessarily-faster-than-high-level-code)
- [C++ Core Guidelines: Per.6: Don't make claims about performance without measurements](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#per6-dont-make-claims-about-performance-without-measurements)

## How to create a run-time speed profile?

- Use an input of suitable complexity
- The code to be run should take at least 10 seconds
- Consider using CI to obtain a speed profile every push!

Below is a minimally useful example code for runtime speed profiling.
It will show which of the two `isprime` functions is faster:

```python
def isprime_1(num):
    for n in range(2, int(num**0.5) + 1):
        if num % n == 0:
            return False
    return True

def isprime_2(num):
    if num > 1:
        for n in range(2, num):
            if (num % n) == 0:
                return False
        return True
    else:
        return False

def do_it():
    number = 15485863
    isprime_1(number)
    isprime_2(number)

import cProfile
cProfile.run('do_it()')
```

The output will look similar to this:

```bash
richel@richel-N141CU:~$ /bin/python3 /home/richel/GitHubs/programming_formalisms/docs/optimisation/minimal_speed_profile.py
         6 function calls in 1.143 seconds

   Ordered by: standard name

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
        1    0.000    0.000    1.143    1.143 <string>:1(<module>)
        1    0.001    0.001    0.001    0.001 minimal_speed_profile.py:1(isprime_1)
        1    0.000    0.000    1.142    1.142 minimal_speed_profile.py:16(do_it)
        1    1.142    1.142    1.142    1.142 minimal_speed_profile.py:7(isprime_2)
        1    0.000    0.000    1.143    1.143 {built-in method builtins.exec}
        1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}
```

This is what the columns mean (simplified from [the Python profiling manual](https://docs.python.org/3/library/profile.html)):

Parameter|Description
---------|---------------------------
`ncalls` |The number of times the function is called
`tottime`|The total time spent in the given function
`percall`|The time spent in the given function per call
`cumtime`|The cumulative time spent in this and all subfunctions
`percall`|The cumulative time spent in this and all subfunctions per call

## Test for increase in runtime speed

Imagine improving the speed of `function_a`.
You create a function called `function_b` that
should be faster.
You use TDD to have a test to work on:

```python
assert 10.0 * get_t_runtime_b() < get_t_runtime_a()
```

Adapt the constant to your preference.

## Exercises

### Exercise 1: read a run-time speed profile

Take a look at this speed profile:

```bash
   ncalls  tottime  percall  cumtime  percall function
        1   97.000   97.000   97.000   97.000 function_a
        1    1.000    1.000    1.000    1.000 function_b
        1    2.000    2.000    2.000    2.000 function_c
```

- Which function will you work on?

???- question "Answer"

    `function_a`: as 97 out of a 100 seconds, Python was running
    it code.

- Imagine you have improved that function. How much faster will your
  program maximally be?

???- question "Answer"

    If `function_a` is made to take 0 seconds, your program
    still takes 3 seconds. You've made the code (100 sec / 3 sec =) 33.3x
    faster.

- Would it be worth your time?

???- question "Answer"

    This depends on you.

### Exercise 2: read a run-time speed profile

Take a look at this speed profile:

```bash
   ncalls  tottime  percall  cumtime  percall function
        1   40.000   40.000   40.000   40.000 function_a
        1   30.000   30.000   30.000   30.000 function_b
        1   20.000   20.000   20.000   20.000 function_c
        1   10.000   10.000   10.000   10.000 function_d
```

- Which function will you work on?

???- question "Answer"

    `function_a`: as 40 out of a 100 seconds, Python was running
    it code.

- Imagine you have improved that function. How much faster will your
  program maximally be?

???- question "Answer"

    If `function_a` is made to take 0 seconds, your program
    still takes 60 seconds. You've made the code (100 sec / 60 sec =) 1.67x
    faster.

- Would it be worth your time?

???- question "Answer"

    This depends on you.

### Exercise 3: create a run-time speed profile

Follow the steps at 'Create a run-time speed profile'
in your own code, to obtain your own run-time speed profile

