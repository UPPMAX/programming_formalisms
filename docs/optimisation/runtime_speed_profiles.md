# Runtime speed profile

!!!- info "Learning objectives"

    - Understand misconceptions on optimisation
    - Understand Amdahl's law
    - Practice to determine the big-O profile of a function
    - Practice to get a run-time speed profile


# Run-time speed profile

-   See which code is spent most time in
-   :monocle_face: Use an input of suitable complexity
    -   Note to self: next example should take at least 10 seconds!
-   :sunglasses: Consider using CI to obtain a speed profile every push!

## Run-time speed profile: code

-   [ ] Show R code in repo
-   [ ] Run R code from RStudio
-   [ ] Show Python code in repo
-   [ ] Run Python code from command line

## Myth 1

```{python}
#| echo: true
#| eval: true
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

. . .

-   [C++ Core Guidelines: Per.4: Don't assume that complicated code is necessarily faster than simple code](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#per4-dont-assume-that-complicated-code-is-necessarily-faster-than-simple-code)
-   [C++ Core Guidelines: Per.5: Don't assume that low-level code is necessarily faster than high-level code](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#per5-dont-assume-that-low-level-code-is-necessarily-faster-than-high-level-code)

## Exercise 1 \[30 mins\]

Create speed profile of any function you like.

-   [ ] Remind Python and R code on learner's repo

## Exercise 2 \[SKIP\]

Create speed profile of https://www.pythonpool.com/check-if-number-is-prime-in-python/

## Exercise 3 \[SKIP\]

Create speed profile of DNA alignment

# Step 3: Think

-   How to achieve the same with less calculations?
    -   Aim to change big-O, not some micro-optimization
    -   For example, store earlier results in a sorted look-up table

> Feynman Problem Solving Algorithm:
>
> 1.  Write down the problem.
> 2.  Think very hard.
> 3.  Write down the answer

# Step 4: Measure again

In TDD, this test would have been present already:

```{python}
#| echo: true
#| eval: false
assert 10.0 * get_t_runtime_b() < get_t_runtime_a()
```

Adapt the constant to reality.

-   [C++ Core Guidelines: Per.6: Don't make claims about performance without measurements](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#per6-dont-make-claims-about-performance-without-measurements)

## Recap quote

> It is far, far easier to make a correct program fast, than it is to make a fast program correct.
>
> Herb Sutter

![Herb Sutter](herb_sutter.jpg)

> Source [Wikimedia](https://commons.wikimedia.org/wiki/Category:Herb_Sutter#/media/File:Professional_Developers_Conference_2009_Technical_Leaders_Panel_7.jpg)

## Case study

-   [ ] Show ProjectRampal

