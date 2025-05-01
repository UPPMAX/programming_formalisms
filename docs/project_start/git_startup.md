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

!!! objectives

    - [Collaboration](../git/contribute.md) aims to
        - Get into working more with GitHub for collaboration
        - **Centralized** workflow (good within a group)
        - **Forking** (better for contribution to other's project)
        - Contributing to other's projects

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

