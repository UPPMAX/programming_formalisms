# Expressive data types

!!!- info "Learning objectives"

    - Practice to use classes for expression
    - Practice to use classes for type safety
    - Understand difference between composition and aggregation
    - Practice to use composition for a 'has-a' relationship

# Data structures

```{python}
import this
```

> The Zen of Python, by Tim Peters
>
> \[...\] Readability counts. \[...\] If the implementation is hard to explain, it's a bad idea. If the implementation is easy to explain, it may be a good idea. \[...\]

## What and why?

Data structure are 'ways to organize your data'.

-   Bad way: put all in one `list`

Good (:innocent:) data structures:

-   Increase expressiveness
-   Bundles data that belongs together
-   Ensures correct state of the program

# `struct` design

Good (:innocent:) data structures:

-   **Increase expressiveness**
-   Bundles data that belongs together
-   Ensures correct state of the program

## Increase expressiveness, in design

"A two-dimensional coordinate **has a** x and a y component"

![](struct_coordinat.png)

> Class diagram of a two-dimensional coordinate

## Increase expressiveness, in code

### ![](python_icon_26x32.png)

```{python}
a = get_a()
print(a)
```

```{python}
print(type(a))
```

What is `a`?

### ![](r_icon_41x32.png)

```{r}
a <- get_a()
a
```

```{r}
class(a)
```

What is `a`?

## Increase expressiveness, in code

::: columns
::: {.column width="50%"}
![](python_icon_26x32.png)

```{python}
#| echo: false
#| eval: true
class Coordinat:
    def __init__(self, any_x, any_y):
      self.x = any_x
      self.y = any_y
    def __repr__(self):
        return "Coordinat"
    def __str__(self):
        return "(" + str(self.x) + ", " + str(self.y) + ")"
def get_a():
    return Coordinat(3.14, 2.72)
```

```{python}
#| echo: true
#| eval: true
a = get_a()
print(a)
```

```{python}
#| echo: true
#| eval: true
print(type(a))
```
:::

::: {.column width="50%"}
![](r_icon_41x32.png)

```{r echo=FALSE}
get_a <- function() {
  a <- c(3.14, 2.72)
  class(a) <- "Coordinat"
  a
}
```

```{r echo=TRUE}
a <- get_a()
a
```

```{r echo=TRUE}
class(a)
```
:::
:::

Ah, it is a **coordinat**!

-   [P.1. Express ideas directly in code](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#Rp-direct)
-   [PEP 20: 'Explicit is better than implicit'](https://peps.python.org/pep-0020/#the-zen-of-python)

## Exercise 1: design a struct (15 mins)

Goal:

-   to convince design is trickier than one thinks
-   to convince design has implications
-   to grow appreciation of classes

What are their elements? Which do you guess are structures? Were they?

-   A coordinate in 3 dimensions :innocent:
-   A velocity in two dimensions
-   A circle
-   A square