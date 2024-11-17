# Get started with a project

!!! questions

    - How to get started?
    - How can I use Git/GitHub?


!!! info "Content"

    - Get started with a git/github project
    - Do the basic `git` workflow
        - create documents
        - initial documentation

!!! info "Learning objectives of 'Get started with Git/GitHub'"

    - Demonstrate the ability to initiate and manage a software development project using Git and GitHub.

!!! note "Instructor notes"

    Prerequisites are:

    - Git acoount
    - GitHub account
    - Git set up on computer

    Teaching goals are:

    - Learners can demonstrate the ability to initiate and manage a software development project using Git and GitHub.

    Lesson Plan: **FIX**

    - **Total** 30 min
    - Theory 20
    - Discussions 10 min

!!! note "TOC"

    - A test project: Type-along on starting a project
        - REASON: have tested this step

    - test project ()
        - code file
            - git init
            - add and commit
        - you can also start a directory and do git init
        - Intro documentation
            - order your files
        - README
            - license
        - git diff
        - Start with the steps related to the project (Type-along)
            - Git locally with config and cloning
    - mkdir user
        - work in user/


!!! note "Think about:"

    - structure of the files and folders for the project
    - documentation already


!!! note

- Many projects/scripts start as something for personal use, but expands to be distributed.
- Let's start in that end and be prepared.
- The following steps can be very valuable for you in a couple of months as well as you revisit your code and don't know what it does or why you did this and that.

## Before we continue we need to configure Git

!!! Attention

    - Start your terminal of choice

!!! note "Pre-requirements"

    - **Git and GitHub should be configured prior to the course**
        - Test: ``ssh -T git@github.com``
        - Output should be something like this: ``Hi bclaremar! You've successfully authenticated, but GitHub does not provide shell access.``
    - Being comfortable with the command line. No expertise is required, but the lesson will be mostly taken from the command line.
    - Students should be familiar with using a **text editor** on their system.
    - We hope also that you have already done these steps:

    ```console
    git config --global user.name "<Your Name>"
    git config --global user.email <your GitHub-connected email address>
    git config --global init.defaultBranch "main"
    git config --global core.editor nano
    ```
    
    or replace nano with another editor, like in Windows: ``notepad``
    Verify with:
    
    ```console
    config --list
    ```

!!! note "Add also this!"

    ```console
    git config --global credential.helper cache
    git config --global credential.helper 'cache --timeout=36000'
    ```
    
    - With this we don't need to use ssh and the configuration with ``ssh-keys``, like below:

        - **Git and GitHub should be configured prior to the course**
        - Test: ``ssh -T git@github.com``
        - Output should be something like this: ``Hi bclaremar! You've successfully authenticated, but GitHub does not provide shell access.``

## What is Git, and what is a Git repository?

- Git is a version control system: can **record/save snapshots** and track the content of a folder as it changes over time.
- Every time we **commit** a snapshot, Git records a snapshot of the **entire project**, saves it, and assigns it a version.
- These snapshots are kept inside a sub-folder called `.git`.
- If we remove `.git`, we remove the repository and history (but keep the working directory!).
- `.git` uses relative paths - you can move the whole thing somewhere else and it will still work
- Git doesn't do anything unless you ask it to (it does not record anything automatically).
- Multiple interfaces to Git exist (command line, graphical interfaces, web interfaces).

### Git Cheat sheet

```console
git add     # add files or stage file(s)
git commit  # commit staged file(s)
git status  # see what is going on
git log     # see history
git push
git pull
```

## Start with course project

### View the project

- View the GitHub project at: <https://github.com/programming-formalisms/programming_formalisms_project_autumn_2024>

- See the tree!

```bash
├── CODE_OF_CONDUCT.md
├── LICENSE
├── README.md
├── codecov.yml
├── design
│   └── README.md
├── learners
│   ├── README.md
│   └── richel
│       └── README.md
├── main.py
├── mlc_config.json
├── pyproject.toml
├── requirements.txt
├── run_and_tumble.jpg
├── scripts
│   ├── install_this_package.sh
│   ├── run_console.sh
│   ├── run_tests.sh
│   └── unindent_text.sh
├── src
│   ├── __init__.py
│   └── bacsim
│       ├── __init__.py
│       └── experiment.py
└── tests
    ├── __init__.py
    └── test_experiment.py
```

