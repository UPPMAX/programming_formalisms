---
tags:
  - development
  - phase
  - introduction
---

# Development introduction

!!! info "Learning outcomes"

    Learners ...

    - have an overview of how the course teaches the 'Development' phase

??? question "For teachers"

    Prior:

    - What is a software development lifecycle?
    - Which type of software development lifecycle do we use?
    - What are the software development lifecycle phases used in this course?
    - Where are we in the software development lifecycle?
    - With the design done, what would be a good next step?

## What have we done so far?

In [the software development lifecycle](../lifecycle/README.md)
we have now rounded of the planning phase:

- We have created the design documents for the project
- We have learned how to work with an online repository

## What is next?

In [the software development lifecycle](../lifecycle/README.md)
we will now enter the 'Development' phase:

- We will learn how to develop good code in a systematic way
- We will learn how to work together in a more formal way
- We will write our first code for the learners project
  that is used in our research
- We will automate our deployment
- We will make sure the build does not break anymore

After this, we move to the 'Design' phase.

???- question "Why do the 'Development' phase before 'Design'?"

    To be able to (deeply) understand good design,
    we need to be able to express ourselves in code.

    After having written code with bad design (as you will :-) ),
    we can (better) experience the change to good design.


## Exercises

## Exercise 1: our first setup

We will make it possible to (after installing our package)
to run this code (as copied from
[exercise 1 'The ideal program' in the 'Registered report' session](../registered_report/README.md#exercise-1-the-ideal-program)):

```python
import weather
weather.do_experiment()
```

This code then should produce the output and files
we need as the results of our research.

Do you agree with this setup?

What would be the best next step according to you?

## Exercise 2: a stub package function

From this setup, a next step would be to write all the code
of the `weather` package to make the code above work:

```python
def do_experiment():
  # Read the data
  # Do the statistics
  # Save the statistics results to file
  # Create the figure
  # Save the figure to file
```

A function like this is called a 'stub', i.e. a beginning or a first sketch
of what it will be. This stub contains mostly *pseudocode*, in this
comments that tell in English what needs to be done.

Do you agree that writing this stub would be a reasonable next step?

What would be the best next step according to you?

## Exercise 3: which next step?

Our next step will be to test if the function `do_experiment`
indeed creates the files we need.

Would you agree why this is a good idea? If not, what do you think would be
better?

