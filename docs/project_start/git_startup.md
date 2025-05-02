---
tags:
  - project
  - getting started
  - clone
  - start
  - set up
  - setup
---

# Git and get started with a project

!!! info "Learning outcomes of 'Get started with Git/GitHub'"

    Learners
    
    - are connected to the course repo
    - can commit
    - can write useful commit messages
    - know how a local vs remote repo work
    - can push/pull
    - can manage conflicts
    - can initiate new repo from (perhaps last day)

!!!- note "Instructor notes"

    Prerequisites are:

    - Git acoount
    - GitHub account
    - Git set up on computer

    Not needed

    - Use of git before

???- admonition "Changes"

    - clear goal
    - clearer guide
    - ask about level
    - If possible simplify things even further, or expand on rationale behind each step not just "big picture"
    - practical examples than just explain the concept.
    - dictionary
    - exercises
        - practical things within exercise (not needing to scroll back and forth)
        - clearer instructions
        - solutions
        - (advanced exercises)

## Source/version control and collaboration

**FIX** RE_ARRANGE

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
    - We synchronize commits between local and remote with
    - **git fetch**/**pull** and **git push**.

### The essence of version control

Summarized from [Code refinery](https://coderefinery.github.io/git-intro/motivation/)

- System which records **snapshots** of a project
- Implements **branching**:
    - You can work on several **feature** branches and switch between them
    - **Different people** can work on the same code/project without interfering
    - You can **experiment** with an idea and discard it if it turns out to be a bad idea
- Implements **merging**:
    - Person A and B’s simultaneous work can be **easily combined**

!!! info "Why Git?"

    We will use [Git](https://git-scm.com) to record snapshots of our work:

    - **Easy to set up**: no server needed.
    - **Very popular**: chances are high you will need to contribute to somebody else's code which is tracked with Git.
    - **Distributed**: good backup, no single point of failure, you can track and clean-up changes offline, simplifies collaboration model for open-source projects.
    - Important **platforms** such as [GitHub](https://github.com), [GitLab](https://gitlab.com), and [Bitbucket](https://bitbucket.org) build on top of Git.

    However, any version control is better than no version control and it is OK to prefer a different tool than Git.

    - Other tools:

        - [Subversion](https://subversion.apache.org)
        - [Mercurial](https://www.mercurial-scm.org)
        - [Pijul](https://pijul.org/)

## Collaboration

### Example

- Someone has given you access to a repository online and **you want to contribute** to it.
- Quite easy to make a **copy and send a change back**.

    1. get repository, make a change locally, and send the change directly back.
    2. make a "pull request" that allows a review.

- Once we know how code review works:
    - we will be able to propose changes to repositories of others
    - review changes submitted by external contributors.

## Before we continue we need to configure Git

!!! attention

    - Start VS Code

???- note "Did you set up git and GitHub?"

    - **Git and GitHub should be configured prior to the course**
    - We hope also that you have already done these steps HERE **FIX LINK**


### View the project we will work with

???+ Demo "View the GitHub project at: <https://github.com/programming-formalisms/programming_formalisms_project_summer_2025>"

    - Click on a folder or file in the file explorer.
    - This enables the file "Expand file tree" button to the left of the repo name.
    - Click on that and look at the file tree!
    - View README.md
    - View Code of conduct
    - View License
    - Look at the history ("Commits" button just above the file explorer)
    
### Clone the course project

???- question "Exercise: clone course project and create folders (3 min)"

    - You may want to create a directory on your computer for this course.
    - You can do it in the normal way or use your terminal, like this, in a good place (like "Courses" if you have that)
    - ``mkdir Programming_formalisms``
    - ``cd Programming_formalisms``
    - In GitHub, locate the **Code** button, select **SSH** and click the **copy** symbol to the right
    - Back in your terminal type ``git clone`` followed by pasting the copied text.
    - The result shall look something like this:

     ```console
     git clone git@github.com:programming-formalisms/programming_formalisms_project_summer_2025.git
     ```

    **What just happened?**

    - `cd` the new directory that was created
    - list the files with `ls`

### Make changes locally

!!! admonition "Steps add changes to the git history"

    - make changes locally
    - add and commit to the git version control
        - your changes become part of the git history
    - git push
        - your changes are synced to GitHub
    - git pull
        - changes on GitHub are synced to you existinglocal git
        - good procedure to do this step before you start changes

???- question "Exercise: Create a folder with your name (locally)"

    - step into (``cd``) the ``learners/`` directory
    - ``mkdir <your-name>``
    - git cannot use emptly directories
    - Therefore **create an empty README file in the created folder**
    - ``cd <your-name>``
    - ``touch README.md``
    - go back to the root of the repo (not necessary)
    - cd ../..

### Stage files (in git)

!!! info "track the changes"

    - On GitHub:
        - Commit every file individually
    - In local git:
        - Stage one or more (related) files and commit them together
    
!!! info "Git Cheat sheet"

    ```console
    git add     # add/stage file(s)
    git commit  # commit staged file(s)
    git status  # see what is going on
    git log     # see history
    git push
    git pull
    ```

???- question "Exercise: "Add/stage file"

    - First check the status!

    ```console
    $ git status
    On branch master
    Your branch is up to date with 'origin/master'.
    
    Untracked files:
      (use "git add <file>..." to include in what will be committed)
            learners/bclaremar/
    
    nothing added to commit but untracked files present (use "git add" to track)
    
    ```

    - There are untracked in the repository (directory).
    - You want to **add the files** (focus the camera) to the list of files tracked by Git.
    - Git does not track any files automatically and you need make a conscious decision to add a file.
    - Let's do what Git hints at and add the files:

    ```console
    $ git add .    # < -- "." means all files
    $ git status

    On branch master
    Your branch is up to date with 'origin/master'.
    
    Changes to be committed:
      (use "git restore --staged <file>..." to unstage)
            new file:   learners/bclaremar/README.md
    ```

    - Now this change is _staged_ and ready to be committed.

### Commit

- Every time we **commit** a snapshot, Git records a snapshot of the **entire project**, saves it, and assigns it a version.
- BUT only what we have added to the "staging" area!

Let us now commit the change to the repository:

???- question "Exercise: Commit"

    ```console
    $ git commit -m "add personal folder"

    [master 5914ad7] add personal folders
     1 file changed, 0 insertions(+), 0 deletions(-)
     create mode 100644 learners/bclaremar/README.md
    ```

    - Right after we query the status to get this useful command into our muscle memory:

    ```console
    $ git status
    On branch master
    Your branch is ahead of 'origin/master' by 1 commit.
      (use "git push" to publish your local commits)
    
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

### Upload to GitHub

- In previous path we got:

```console
$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
   (use "git push" to publish your local commits)

nothing to commit, working tree clean
```

???- question "Exercise: Let's push back to GitHub"

     ```git
     git push
     ```

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


## Exercises

### Present already

- Clone the course project
    - clone course project and create folders
- upload to github
- start repo from existing repo (maybe last day instead)

### New ones to address


### Exercise x: merge conflicts

- Create a new file with a unique name for your group,
  for example `group_anna_and_sven.txt`
- All members of the team: get it on your local hard drive

???- question "How to get it on my local computer?"

    ```text
    Screenshots of VSCode (if not in course material)
    ```

- One member add the line below at the end of that file
  and does a `git push`:

```text
This is the last line by me, Sven
```

- After this, **without doing a git pull**,
  the other group member(s) add a last line at the end
  (for example, the line shown below) and does a `git push`:

```text
This is the last line by me, Anna
```

- This person will get a merge conflict. How does the file look like?

???- question "Answer"

    The file will look similar to this:

    ```text
    <<<<<< HEAD
    This is the last line by me, Sven
    ======
    This is the last line by me, Anna
    >>>>>> 123456789abcdef
    ```


- How would you resolve this merge conflict?

???- question "Answering"

    Combining these two lines of text is up to taste.
    The text could be replaced by, for example:

    ```text
    This is the last line by us, Anna and Sven
    ```

- Resolve the merge conflict and do a `git push`


## Summary

!!! admonition "Parts to be covered"

    - &#9744; Planning
        - Pseudocode
        - Unified Modelling Language (UML)
    - &#9744; Testing
        - Different levels
    - &#9745; Source/version control
        - Git intro
    - &#9744; Collaboration
        - GitHub
    - &#9744; Reproducibility (for you and others)
        - Deployment
        - Dependencies
        - (Workflows)
    - &#9744; Sharing
        - open science
        - citation
        - licensing
    - &#9745; Documentation
        - Explanation (in code)

!!! info "Learning outcomes of 'Get started with Git/GitHub'"

    Learners
    
    - can demonstrate the ability to initiate and manage a software development project using Git and GitHub.
    - are connected to the course repo
    - know how to do in-code documentation

!!! keypoints

    - A repository can have one or multiple remotes (we will revisit these later).
    - A remote (GitHub) in this case serves as a full backup of your work.
    - Code development might be easier to develop in the local git repo since you can run and test locally in an easy way.

## Reference Git

- [Main git book](https://git-scm.com/book/en/v2)
- [Pro Git](https://uppmax.github.io/programming_formalisms/reading/chacon_and_straub_2014.pdf)
- Tsitoara, Mariot, and Mariot Tsitoara. "Git best practices." Beginning Git and GitHub: A Comprehensive Guide to Version Control, Project Management, and Teamwork for the New Developer (2020): 79-86.
