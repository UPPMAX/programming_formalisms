---
tags:
  - deployment
  - deploy
  - code
---

# Deploy your code

!!! questions

    - How to make your program work for others?

!!! info "Learning outcomes of 'Deployment'"

    - I can mentalize the installation needs from the users' perspective
    - I can evaluate different available tools for reproducibility and installations
    - I can make an installation instruction for potential users

!!! info "Content"

    - We will prepare for installation of your code
    - But also...
        - some theory of packages
        - some theory of workflows
        - some theory of containers
        - get some hands on

???- note "Instructor notes"

    Prerequisites are:

    - Package

    Lesson Plan: **FIX**

    - **Total** 30 min
    - Theory 20
    - Discussions 10 min

???- info "TOC"

    - Overview
        - Recording dependencies
        - workflows
        - containers

???- admonition "Changes"

    - implement new project
    - clear goal
    - clearer guide
    - ask about level
    - exercises
        - state where to work
        - practical things within exercise (not needing to scroll back and forth)
        - clearer instructions
        - advanced exercises

## Introduction

- It's about Distribution!

!!! note

    - Many projects/scripts start as something for personal use, but expands to be distributed.
    - Let's start in that end and be prepared.
    - The following steps can be very valuable for you in a couple of months as well as you revisit your code and don't know what it does or why you did this and that.

!!! attention

    - Make your program or workflow works for others and yourself in the future.

## Recording dependencies

- **Reproducibility**: We can control our code but how can we control dependencies?
- **10-year challenge**: Try to build/run your own code that you have created 10 (or less) years ago. Will your code from today work in 5 years if you don’t change it?
- **Dependency hell**: Different codes in the same environment can have conflicting dependencies.

!!! note "Ways to distribute"

    - Python packages:
        - pip (PyPI)
        - conda
    - R:
        - R repos like CRAN and GitHub (devtools)
        - conda
    - Compiled languages:
        - built binaries (platform specific)
        - install from source
            - manual
            - make
            - CMake
    - General tools
        - Containers

???- info  "Conda & pip"

    **These _Python-related_ tools try to solve the following problems:**

    - **Defining a specific set of dependencies**, possibly with well-defined versions
    - requirements.txt...
    - **Installing those dependencies** mostly automatically
    - **Recording the versions** for all dependencies
    - **Isolated environments** (venv, virtualenv)
        - On your computer for projects so they can use different software.
        - Isolate environments on computers with many users (and allow self-installations)
        - Using **different Python/R versions** per project??
        - Provide tools and services to **share packages**
    
- Let's focus here on PyPI!
    - Remember we made a package this morning!
- We'll cover the other tools after the exercise.

### To make sure about needed dependencies

- Start with empty environment
- Nowadays platforms are less important, still "system files" may differ among OS platforms and Linux distributions
    - will your program require specific "system files"
    - are these typically not installed already?
    - in the **best world test on Windows/Mac and Linux platforms**
        - and with as empty as possible environment
- What about Shared services like a cluster where users and most staff do not have writing privileges ('sudo' rights) for system installations?

!!! discussion "Discussion: Where do you run your program?"

    - From a terminal?
    - On different computers?
    - On a cluster?

!!! info "We need to"

    - Inform what is needed to run the software in the README file
    - Or provide them with everything needed
        - hopefully not interfering with other software they are using

### Principle using python pip in a virtual environment

- We can make other users aware of the dependencies for our Python project.
- One can state those specifically as a list in a README
- Or, we can make a ready file (in python)

**Save your requirements as a file**

- You may have developed your Python program with your existing python modules environment. You may have installed some new packages during the development but did not track it in a good way.
- We need to identify what python packages a user (or you on another computer) will need, to make the program work!
    - There are many packages distributed in the "base" installation of Python so it is not just to look at the import lines in the code.
    - You may also be hard to get an overview because you have too many import lines, also distributed among files if you worked in a modular way

