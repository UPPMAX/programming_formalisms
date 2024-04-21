# Big-O

!!!- info "Learning objectives"

    - Understand misconceptions on optimisation
    - Understand Amdahl's law
    - Practice to determine the big-O profile of a function
    - Practice to get a run-time speed profile

## QMD

## Problem

Q: When to optimize for speed?

A:

-   [C++ Core Guidelines: Per.1: Don't optimize without reason](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#Rper-reason)
-   [C++ Core Guidelines: Per.2: Don't optimize prematurely](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#per2-dont-optimize-prematurely)
-   [C++ Core Guidelines: Per.3: Don't optimize something that's not performance critical](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#per3-dont-optimize-something-thats-not-performance-critical)

## Problem

Q: How to improve the run-time speed of an algorithm?

. . .

> Make it work, make it right, make it fast.
>
> Kent Beck

A (simplified):

1.  Measure (hard to do @bartz2020benchmarking)
2.  Think
3.  Change code
4.  Measure again

## Problem

Q: How to improve the run-time speed of an algorithm?

A (simplified):

1.  Measure big-O
2.  Measure speed profile
3.  Think
4.  Change code
5.  Measure again

## Measurement 1: big-O

How your (combination of) algorithms scales with more complex input.

-   Counting the words in a book: O(n)
-   Looking up a word in a dictionary: O(log2(n))

:warning: Do measure big-O in release mode!

## Your algorithm

![](many_scatter_plots.png)

## Example

![](big_o_100.png)

:monocle_face: Work on B?

## Example

![](big_o_500.png)

## Example

![](big_o_2000.png)

:sunglasses: No, work on C instead

## Discussion

Big-O helps to:

-   find algorithm to profile
-   make predictions

Agree yes/no

## Exercise 1 \[SKIP\]

-   Measure big-O complexity of https://www.pythonpool.com/check-if-number-is-prime-in-python/

::: columns
::: {.column width="50%"}
🪱

```{python}
#| echo: true
#| eval: false
def isprime(num):
  for n in range(
    2, int(num**0.5)+1
  ):
    if num%n==0:
      return False
  return True
```
:::

::: {.column width="50%"}
🪱

```{python}
#| echo: true
#| eval: false
def isprime(num):
    if num> 1:  
        for n in range(2,num):  
            if (num % n) == 0:  
                return False
        return True
    else:
        return False
```
:::
:::

## Exercise 1 \[SKIP\]

-   Measure big-O complexity of https://www.pythonpool.com/check-if-number-is-prime-in-python/

::: columns
::: {.column width="50%"}
🪱

```{python}
#| echo: true
#| eval: false
def isprime(num):
  for n in range(
    2, int(num**0.5)+1
  ):
    if num%n==0:
      return False
  return True
```
:::

::: {.column width="50%"}
🪱

```{python}
#| echo: true
#| eval: false
def Prime(no, i = 2):
    if no == i:
        return True
    elif no % i == 0:
        return False
    return Prime(no, i + 1)
```
:::
:::

## Exercise 2 [SKIP]

-   Measure big-O complexity of DNA alignment at https://johnlekberg.com/blog/2020-10-25-seq-align.html

```         
ACGTACGTACGTACGTACGTACGT
ACGTACGTACGTCGTACGTACGT
```

```         
ACGTACGTACGTACGTACGTACGT
ACGTACGTACGT-CGTACGTACGT
```
