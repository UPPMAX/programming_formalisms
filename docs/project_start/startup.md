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
    $ git config --global user.name "<Your Name>"
    $ git config --global user.email <your GitHub-connected email address>
    $ git config --global init.defaultBranch "main"
    $ git config --global core.editor nano
    ```
    
    or replace nano with another editor, like in Windows: ``notepad``
    Verify with:
    
    ```console
    git config --list
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


!!! admonition "Concepts in Git"

    - **repository**: The project, contains all data and history (commits, branches, tags).
    - **add**: Stage you files (collect what to be added to the git record — a kind of middle step)
    - **commit**: Snapshot of the project, gets a unique identifier (e.g. `c7f0e8bfc718be04525847fc7ac237f470add76e`).
    - **cloning**: Copying the whole repository to your laptop - the first time. It is not necessary to download each file one by one.
        - `git clone` copies everything: all commits and all branches.
    - Branches on the remote appear as (read-only) local branches with a prefix, e.g. `origin/main`.
    - We synchronize commits between local and remote with `git fetch`/`git pull` and `git push`.

## A test project started locally

### Initial code base

- Let's say you have some code you have started to work with

**Hello world or similar**

    - Make a folder with name `<>`
     - BASH: ``mkdir <>``
    - Create a folder in the ``<>/`` folder, called ``Figures/``
    - Also create a folder within ``planets/`` folder with the name ``code``
    - In the ``code`` folder, create a file.
    - Copy paste the python code above into it and save as ``<>.py``.

### Initiate a project

Exercise

!!! example "Type-along or demo **FIX**"

    - Be in a terminal and go to the ``planets`` folder, which will be the project repository (**repo**)
    - run ``git init``
    - make sure that there is a ``.git`` directory created
    
    - Now you have a git repo called planets
    - check with the command: ``git status``
    - It is always a safe command to run and in general a good idea to do when you are trying to figure out what to do next:

    - So far, there is no content. We have to manually add the content to the repo.

    - This is done with the commands ``add`` and ``commit``

### Staging files

!!! example "Demo or type-along"

    ```console
    $ git status

    On branch main

    No commits yet

    Untracked files:
      (use "git add <file>..." to include in what will be committed)
            Figures/
            code/
    nothing added to commit but untracked files present (use "git add" to track)

    ```

- The two files are untracked in the repository (directory).
- You want to **add the files** (focus the camera) to the list of files tracked by Git.
- Git does not track any files automatically and you need make a conscious decision to add a file.
- Let's do what Git hints at and add the files:

!!! example "Type-along or demo"

    ```console
    $ git add .    # < -- "." means all files
    $ git status

    On branch main

    No commits yet

    Changes to be committed:
      (use "git rm --cached <file>..." to unstage)
            new file:   Figures/planet_earth.png
            new file:   code/planet.py
    ```

    Now this change is *staged* and ready to be committed.

### Commit

- Every time we **commit** a snapshot, Git records a snapshot of the **entire project**, saves it, and assigns it a version.
- BUT only what we have added to the "staging" area!

Let us now commit the change to the repository:

!!! example "Demo or Type-along"
    ```console
    $ git commit -m "add folders and planet code"

    [main (root-commit) 6a416b5] add folders and planet code
     2 files changed, 58 insertions(+)
     create mode 100644 Figures/planet_earth.png
     create mode 100644 code/planet.py
    ```

    Right after we query the status to get this useful command into our muscle memory:

    ```console
    $ git status

    On branch master
    nothing to commit, working tree clean
    ```

What does the `-m` flag mean? Let us check the help page for that command:

```console
git help commit
```

- You should see a very long help page as the tool is very versatile (press q to quit).
    - Do not worry about this now but keep in mind that you can always read the help files when in doubt.
    - Searching online can also be useful, but choosing search terms to find relevant information takes some practice and discussions in some online threads may be confusing.
    - Note that help pages also work when you don't have a network connection!

**Alternative commits**

- You can also omit the ``-m`` option and a text editor will open.
- The first line will be your commit message.
- You can add other lines to add some more detailed info about your changes.

!!! tip "Writing useful commit messages"

    [Check this page!](https://uppmax.github.io/programming_formalisms_intro/git_deeper.html#writing-useful-commit-messages)

