# Get started with a project

!!! info "Learning objectives of 'Get started with Git/GitHub'"

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

## Exercises

### Present already

- Clone the course project
    - clone course project and create folders
- upload to github
- start repo from existing repo (maybe last day instead)

### New ones to address


### Exercise x: merge conflicts

- Create a new file with a unique name for your group
- All members of the team: get it on your local harddisc
- One member add the line below at the end of the file and push

```text
This is the last line by me, Sven
```

- After this, **without doing a git pull**,
  the other group members add a last line at the end
  (for example, the line shown below) and push

```text
This is the last line by me, Anna
```

- You will get a merge conflict. Fix it and commit again.

???- question "Answer"

    The file will look similar to this:

    ```text
    <<<<<< HEAD
    This is the last line by me, Sven
    ======
    This is the last line by me, Anna
    >>>>>> 123456789abcdef
    ```

    Combining these two lines of text is up to taste.
    The text could be replaced by, for example:

    ```text
    This is the last line by us, Anna and Sven
    ```