- View README.md
- View License

!!! admonition "Concepts in Git"

    - **repository**: The project, contains all data and history (commits, branches, tags).
    - **add**: Stage you files (collect what to be added to the git record — a kind of middle step)
    - **commit**: Snapshot of the project, gets a unique identifier (e.g. `c7f0e8bfc718be04525847fc7ac237f470add76e`).
    - **cloning**: Copying the whole repository to your laptop - the first time. It is not necessary to download each file one by one.
        - `git clone` copies everything: all commits and all branches.
    - We synchronize commits between local and remote with
    - **git fetch**/**pull** and **git push**.

### Clone the course project

???+ question "Exercise: clone course project and create folders"

     **Now you and other people can clone this repository and contribute changes.**

    - You may want to create a directory on your computer for this course.
    - You can do it in the normal way or use your terminal, like this, in a good place (like "Courses" if you have that)
    - ``mkdir Programming_formalisms``
    - ``cd Programming_formalisms``
    - In GitHub, locate the **Code** button, select **SSH** and click the *copy* symbol to the right
    - Back in your terminal type ``git clone`` followed by pasting the copied text.
    - The result shall look something like this:

     ```console
     git clone git@github.com:programming-formalisms/programming_formalisms_project_summer_2024.git
     ```

    **What just happened?**

    - `cd` the new directory that was created
    - list the files with `ls`

    **Create a folder with your name**

    - step into (``cd``) the ``learners/`` directory
    - ``mkdir <your-name>``

    - Git needs files to be able to commit.

    - Therefore **create an empty README file in the created folder**

    - ``touch README.md``

    - git add/commit this file

    **Push your changes to the GitHub repo**

    - ``git push``

    **When everyone are done pull the latest changes to the local git repo**

    - ``git pull``

!!! info "Working on GitHub"

    - You can do basically the **same work at GitHub as in your local git repo**
    - The **graphical view** makes it easier to work with in everyday editing work at least.
        - Depends on your own preferences of course.
    - Here your commit each file at a time with the "commit button".
        - **No staging** that is.
        - Be aware of that feature!
    - **GitHub Actions** are workflows defined by you, like:
        - for automatic testing after each commit (Used in the test lessons)
        - for GitHub Pages, briefly covered in last session today or Extra reading: [Documentation](https://uppmax.github.io/programming_formalisms_intro/documentation_deeper.html).

!!! note "See also"

    - [Workshop on GitHub without command-line](https://coderefinery.github.io/github-without-command-line/)

### Concluding remarks

- We will work more with the project repo after lunch and the rest of the week
    - Code
    - Documentation
    - Releases
    
- Before that we will cover starting git project from existing project with no version control.
- Get a personal github project
- Get started with documentation

## Intro to documentation

### Order your files

- Think that **everything is worth to be part of documentation** (like GitHub directory tree)
- The parts from the software development cycle
    - The planning parts
        - Requirements:
        - what should the program deliver
        - dependencies
        - OS platforms
        - Risk analysis
    - Design documentation
        - Analysis: pseudo code and UML
    - Source code
        - with in-code documentation
    - README
    - (Full documentation)
    - (Tutorial)

!!! admonition "Directory structure"

    - **Different projects should have separate folders**

    - ReadMe file
    - Data  (version controlled)(.gitignore)
    - Processed data intermediate
    - (Manuscript)
    - Results  data, tables, figures (version controlled, git tags for manuscript version)
    - Src  version controlled code goes here
        - License (here or in the 1st level)
        - Requirements.txt
    - Doc
    - index
    - .gitignore file

## Start a Git/GitHub repo from existing project

!!! info "Principle"

    - Let's say you have some code you have started to work with
    - Initiate git project
        - Be in a terminal and go to the ``planets`` folder, which will be the project repository (**repo**)
        - run ``git init``
        - make sure that there is a ``.git`` directory created
    - stage and commit
    - upload to github

## Summary

!!! Goal

    - [ ] Demonstrate the ability to initiate and manage a software development project using Git and GitHub.

!!! keypoints

    - A repository can have one or multiple remotes (we will revisit these later).
    - A remote (GitHub) in this case serves as a full backup of your work.
    - Code development might be easier to develop in the local git repo since you can run and test locally in an easy way.