!!! example

    - [requirements.txt](https://github.com/bclaremar/planets-bjorn/blob/main/code/requirements.txt)

## Ignoring files and paths with .gitignore

Compiled and generated files are not committed to version control. There are many reasons for this:

- Your code could be run on different platforms.
- These files are automatically generated and thus do not contribute in any meaningful way.
- The number of changes to track per source code change can increase quickly.
- When tracking generated files you could see differences in the code although you haven't touched the code.

For this we use `.gitignore` files.

- Read more <https://uppmax.github.io/programming_formalisms_intro/git_deeper.html>

!!! example "From our project repo"

    <programming_formalisms_project_summer_2025/blob/main/.gitignore>

## Exercise 1: Identify lacking packages

    - Work individually locally (in VS Code)

???- question "Step 1: Start an EMPTY python virtual environment"

    - Go to the dir ``learners/<your-name>``
    - Create a new folder called ``test``
    - Go into that folder
    - Create a virtual environment, called ``usertest``

        ```console
        python -m venv usertest
        ```

    - This creates an empty virtual environment located in `usertest` directory

    - **GITIGNORE!**
    - Activate

    === "Mac/Linux"

        ```console
        source usertest/bin/activate
        ```

    === "Windows"

        ```console
        source usertest/Scripts/activate
        ```

    - Note the ``(usertest)`` in the beginning of the prompt!

    ```console
    which python        #must point to the python belonging to the virtual environment
    python -V            # note this version
    which pip        #must point to the pip belonging to the virtual environment
    ```

    - Check it is empty with the command ``pip list``
        - It should just show

        ```bash
        Package    Version
        ---------- -------
        pip        23.2.1
        setuptools 65.5.0
        ```

        - and some notes.
   
???- question "(Optional Step 2: Add the folder to ``.gitignore``)"

    - add to .gitignore file

???- question "Step 3: Install the weather package and run the program and look for missing packages'"

    **FIX**
    
    - Install the weather package with ``pip install -i ...``
    
    ???- info "Hints"

        - The main program ``main.py`` is in the repo.
        - ``weather`` is a python package needed by ``main.py``
        - available here: <https://test.pypi.org/project/weather/1.0.1/>

    ```bash
    pip install -i https://test.pypi.org/project/bacsim==1.0.1
    ```

    - Run the program

    **FIX**
 
    ```bash
    python ...
    ```
    
    - It may give you errors of missing packages, like ``numpy``
    - Install them with

    ```console
    pip install <package name>
    ```

    - Do NOT use ´´--user``, since it should be installed in the virtual environment only.
    - Do this until your program works

???- question "Step 4: Save your requirements as a file that user can run to get the needed dependencies"

    - Check what is installed by:

    ```console
    pip freeze        #'pip list' works as well
    ```

    - You will probably recognise some of them, but some may be more obscure and were installed automatically as dependencies.
    - Save your requirements as a file that user can run to get the needed dependencies.

    ```console
    pip freeze > requirements.txt
    ```

    - **Other users** can then install the same packages with:

        ```console
        pip install --user -r requirements.txt
        ```

    - End the isolated environment
    
    ```console
    deactivate
    ```

???- question "(Optional) Step 5: Test the requirements file in a new environment"

    - Double-check it works by:
    
    - Create another virtual environment
    
        ```console
        python -m venv usertest2
        ```

    - Activate

    === "Mac/Linux"

        ```console
        source usertest2/bin/activate
        ```

    === "Windows"

        ```console
        source usertest2/Scripts/activate
        ```

    - Note the ``(usertest2)`` in the beginning of the prompt!
    
    ```console
    pip install --user -r requirements.txt
    ```

    - Run the program!

    No errors shpuld show up!

### Follow up

???- question "(One person): Move a working requirements file to the ``src/learners`` folder"

    - Move the requirements file to the ``learners/source`` folder
    - This will be the "official" requirements file
    - That person git commit and pushes to GitHub!

## Going further with deployment

???- admonition "Python for scientific computing"

    **Course advertisement**
    
    - [Python for scientific computing](https://aaltoscicomp.github.io/python-for-scicomp/)
    - [Python packaging session](https://aaltoscicomp.github.io/python-for-scicomp/packaging/).

???- admonition "Possibilities for other languages can be"

    - C/C+
        - CMake
        - Conda
    - Fortran
        - Fortran package manager
    - Julia
        - Pkg.jl

- [More info](https://uppmax.github.io/programming_formalisms_intro/reproducible_deeper.html#recording-dependencies)
- [The tools](https://uppmax.github.io/programming_formalisms_intro/reproducible_deeper.html#the-tools)


???- admonition "Compiled language, course"

    - [Build Systems Course](https://github.com/PDC-support/build-systems-course)

???- admonition "Containers"

    - Containers let you install programs without needing to think about the computer environment, like

        - operative system
        - dependencies (libraries and other programs) with correct versions

    ![Containerization](./img/Containerization_nextlabs.png)

    > From [Nextlabs](https://www.nextlabs.com/what-is-containerization/)

    !!! info

        - 2(3) types

            1. Singularity/Apptainer perfect for HPC systems
            2. Docker that does not work on HPC-systems

                - But docker images can be used by Singularity and Apptainer

        - Everything is included
        - Workflow:

            - Download on Rackham or local computer
            - Transfer to Bianca
            - Move to from wharf to any place in your working folders on Bianca

        - Draw-backs

            - you install also things that may be already installed
            - therefore, probably more disk space is needed

    !!! info "More info"

        - [Singularity course](https://pmitev.github.io/UPPMAX-Singularity-workshop/)
        - [Environments by CodeRefinery](https://coderefinery.github.io/reproducible-research/environments)
        - [Containers in the extra material](https://uppmax.github.io/programming_formalisms_intro/reproducible_deeper.html#containers)

???- admonition "Workflows"

    **Learn more**
    
    - [Workflow management by CodeRefinery](https://coderefinery.github.io/reproducible-research/workflow-management/)
    - [Snakemake by CodeRefinery](https://nbis-reproducible-research.readthedocs.io/en/course_2104/snakemake/)

## Quality of life

- Run a python script without the ``python`` before in a linux environment!

- This line helps in the top of the main script:

    ```bash
    #!/bin/env python
    ```

- Then the python active in "PATH" will automatically be used
    - especially important on a shared system where python is not in the typical ``/usr/bin/python`` path.

## Start a Git/GitHub repo from personal existing project

- Many projects/scripts start as something for personal use, but expands to be distributed.
- Let's start in that end and be prepared.

### Principle

- Initiate git project
    - Browse to right _root_ directory (the folder containing all the project-related files)
- Stage and commit
- upload to github

### Try yourself

- Let's say you have some code you have started to work with
- Start with 1A OR 1B

???- question "Exercise 1A: Start project from one of your existing projects"

    - Just use an existing programming project you have today
    - Browse to right _root_ directory (the folder containing all the project-related files)

???- question "Exercise 1B: Start a new test project"

    - Make a ``test_project`` directory in a good place (like a local ``Programming formalisms`` course folder)
    

    ???+ question "In VS Code?"

        - Make a new window
        - Open Folder
        - Create new Folder with name ``test_project``
        - Select folder
        - Create and save a file ``hello.py`` with the following code base and the in-code documentation answering the question "why".

        ```python
        # We just want some output from a simple program
        print('Hello world!')
        ```

???- question "Exercise 2: Initiate the project"

    ???- question "VS CODE""

        - Initialize and then continue with step 3.
        - Or Publish to GitHub diectly **and you are done**!
            - You may change the name of the repo for the GitHub instance, but not recommended.
            - Double check on GitHub!

    ???- question "Terminal"

        - Be in a terminal and go to the ``project`` folder, which will be the project repository (**repo**)
        - run ``git init``
        - make sure that there is a ``.git`` directory created
            - you have to show hidden files, in bash terminal with ``ls -a``

        - Now you have a git repo called ``test_project``
        - check with the command: ``git status``
        - It is always a safe command to run and in general a good idea to do when you are trying to figure out what to do next:

- So far, there is no content. We have to manually add the content to the repo.

???- question "Exercise 3: Add and commit the content"

    - Add and Commit your changes

    ???- question "VS Code"

         We do this all the time! :)
    
    ???- question "Terminal"

        ```console
        git add
        git commit -m 'first commit'
        ```

???- question "Exercise 4: Upload to GitHub"

    ???- question "In VS Code"

        - There was an opportunity to directly publish on GitHub
    
    ???- question "From GitHub"
    
        - Make sure that you are **logged into GitHub**.
        - You can use this for both VS Code and terminal

        <figure markdown="span">
        ![New repo](../i/New_repo.png){ width="500" }
        </figure>
    
    
        - To create a repository we either click the green button "New" (top right corner).
    
        - Or if you see your profile page, there is a "+" menu (top right corner).
    
        ![New top-right](../img/new-top-right.png){ width=60% }

        ---

        - On this page choose a project name, e.g. ``test_project``

        - **NOTE** It is not necessary to have the same name but it makes things easier to know what is what when syncing between GitHub and git.

        - For the sake of this exercise **do NOT select** "Initialize this repository with a README"
        - and **NO Licence**

        ![New repo](../img/New_repo_formalisms.png)
        > Example project

        - Press "**Create repository**"

        ![Create and push](../img/created_push.PNG)

        - Choose **html**
        - Copy-paste the code for "**…or push an existing repository from the command line**"
        - Go to **local git terminal** and go to the **git project you started above**
        - Paste the code

        - Did it work??
        - Reload the GitHub page and see the files present locally is also present there.

        **Done!**

### What we did

```mermaid
graph TB

P["Project idea"] -->|git init| Node2
P["Project idea"] --> hello.py -->|git add| Node4
Node4 --> |git commit| Node1
Node2 --> |git push| Node5

%% C[Uncommited changed hello.py] -->|commit button| R
R <--> Node5
       subgraph "Local Git"
        Node2[project]
        Node1[hello.py]
        Node1 <--> Node2

        end

        subgraph "staging area"
        Node4[hello.py]
        end

        subgraph "GitHub"
        Node5[project]
        R[hello.py]
        end

```

## Summary

!!! info "Key points"

    **Make sure it works for others or yourself in the future!**


!!! admonition "Parts to be covered!"

    - &#9745; Source/version control
        - Git
        - GitHub as remote backup
        - **inititalize from existing project**
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
        - &#9744; licensing
        - &#9745; deploying
    - &#9744; Documentation
        - &#9745; in-code documentation
        - &#9744; finish documentation

