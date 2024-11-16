# Introduction

???+ questions

    - What is the Purpose of Formalism in Computer Science?

    - What is software development life cycle

    - There seem to be many concepts in this course. What do they mean?


!!! info "Content"

    We start with a more **theoretical introduction** covering
    the software and tools and mindsets for software development.


!!! info "Learning objectives of 'Introduction'"

    - Identify the main topics and objectives for the week's lessons.
    - Evaluate the importance of engaging with course content and identify
      strategies to maintain interest and motivation throughout the week.
    - We will set the start in why a formalized development of software is needed.

!!! note "Instructor notes"

    Prerequisites are:

    The [pre-requirements](../prereqs.md):

    - Learners know basic Git
    - Learners know basic Python
    - Learners have installed necessary tools

    Teaching goals are:

    - Learners can can understand why a formalized development of software
      is important.

    Lesson Plan:

    - **Total** 30 min
    - Theory 20
    - Discussions 10 min

!!! info "TOC"

    - What is software?
        - software concepts
        - types
        - outcome
            - correct, reusable, efficient, changable
    - Example
    - SLDC

## Different types of Scientific software

- analysis of data
    - statistics
    - figures
    - visualization
- tools for process data
    - refining data (formatting)
    - bioinformatics
- workflows
- modelling (mimic the reality)
    - simulations time-varying behaviour of a system
    - mathematical models of relationships among variables in a system
- decision assistance
- Other

!!! discussion

    **What do you develop for?**

## Outcome of a Program

- **Correct**
    - and *flawless*
- **Efficient**
    - *Utilize* the computer system's resources
- **Reusable**
    - Finished *components*
    - Lower *development* *costs*
    - *Faster*
    - Higher *quality*
    - *packaging* technology
- **Changeable**
    - *Maintenance* cost
        - Fix errors, bugs
        - Adapt to *new requirements*
        - Independent *modules*
        - Encapsulation/*information hiding*

## How to program?

### Object oriented programming

- Object-oriented (OO) programming is
    - a mindset of mimicking the real-world as:
    - **entities (`objects`)** that are different
    - or **share attributes**with each-other (within a `**class**`)
    - info-hiding mindset...


**Objects**

![Elevator objects](../img/elevators.png)

**Class**

```mermaid
classDiagram
  class Elevator{
    +string direction
    +int floor

    +goto_floor()
    +stop()
    + which_floor()
  }
```

???- info "Object orientation (OO) in some programming languages"

    - OO (built-in classes)
        - C++
        - Java
        - Python
        - Julia
    - OO features
        - Fortran 2003-
        - MATLAB
        - Perl
        - PHP
    - OO object-based (but not class-based)
        - Javascript

### Functional programming

- More classical as it is more focused on the algorithms
- Functions
- Modules: a way to *gather functions* with similar functionality
- Also to some extent info-hiding mindset

!!! info "To sum up"

    - At its simplest, functional programming uses immutable data to tell the program exactly what to do.
    - Object-oriented programming tells the program how to achieve results through objects altering the program's state.
    - Both paradigms can be used to create elegant code.

!!! info "See also"

    - More on Tuesday: Object-orientation **FIXLINK**
    - More on Thursday: [Algorithms](../thursday_intro.md)
    - More on Friday: [Modular programming](../friday_intro.md)

### Modular coding

- Modular coding breaks up the code in blocks that could be separate files.
- Modularity could be within a program but also for a workflow.

## Software Development Life Cycle (SDLC)

- We need a workflow in our programming projects!

### Some common steps

- **Planning**
    - Analysis and design
- **Development**
    - Source control
    - Algorithms
    - In-code documentation
    - Optimization
        - Parallelism
    - Tests
- **Deployment** and **maintenance**
    - Documentation
    - Reproducibility and sharing
        - Packaging and dependencies

- ... and **Iterations**

- Agile development
    - Division of tasks into **short phases of work** and frequent **re-assessment** and adaptation of plans.

## Summary of Introduction

- Now after the overview you are ready to dig deeper about the tools!

!!! info "Keypoints"

    - A program shall be or have content/components that is:
        - Correct
        - Efficient
        - Reusable
        - Changeable

    - Software development is both series of steps:
        1. Requirements
        2. Analysis and design
        3. Development
        4. Test
        5. Deployment and maintenance
    - ... and iteration of these
