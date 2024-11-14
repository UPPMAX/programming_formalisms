# Testing in a team

!!!- info "Learning objectives"

    - understand .

???- question "For teachers"

    Prerequisites are:

    - Learners have .

    Teaching goals are:

    - Learners .

    Teaching form used:

    - .

    Lesson plan:

    - 5 mins: prior knowledge
        - When one works in a team, how to make sure my code keeps doing the same?
        - Test everything? If no, what to test?

    - 5 mins: presentation
    - 10 mins: demonstration `is_zero`
    - 25 mins: challenge
    - 10 mins: feedback

## Tests in a team

> If all tests pass, we are -by definition- happy.
>
> Programming team [tresinformal](https://github.com/tresinformal)

## Problem

Q: When one works in a team, how to make sure my code keeps doing the same?

```python
def get_test_dna_sequence():
  """Get a DNA sequence to be used in testing"""
  return "ACGTACGT"
```

. . .

A: Apply the Beyoncé Rule

## Beyoncé rule

'If you like it, then you gotta put a test on it'

```python
assert get_test_dna_sequence() == "ACGTACGT"
```

Teams should be reluctant to change tests: this will likely break other code.

![Beyoncé](beyonce.png)

> Source: [Wikimedia](https://commons.wikimedia.org/wiki/Category:Beyonc%C3%A9_Knowles_in_2020#/media/File:Beyonc%C3%A9_Black_Is_King_Still.png)

## Untestable functions

Q: How to test this function?

```python
def print_hello():
    print("Hello world")
```

. . .

A: Never write untestable functions

## Making untestable functions testable

Q: How to make this function testable?

```python
def print_hello():
    print("Hello world")
```

. . .

```python
def get_hello_world_text():
    return "Hello world"
```

## Testing graphical functions

Q: How to test this function thoroughly:

- Plot looks pretty
- Colors are correct
- Trend line is drawn

```python
def save_plot(filename, x_y_data):
    """Save the X-Y data as a scatter plot"""
```

. . .

A: usually: use **a human**, e.g. a code reviewer

In most cases, graphical analysis tools and/or AI are overkill. If you are stubborn: try!

