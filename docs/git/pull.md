# Understand git pull request with code review

!!! questions

    - How to collaborate in a project
    - How to contribute to someone else's project?

!!! info Content

    - We will give an overview GitHub

      - centralized collaboration

      - Forked collaboration

      - How to contribute



???- info "Learning objectives of 'Deployment'"

    - explain and evaluate the usefulness of git Pull Request with code review

!!! note "Instructor notes"

    Prerequisites are:

    - ...

    Lesson Plan: **FIX**
    
    - **Total** 30 min
    - Theory 20
    - Discussions 10 min

!!! info "Table of content"

    - GitHub
    - Centralized workflow
    - Distributed version control and Forking workflow
    - How to contribute changes to somebody else’s project
        - Contributing very minor changes
        - If you observe an issue and have an idea how to fix it

## All Exercises

???- question "Demo with Richel: Add to someone else's project (another planet)"

???- question "discussion"

???- question "quiz"



## GitHub

There are two more ways to create “copies” of repositories into your user space:

- A repository can be marked as **template** and new repositories can be **generated** from it, like using a cookie-cutter. The newly created repository will start with a new history, only one commit, and not inherit the history of the template.
- You can **import** a repository from another hosting service or web address. This will preserve the history of the imported project.

```{admonition} Cheat-sheet
**Commits, branches, repositories, forks, clones**

- **repository**: The project, contains all data and history (commits, branches, tags).
- **commit**: Snapshot of the project, gets a unique identifier (e.g. `c7f0e8bfc718be04525847fc7ac237f470add76e`).
- **branch**: Independent development line, often we call the main development line `master` or `main`.
- **tag**: A pointer to one commit, to be able to refer to it later. Like a [commemorative plaque](https://en.wikipedia.org/wiki/Commemorative_plaque)
  that you attach to a particular commit (e.g. `phd-printed` or `paper-submitted`).
- **cloning**: Copying the whole repository to your laptop - the first time.
  - It is not necessary to download each file one by one.
  - good within a group  
- **forking**: Taking a copy of a repository (which is typically not yours)
  - your copy (fork) stays on GitHub and you can make changes to your copy.
  - better for contribution to other's project
- `git clone` copies everything: all commits and all branches.
- Branches on the remote appear as (read-only) local branches with a prefix, e.g. `origin/master`.
- We synchronize commits between local and remote with `git fetch`/`git pull` and `git push`.
- Repositories that are shared online often synchronize via **pull requests** or **merge requests**.
- Repositories that are forked or cloned **do not automatically synchronize themselves**.
```

## Centralized workflow
```{figure} img/centralized.svg
:alt: Centralized layout
:width: 50%

**Centralized layout**
- **Red** is the repository on GitHub.
- **Blue** is where all contributors work on their own computers.
```

- Centralized workflow is often used for **remote collaborative work**.
- `origin` refers to where you cloned from (but you can relocate it).
- `origin/mybranch` is a read-only pointer to branch `mybranch` on `origin`.
- These read-only pointers only move when you `git fetch`/`git pull` or `git push`.

## Distributed version control and Forking workflow

```{figure} img/forking-overview.svg
:alt: Centralized layout
:width: 50%

**Forking workflow**
- **Red** is the central repository, where only owners have access.
- **Green** are *forks* on GitHub (copy for a single user to work on).
- **Blue** are local copies where contributors work on their own computer.
```

In the forking layout described above we work with **multiple remotes**,
in this case **two remotes**: One remote refers to the **"central"** repository, and the other remote refers to the **"fork"**.

- Working with multiple remotes is not as scary as it might look.
- `origin` is just an alias/placeholder.
- We can add and remove remotes.
- We can call these aliases/placeholders as we like.
- We typically synchronize/updates remotes via the local clone.
- To see all remotes use `git remote -v`.
- If you are more than one person contributing to a project, consider using code review.


## How to contribute changes to somebody else’s project

- Avoid frustration and surprises by first discussing and then coding.

### Contributing very minor changes

- Fork repository
- Create a branch (e.g. with your name)
- Commit and push change
- File a pull request or merge request


### If you observe an issue and have an idea how to fix it

- Open an issue in the repository you wish to contribute to
- Describe the problem
- If you have a suggestion on how to fix it, describe your suggestion
- Possibly **discuss and get feedback**
- If you are working on the fix, indicate it in the issue so that others know that somebody is working on it and who is working on it
- Submit your fix as pull request or merge request which references/closes the issue

```{challenge} (Optional) Add to someone else's project

**You can from the breakout room group decide on some collaboration if you want to!**

- Make issue and pull requests
- Remember that we were not happy with the results
- Can we easily add one or more planets?

- The importance of each planet should be determined by the distance and the mass of it. 
  - The acceleration effect should proportional with MASS/distance^2
  - That means that we can ignore small planets and/or far away planets
- Below, see a first sorted out table of mass of the planets and their approximate shortest distance to Earth.

|Planet|Mass (relative to Earth) |Mean distance to sun (AU)| Shortest distance to earth (AU)|
|----|---|---|---|
Venus| 0.815 | 0.72 | 0.28
March| 0.107 | 1.52 | 0.52
Jupiter| 318 | 5.2 | 4.2
Saturn| 95.2 | 9.54 | 8.54

- Adding a planet should be pretty straight-forward in our modular code!

- For ideas view Code Refinery's  [Centralized workflow](https://coderefinery.github.io/git-collaborative/centralized/)
  
```

```{seealso}
You will work more with Git and GitHub and collaborate the other days of the week.
```

!!! admonition "Parts to be covered!"

    - &#9745; Source/version control
        - Git
        - We have a starting point!
        - GitHub as remote backup
        - branches
    - &#9745; Planning
        - &#9745; Analysis
        - &#9745;Design
    - &#9745; Testing
        - Different levels
    - &#9745; Collaboration
        - GitHub
        - pull requests
    - &#9744; Sharing
        - &#9745; open science
        - &#9744; citation
        - &#9745; licensing  
    - &#9744; Documentation
        - &#9745; in-code documentation
  

