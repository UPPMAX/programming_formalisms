# Introduction

!!! questions

    - What is the Purpose of Formalism in Computer Science?

    - What is software development life cycle

    - There seem to be many concepts in this course. What do they mean?


!!! info "Content"

    We start with a more **theoretical introduction** covering the software and tools and mindsets for software development.


!!! info "Learning objectives of 'SDLC tools'"

    - Identify the main topics and objectives for the week's lessons.
    - Evaluate the importance of engaging with course content and identify strategies to maintain interest and motivation throughout the week.
    - We will set the start in why a formalized development of software is needed.

!!! note "Instructor notes"

    Prerequisites are:

    The [Pre-requirements](prereqs.md): 
    - Learners know basic Git
    - Learners know basic Python
    - Learners have installed necessary tools

    Teaching goals are:

    - Learners can can understand why a formalized development of software is important.

    Lesson Plan: 
    
    - **Total** 30 min
    - Theory 20
    - Discussions 10 min

!!! info "TOC"

    - What is software?
       - software concepts
       - types
       - outcome
           correct, reusable, efficient, changable
       - modularity  
    - Example
    - SLDC   


## What is software?
*Wikipedia*
- set of computer programs and associated documentation and data.
- This is in contrast to hardware, from which the system is built and which actually performs the work. 
- **User-written software: End-user development**
  - Users create this software themselves and _often overlook how important it may be to others_.

### Some software concepts
- program
- script (directly interpreted at run time)
- tool
- model
- application
---

```{admonition} Scripting vs programming
  - **Python** is an **interpreted language**.
    - Python uses an interpreter to translate and run its code. Hence Python is a **scripting language**.
  - Programs written in **C++** are **compiled** and then the compiled code runs to generate the output.
    - Hence, C++ is  a **programming language** and not a scripting language, since scripting languages are directly interpreted at run time and no prior compilation of the code takes place.
---

```{Note}
   We will not be very definite in the course in when to use scripting, program or tools 
```

### Outcome of a Program
- **Correct**
  - and _flawless_
- **Efficient**
  - _Utilize_ the computer system's resources
- **Reusable**
  - Finished _components_
  - Lower _development_ _costs_
  - _Faster_
  - Higher _quality_
  - _packaging_ technology
- **Changeable**
  - _Maintenance_ cost
    - Fix errors, bugs
    - Adapt to _new requirements_
    - Independent _modules_
    - Encapsulation/_information hiding_
   
## Code Example???
   
## Software Development Life Cycle (SDLC)

- We need a workflow in our programming projects!

### Some common steps 

- Planning
  - Analysis and design
- Development
  - Source control
  - Algorithms
  - In-code documentation
  - Optimization
    - Parallelism
- Test
- Development and maintenance
  - Documentation
  - Reproducibility and sharing
--- 
- ... and **Iterations**
---
### Agile development
  - Division of tasks into **short phases of work** and frequent **re-assessment** and adaptation of plans.

```{seealso}
More about life cycles in next session and later this week
```

```{todo}
Links
```

## Summary of Introduction
- Now after the overview you are ready to dig deeper in the topics and try it out yourself!

```{Keypoints}
- A program shall be or have content/components that is:
  - Correct
  - Efficient
  - Reusable
  - Changeable

- Software development is both series of steps: 
     1.	Requirements
     2.	Analysis and design
     3.	Development
     4.	Test
     5.	Development and maintenance
- ... and iteration of these

```
