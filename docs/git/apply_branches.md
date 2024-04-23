# Apply branches

!!!- info "Learning objectives"

    - create, switch and delete a `git` branch

???- question "For teachers"

    Teaching goals are:

    - Learners have create, switch and delete a `git` branch

    Lesson plan:

    - 5 mins: prior knowledge
      - What is a branch?
      - What is the problem that branches alleviate?
      - What is the name/names of the most important branch?
      - What is our git branching setup?
      - What is the goal of that setup?
      - Why do we use that setup instead of a different one?
      - What is the purpose of each of those branches?
      - Does creating a branch create a new version? Why?
      - Does changing a branch change the content of your local computer? Why?
      - Does deleting a branch create a new version? Why?
    - 5 mins: presentation
    - 25 mins: challenge
    - 10 mins: feedback

## Exercises

### Exercise 1: create, switch and delete a `git` branch

!!!- info "Learning objectives"

    - Create, switch and delete a `git` branch
    - Build up experience using git without troubleshooting

```mermaid
gitGraph
    commit id: "Before start"
    commit id: "Branching version"
    branch sven
    checkout sven
    commit id: "Modify my file"
    commit id: "Delete branch" type: HIGHLIGHT
    checkout main
    commit id: "Another commit"
```

- For our shared GitHub repository, create a branch with your first name that is
  unique, e.g. `sven`, `sven_svensson` or `sven_svensson_314`.
  You may branch of from `main` or `develop` (if it exists).
  You may use the web interface (easiest!) or use the command line
- On your local computer, switch to that branch, change the repo 
  and push your changes online. Verify the changes are online
- On your local computer, switch to the `main` branch
- Delete your branch (i.e. the one with the unique name).
  You may use the web interface (easiest!) or use the command line
- On your local computer, update your code

## Links

- [Book 'Pro Git', chapter 'git branching'](https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell)
