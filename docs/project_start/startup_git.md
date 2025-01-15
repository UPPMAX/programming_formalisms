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

- Create a new file with a unique name for your group,
  for example `group_anna_and_sven.txt`
- All members of the team: get it on your local harddisc

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

