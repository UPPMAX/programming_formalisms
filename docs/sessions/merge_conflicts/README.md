---
tags:
  - merging
  - merge
  - git
  - merge
  - conflict
  - conflicts
---

# Merge conflicts

!!! info "Learning outcomes"

    Learners ...

    - understand what a merge conflict is
    - can fix merge conflicts

??? question "For teachers"

    Prior:

    - When would your version control system reject your push?
    - What is a merge conflicts?
    - Why can't merge conflicts be resolved automatically?

## What is a merge conflict?

A merge conflict happens when two people have modified
the same parts of the same file.

They are indicated in a file like this:

```text
<<<<< fedcba0987654321fedcba
Once upon a time, there was a prince.
=====
Once upon a time ... ... and they lived happily every after.
>>>>> 1234567890abcdef123456
```

Here is a schematic overview of the merge conflict
we will cause in the exercises:

```mermaid
graph TB
  classDef optional_node stroke-dasharray: 5 5

  subgraph online
    direction TD
    version_a_online["abcdef1: Once upon a time ..."]
    version_b["123456a: Once upon a time, there was a prince."]
    version_a_online --> version_b
  end
  subgraph local
    direction TD
    version_a_local["abcdef1: Once upon a time ..."]
    version_c["a1b2c3d: Once upon a time ... ... and they lived happily every after."]
    version_a_local --> version_c
  end
```  

## Why are merge conflict important?

Merge conflicts inevitably happen when working together.

A merge conflict forces you to think and sometimes need special attention
by the most experienced team member.

## Strategies to avoid merge conflicts

- 'Take small steps - always' `[Thomas and Hunt, 2019]` (tip 42).
  This overlaps with the mantra 'Commit early, commit often'
- Limit the amount of characters per line: the version control
  system works on a line-by-line basis

## Exercises

## Exercise 1: create a merge conflict

In the learners project, in your own `learners` subfolder,
create a file called `fairytale.txt` with the text:

```text
Once upon a time ...
```

???- question "How do I do this again?"

    Login to GitHub.

    Navigate to the learners project.

    Click on the `learners` folder.

    If there is a folder with your name:

    - click on that folder
    - click 'Add file'

    ???- question "How does that look like?"

        It looks similar to this:

        ![Click 'Add file'](github_click_add_file.png)

    Else:

    - create it by putting the folder name before the filename
      (e.g. call the file `sven/fairytale.txt`).

    Click on 'Create new file'.

    ???- question "How does that look like?"

        It looks similar to this:

        ![Click 'Create new file'](github_click_create_new_file.png)

    With the filename set to `fairytale.txt` and the text as requested,
    click on 'Commit'.

    ???- question "How does that look like?"

        It looks similar to this:

        ![Click on 'Commit'](github_commit_new_file.png)

    Enter a commit message (the default one is good enough)
    and click 'Commit changes'

    ???- question "How does that look like?"

        It looks similar to this:
    
        ![Add a commit message](github_commit_new_file_message.png)

    You have now created the new file, as shown by the web interface.

    ???- question "How does that look like?"

        It looks similar to this:
    
        ![The newly created file on GitHub](github_has_created_new_file.png)

In VS Code, fetch the latest state of the remote repository.

???- question "How I do that again?"

    In the 'Source control' menu, click on the kebab (`...`) button
    and click 'Fetch'.

    ![Click 'Fetch'](vs_code_click_fetch_to_get_new_file.png)

VS Code indicates that there is an incoming change.

???- question "How does that look like?"

    It looks similar to this:

    ![VS Code detects the incoming new file](vs_code_detects_incoming_new_file.png)

Sync your local code with the remote repository.

???- question "How I do that again?"

    In the 'Source control' menu, click on the 'Sync' button
    and click 'Fetch'.

    ![Click 'Sync' to get the new file](vs_code_click_sync_to_get_new_file.png)

Now VS Code has downloaded this new file. Great!

???- question "How does that look like?"

    It looks similar to this:

    ![VS Code has downloaded the new file](vs_code_has_downloaded_the_new_file.png)

To start the merge conflict,
using the web interface,
change that file to:

```text
Once upon a time, there was a prince.
```

???- question "How do I do this again?"

    In the web interface, have the file open and click 'Edit'

    ???- question "How does that look like?"

        It looks similar to this:

        ![In the web interface, click 'Edit'](github_click_edit.png)

    Edit the file and click 'Commit'.

    ???- question "How does that look like?"

        It looks similar to this:

        ![In the web interface, click 'Commit'](github_click_commit_edited_file.png)

    Enter a commit message (the default one is good enough)
    and click 'Commit changes'

    ???- question "How does that look like?"

        It looks similar to this:

        ![Click 'Commit changes'](github_commit_edited_file_message.png)

    Now the web interface shows the edited file.

    ???- question "How does that look like?"

        It looks similar to this:

        ![The edited file](github_has_created_edited_file.png)


Now we create the local commit to conflict *with*.

In your local code, **without fetching nor syncing**, change the file to:

```text
Once upon a time ... ... and they lived happily every after.
```

Save the file.

???- question "How does that look like?"

    It looks similar to this:

    ![The file has been saved](vs_code_after_saving_edited_file.png)

Add a commit message and commit the file.

???- question "How does that look like?"

    It looks similar to this:

    ![Add a commit message and click 'Commit'](vs_code_commit_edited_file.png)

Sync the edited file

???- question "How do I do that?"

    Click on 'Sync':

    ![Click on 'Sync'](vs_code_sync_edited_file.png)

Now you see how a merge conflict looks like!

???- question "How does that look like?"

    It looks similar to this:

    ![VS Code shows a merge conflict](vs_code_shows_merge_conflict.png)

Edit the text in the editor to achieve a merged text (e.g. the text below)
and click 'Stage changes'

```text
Once upon a time, there was a prince. ... and they lived happily every after.
```

???- question "How does that look like?"

    It looks similar to this:

    ![Click 'Stage changes'](vs_code_stage_merge_conflict_changes.png)

Click 'Continue'.

???- question "Where is that?"

    It is the blue button:

    ![Click 'Continue'](vs_code_continue_after_staging_merge_conflict_changes.png)

Now that the merge conflict is resolved, click 'Sync'.

???- question "Where is that?"

    It is the blue button:

    ![Click 'Sync'](vs_code_sync_after_resolving_merge_conflict.png)

You have now resolved your first merge conflict :+1:

???- question "How does that look like?"

    It looks similar to this:

    ![The merge conflict is resolved](vs_code_resolved_merge_conflict.png)
