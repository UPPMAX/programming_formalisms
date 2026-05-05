# Branches

!!! info "Learning outcomes"

    Learners ...

    - understand what branches are
    - understand why to use branches

??? question "For teachers"

    Prior:

    - You have code that works. Others are using it.
      However, you want to add improvements.
      You want to do so without harming others.
      How would you do this?
    - You work in a team. You want to try out some new things in the code,
      due to which it will break the build sometimes.
      You want to do so without harming others.
      How would you do this?
    - What is version control again?
    - Why use version control again?
    - What are branches?
    - Why use branches?
    - What is a merge?

## What are branches?

Branches are a term in version control,
and are in meaning similar to 'version with a specific name'

Branch name       |Description
------------------|---------------------------------------------------------
`main` or `master`|The version that always works
`develop`         |The version that is being developed
Other, e.g. `sven`|A topic/feature branch named after a developer or topic

## Why use branches?

To be able to work independently on code, i.e. without harming others.

## A workflow for a single developer

Here we see the workflow of a single developer:

```mermaid
gitGraph
    commit
    branch develop
    checkout develop
    commit
    commit
    checkout main
    merge develop
```

In words:

- The developer started with version `0` from the `main` branch
- On the `develop` branch, he/she created two new versions
- The second new version `2` was then merged to the `main` branch

## A workflow for multiple developers

Here we see the workflow for multiple developers:

```mermaid
gitGraph
    commit
    branch develop
    checkout develop
    commit
    branch feature
    checkout feature
    commit
    commit
    checkout develop
    merge feature
    checkout main
    merge develop
```

In words:

- This developer started with version `1` from the `develop` branch
- On his/her feature branch, he/she created two new versions
- The second new version `3` passed all tests on the feature,
  after which it was merged to the `develop` branch
- The second new version `3` passed all tests on the `develop` branch
  after which it was merged to the `main` branch

## Exercises

## Exercise 1: create a feature branch for yourself using the web interface

In this exercises, we will create a feature branch for ourselves.

Click on the 'Branch' button (which displays the `main` branch).
 
???- question "Where is that?"

    It is at the top-left:

    ![Click on the 'Branch' button](click_main.png)

Select the `develop` branch.

???- question "Where is that?"

    It is in the drop-down menu:

    ![Select the `develop` branch](click_develop.png)


Type the name of your feature branch (e.g. `sven`)
and click 'Create [your branch name] from `develop`'

???- question "How does that look like?"

    It will look similar to this:

    ![Click 'Create [your branch name] from develop](create_sven_from_develop.png)

Your feature branch is now created!

???- question "How does that look like?"

    It will look similar to this:

    ![Your feature branch is now created](sven_branch_created.png)

## Exercise 2: work on your feature branch

In this exercise, we'll put some trivial code on your feature branch,
which we will merge to `develop`.

In VS Code, pull the repository

???- question "Where do I click?"

    Click on 'Pull':

    ![Click on 'Pull'](click_pull.png)

    Other things that may help:

    Click on 'Sync changes':

    ![Click on 'Sync changes'](click_sync_changes.png)

    Click on 'Fetch from all remotes':

    ![Click on 'Fetch from all remotes'](click_fetch_from_all_remotes.png)

Checkout your feature branch.

???- question "Where do I click?"

    In VS Code, click on the place to select a branch,
    at the bottom-left of the screen:

    ![Click on the place to select a branch](vs_code_click_select_branch.png)

    In the 'Command Palette', click on your branch:

    ![In the 'Command Palette', click on your branch](vs_code_select_sven.png)

You are now on your own branch!

???- question "How does that look like?"

    In the bottom-left of the screen, the branch selector shows
    the name of the branch you are on (`sven` in this example).

    ![VS Code is on the sven branch](vs_code_on_sven.png)

Modify something on your feature branch.

![The sven branch is modified](vs_code_sven_is_modified_not_commited.png) 

Commit the code as usual.

![VS Code before commit, click commit](vs_code_before_commit.png)

Sync as usual.

![VS Code before sync, click sync](vs_code_click_sync_on_sven.png)

Now we have a commit on our feature branch.
Time to merge it do `develop`!

In VS Code, checkout the `develop` branch.

![Click on select branch](vs_code_click_select_branch.png)

![Click on the develop branch](vs_code_checkout_develop.png)

In VS Code, click on 'Merge'. It is hidden under the lower kebab button
at the top of the 'Source control' tab.

![Click merge](vs_code_click_merge.png)

Click the branch to merge with.

![Click to merge with sven](vs_code_click_merge_with_sven.png)

If you get a merge conflict, fix it.

???- question "How to do so again?"

    Here we see how a merge conflict is indicated:

    ![A merge conflict is indicated](vs_code_merge_conflict_indicated.png)

    Even though there are colors and weird symbols,
    this is just text with text added.

    Modift the text to resolve the conflict.

    ![The text is changed](vs_code_merge_conflict_text_is_changed.png)

    Save the text.

    ![The text is changed and saved](vs_code_merge_conflict_text_is_changed_and_saved.png)

    Stage the changes to fix the merge conflict.

    ![Stage the changes that fix the merge conflict](vs_code_stage_mc_changes.png)

    Click on 'Continue'.

    ![Click 'Continue'](vs_continue_mc.png)

    The next step is to sync as usual.

Click on 'Sync'.

???- question "How to do so again?"

    ![Click 'Syc'](vs_code_click_sync_after_mc.png)

You did it: you merge the work from your topic branch
to the `develop` branch!

???- question "How does that look like?"

    ![Done](vs_code_mc_done.png)

## (Optional) Exercise 3: merge develop to main

The main branch should always work.

Only if the develop branch builds cleanly, merge it to main.
Else, first fix all the tests that break the build.

???- question "Someone else has merged tests that break the build!"

    This is a social problem, with solutions that differ per team.

    Typically, one asks the person responsible, or creates an issue for this.
