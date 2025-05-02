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

## Why use runtime speed profiles?

> It is far, far easier to make a correct program fast,
> than it is to make a fast program correct.
>
> Herb Sutter

???- question "How does Herb Sutter look like?"

    ![Herb Sutter](herb_sutter.jpg)

    > Source [Wikimedia](https://commons.wikimedia.org/wiki/Category:Herb_Sutter#/media/File:Professional_Developers_Conference_2009_Technical_Leaders_Panel_7.jpg)

Up until now, you've focussed on having code that is correct, instead
of being fast. This is smart: you should not optimize prematurely
`[CppCore Per.2]`, nor should you optimize without reason `[CppCore Per.1]`.

Now your program is getting too slow
so you now have a reason to improve its runtime speed.

However, you should not optimize each function,
as not each function is a speed bottleneck:
only optimize those functions that are speed bottleneck `[CppCore Per.3]`.

You should not guess where such a speed bottleneck is,
because developers -also very experienced developers- are known
to have a bad intuition `[Sutter & Alexandrescu, 2004]`

Instead, you need measurements before
making claims claims about performance
`[CppCore Per.6][Chellappa et al., 2008]`.

Here we use runtime speed profiles to find the bottleneck of your runtime
speed.

## Obtaining a minimal runtime speed profile

Here is the minimal Python code to get a speed profile:

```python
import cProfile

def do_it():
    print('Hello world')

cProfile.run('do_it()')
```

The code uses `cProfile` and its documentation
can be found at [the official Python documentation](https://docs.python.org/3/library/profile.html#module-cProfile)

This speed profile is useless, as it cannot detect a speed bottleneck:
it only runs 1 out of all 1 functions.

## Obtaining a minimal and useful runtime speed profile

Below is a useful speed profile, as it detects a speed bottleneck:

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

## Exercises

### Exercise 1

- Run the code of 'Obtaining a minimal runtime speed profile'.
- What is the output?

???- question "Answer"

    ```bash
    richel@richel-N141CU:~$ /bin/python3 /home/richel/GitHubs/programming_formalisms/docs/optimisation/minimal_profile.py
    Hello world
             5 function calls in 0.000 seconds

       Ordered by: standard name

       ncalls  tottime  percall  cumtime  percall filename:lineno(function)
            1    0.000    0.000    0.000    0.000 <string>:1(<module>)
            1    0.000    0.000    0.000    0.000 minimal_profile.py:3(do_it)
            1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
            1    0.000    0.000    0.000    0.000 {built-in method builtins.print}
            1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}
    ```

- Where is the documentation about what these columns mean?

???- question "Answer"

    Searching for 'cProfile output' will take you to
    [the Python profiling manual](https://docs.python.org/3/library/profile.html))

- What do the columns mean?

???- question "Answers"

    This is what the columns mean,
    simplified from [the Python profiling manual](https://docs.python.org/3/library/profile.html)):

    Parameter|Description
    ---------|---------------------------
    `ncalls` |The number of times the function is called
    `tottime`|The total time spent in the given function
    `percall`|The time spent in the given function per call
    `cumtime`|The cumulative time spent in this and all subfunctions
    `percall`|The cumulative time spent in this and all subfunctions per call

### Exercise 2: run a run-time speed profile

- Run the code as shown at
  'Obtaining a minimal and useful runtime speed profile'.
  What is the output?

???- question "Answer"

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

- What is the total length of the program? Which **two** lines did you find it?

???- question "Answer"

    1.143 seconds.

    You can find it at
    - the top (`6 function calls in 1.143 seconds`)
    - the first line
      (`1    0.000    0.000    1.143    1.143 <string>:1(<module>)`),
      which spans the whole prgram

- In which function is the speed bottleneck? Why?

???- question "Answer"

    In `isprime_2`, as the program spends 1.142 out of 1.143 seconds
    in this function.

### Exercise 3: read a run-time speed profile

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

    This was worth your time if you think a 33-fold speed increase
    was worth your time.

### Exercise 4: read a run-time speed profile

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

    This was worth your time if you think a 2-fold speed increase
    was worth your time.

## Exercise 4: should I learn a different language?

C, C++ and Rust allows one to write direct machine code.
You can write the theoretical best machine code in ... well ...
machine code. Hence, these are indeed the theoretically fastest
languages.

Python does not allow one to write machine code.
Hence, it cannot be as fast as the languages that can.

To write fast code, should one learn those languages instead?

Below is a figure from `[Prechelt, 2000]`.
It shows the distribution of runtime speeds of a certain problem,
for different programming language.

![Figure 2, from Prechelt, 2000](prechelt_fig_2_sub.png)

- Take a close look at the figure.
  The paper has an advice to yes/no learn a 'faster'
  programming language. What do you think the advice is?

???- question "Answer"

    The variance within a programming
    language is bigger than variance between
    languages (adapted fig 2, from `[Prechelt, 2000]`).


    Instead of learning a faster language, learn how to be fast in
    your language.

## References

- `[CppCore Per.1]` C++ Core Guidelines: Per.1: Don't optimize without reason
  [here](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#Rper-reason)
- `[CppCore Per.2]` C++ Core Guidelines: Per.2: Don't optimize prematurely
  [here](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#per2-dont-optimize-prematurely)
- `[CppCore Per.3]` C++ Core Guidelines: Per.3:
  Don't optimize something that's not performance critical
- `[CppCore Per.6]`
  [C++ Core Guidelines: Per.6: Don't make claims about performance without measurements](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#per6-dont-make-claims-about-performance-without-measurements)
- `[Chellappa et al., 2008]`
  Chellappa, Srinivas, Franz Franchetti, and Markus Püschel.
  "How to write fast numerical code: A small introduction."
  Generative and Transformational Techniques in Software Engineering II:
  International Summer School, GTTSE 2007, Braga, Portugal,
  July 2-7, 2007. Revised Papers (2008): 196-259.
- `[Prechelt, 2000]` Prechelt, Lutz. "An empirical comparison of c, c++, java, perl, python, rexx and tcl." IEEE Computer 33.10 (2000): 23-29.
- `[Sutter & Alexandrescu, 2004]` Sutter, Herb, and Andrei Alexandrescu. C++ coding standards: 101 rules, guidelines, and best practices. Pearson Education, 2004.
