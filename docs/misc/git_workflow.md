---
tags:
  - git
  - basic workflow
  - workflow with branches
---

# git

## git clone

???- question "Prefer a video?"

    [YouTube video 'Doing a (git) clone in VSCode](https://youtu.be/bcYFlBh9WUk)


## git basic workflow

???- question "Prefer a video?"

    - [YouTube video 'Doing a basic git workflow in VSCode](https://youtu.be/tiEbc6MDFo8)
    - [YouTube video 'Doing a basic git workflow in VSCode](https://youtu.be/gL8RvfhvJ2Q)
      (including a `git clone`)

```mermaid
flowchart TD
  no_repo[No GitHub repository]
  subgraph on_github[On GitHub]
    github[Your git repository]
  end
  subgraph on_computer[On your computer]
    clean[Your git repository. Your version matches online version]
    changed[Your git repository with changes]
    staged[Your git repository with staged changes]
    committed[Your git repository with commited changes]
  end

  no_repo --> |Create repository on GitHub|github
  github --> |Download: git clone| clean
  github --> |Update: git pull| clean


  clean --> |Any change|changed
  changed --> |Stage files: git add .|staged
  staged --> |Commit staged files: git commit -m my_commit_description| committed
  committed ---> |Upload: git push| clean
  committed --> |Upload: git push| github
```


## git workflow with branches

???- question "Prefer a video?"

    [YouTube video 'Doing git banching in VSCode'](https://youtu.be/rFo2b0GILIc)

```mermaid
flowchart TD
  your_branch[The branch you work on]
  another_branch[Another branch]
  new_branch[A new branch]

  your_branch --> |Switch branch: git switch other_branch|another_branch
  another_branch --> |Merge: git merge other_branch| your_branch
  new_branch --> |Create on GitHub|another_branch
  your_branch --> |Update: git pull| your_branch
```
