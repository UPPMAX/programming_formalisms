# Deploy your code

!!! questions

    - How to make your program work for others?

!!! info "Content"

    - We will prepare for use of your code
    - But also...
        - some theory of packages
        - some theory of workflows
        - some theory of containers
        - get some hands on

!!! info "Learning objectives of 'Deployment'"

    - learners can mentalize the installation needs from the users perspective
    - learners can evaluate different available tools for reproducibility and installations
    - learners can prepare for different users: local computer, Cluster

???- note "Instructor notes"
    Prerequisites are:

    - ...

    Lesson Plan: **FIX**

    - **Total** 30 min
    - Theory 20
    - Discussions 10 min

???- info "TOC"

    - Overview
        - Recording dependencies
        - workflows
        - containers
    - Make a package

## Introduction

- It's about Distribution!

!!! note

    - Many projects/scripts start as something for personal use, but expands to be distributed.
    - Let's start in that end and be prepared.
    - The following steps can be very valuable for you in a couple of months as well as you revisit your code and don't know what it does or why you did this and that.


!!! attention

    - Make your program or workflow work for others and yourself in the future.
    - Let people understand how to use your program/tool


### To make sure

- Start with empty environment
    - good to do this from beginning
- Nowadays platforms are less important, still "system files" may be differ among OS platforms and Linux distributions
    - will your program require specific "system files"
    - are these typically not installed already?
    - in the best world test on Windows/Mac and Linux platforms
        - and with as empty as possible environment
- What about  Shared services like a cluster where users and most staff do not have writing privileges ('sudo' rights) for system installations?

!!! Discussion "Discussion: Where do you run your program?"

    - From a terminal?
    - On different computers?
    - On a cluster?

!!! Discussion "Discussion: One-time usage towards distributed package"

    - Have others used your code?
    - Did you plan it from beginning?
    - Did you take actions somehow?

## Recording dependencies

- **Reproducibility**: We can control our code but how can we control dependencies?
- **10-year challenge**: Try to build/run your own code that you have created 10 (or less) years ago. Will your code from today work in 5 years if you don’t change it?
- **Dependency hell**: Different codes on the same environment can have conflicting dependencies.

### Conda, Anaconda, pip, Virtualenv, Pipenv, pyenv, Poetry, requirements.txt …

**These _Python-related_ tools try to solve the following problems:**

- **Defining a specific set of dependencies**, possibly with well-defined versions
- **Installing those dependencies** mostly automatically
- **Recording the versions** for all dependencies
- **Isolated environments**
    - On your computer for projects so they can use different software.
    - Isolate environments on computers with many users (and allow self-installations)
    - Using **different Python/R versions** per project??
    - Provide tools and services to **share packages**

- [Python packaging lesson](https://aaltoscicomp.github.io/python-for-scicomp/packaging/).
    - Make Python packages of your code. **FIX**

- **Possibilities for other languages can be**
    - C/C+
        - CMake
        - Conda
    - Fortran
        - Fortran package manager
    - Julia
        - Pkg.jl
- [More info](https://uppmax.github.io/programming_formalisms_intro/reproducible_deeper.html#recording-dependencies)

- [The tools](https://uppmax.github.io/programming_formalisms_intro/reproducible_deeper.html#the-tools)

**Course advertisement**
[Python for scientific computing](https://aaltoscicomp.github.io/python-for-scicomp/)

### Containers

**Popular container implementations:**

- Docker
- Singularity (popular on high-performance computing systems)
- Apptainer (popular on high-performance computing systems, fork of Singularity)
- Docker images can be converted to Singularity/Apptainer images
- Singularity Python can convert Docker files to Singularity definition files

- [Environments by CodeRefinery](https://coderefinery.github.io/reproducible-research/environments)
- [Containers in the extra material](https://uppmax.github.io/programming_formalisms_intro/reproducible_deeper.html#containers)

### Workflows

!!! info "See also"

    **Learn more**
    [Workflow management by CodeRefinery](https://coderefinery.github.io/reproducible-research/workflow-management/)
    [Snakemake by CodeRefinery](https://nbis-reproducible-research.readthedocs.io/en/course_2104/snakemake/)

## Misc

- Make a file executable by its own

### Example Python

- make a header so that user can decide which python to use
- especially important on a shared system where python is not in the typical /usr/bin/python path.
- This line helps in the top of the main script:

```bash
#!/bin/env python
```

## Record our environment for other users

### Principle using python pip in a virtual environment

- We can make other users aware of the dependencies for our Python project.
- One can state those specifically as a list in a README
- Or, we can make a ready file (in python)

**Save your requirements as a file**

- You may have developed your Python program with your existing python modules environment. You may have installed some new packages during the development but did not track it in a good way.
- We need to identify what python packages a user (or you on another computer) will need, to make the program work!
    - There are many packages distributed in the "base" installation of Python so it is not just to look at the import lines in the code.
    - You may also be hard to get an overview because you have too many import lines, also distributed among files if you worked in a modular way

## Ignoring files and paths with .gitignore

Compiled and generated files are not committed to version control. There are many reasons for this:

- Your code could be run on different platforms.
- These files are automatically generated and thus do not contribute in any meaningful way.
- The number of changes to track per source code change can increase quickly.
- When tracking generated files you could see differences in the code although you haven't touched the code.

For this we use `.gitignore` files.

- Read more <https://uppmax.github.io/programming_formalisms_intro/git_deeper.html>

!!! example "From our project repo"

    programming_formalisms_project_summer_2024/blob/main/.gitignore>

!! info "Key points"

    **Make sure it works for others or yourself in the future!**


!!! admonition "Parts to be covered!"

    - &#9745; Source/version control
        - Git
        - We have a starting point!
        - GitHub as remote backup
        - branches
    - &#9745; Planning
        - &#9745; Analysis
        - &#9745; Design
    - &#9745; Testing
        - Different levels
    - &#9745; Collaboration
        - GitHub
        - pull requests
    - &#9744; Sharing
        - &#9745; open science
        - &#9744; citation
        - &#9745; licensing
        - &#9745; deploying
    - &#9744; Documentation
        - &#9745; in-code documentation
        - &#9744; finish documentation

