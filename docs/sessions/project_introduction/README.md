# Project introduction

!!! info "Learning outcomes"

    Learners ...

    - understand what the project is about
    - understand why the course project is set up as such
    - are a collaborator of the course project's GitHub repository
    - can modify the content of the course project's GitHub repository
      from GitHub

??? question "For teachers"

    Prior:

    - You work together with someone. How would you set up the project?
    - What is GitHub?
    - What is a GitHub repository?
    - What is a GitHub issue?
    - What is a Markdown?
    - What is a Markdown file?
    - What do we mean when we say 'This shows the rendered file'?

## Why we set up the project as such

This project

## The research project

You discovered data from the paper `[Bergström and Moberg, 2002]`,
where the average temperature is measured on a daily basis
since 1772 (yes, year seventeen-hundred-and-twenty-two)
in Uppsala.

You want to use this simple data set for a toy project
to practice software development with.

## Exercises


## Exercise 1: become member of the course project

Login to GitHub.

???- question "I don't have a GitHub account?"

    It is [a course prerequisite](../../prereqs.md) to have a GitHub
    account.

    If you forgot, then now is the time to make a (free) GitHub account :+1:

Share your GitHub name [at this issue](https://github.com/programming-formalisms/programming_formalisms_project_summer_2026/issues/1)

???- question "What happens then?"

    The teachers will make you a member of the learners' project

## Exercise 2: take a look at the project data

In this exercise, we'll take a look at the project data files
that are the result of research described in `[Bergström and Moberg, 2002]`.
The data files can be found in
[the `data` of the learners project](https://github.com/programming-formalisms/programming_formalisms_project_summer_2026/blob/main/data/README.md).

Take a look at the file `uppsala_tm_1722-2022.dat`.
What is the purpose of this file?

???- question "Answer"

    This is a metadata file: it describes the data

Take a look at the file `uppsala_tm_1722-2022.txt`.
What is the purpose of this file?

???- question "Answer"

    This file contains the actual data.

How would you describe the content of these files together?

???- question "Answer"

    These files describe the average daily temperature in Uppsala.

<!--
There are three more files. What are these about?

???- question "Answer"

    These files describe the individually measured temparatures
    as measured in Kiruna (a town in the far North of Sweden),
    Lund (a city in the far West of Sweden)
    and Uppsala.

Of these four datasets, which is/are easiest to work with? Why?

???- question "Answer"

    The files with the average temperature in Uppsala.

    These are easiest to work with, as the file with
    data (`uppsala_tm_1722-2022.dat`) can be directly read
    by a computer.
    The metadata file only needs to be read by humans.

    The individual weather measurement files need some *parsing*, i.e.
    specialized code is needed to convert this text into a table.

-->

## Exercise 3: share your hypothesis to test

Read [the research project](#the-research-project).

In a file, write down one or more hypotheses one could test with that
data.

???- question "I cannot come up with a hypothesis"

    Sure, here are some:

    ???- info "Example hypothesis 1"

        Does the yearly average temperate increase over time?

    ???- info "Example hypothesis 2"

        Does the different between yearly minimum and maximum temperature
        increase over time?

    ???- info "Example hypothesis 3"

        Can daily temperatures be approximated by a (co)sine function?

    ???- info "Example hypothesis 4"

        Is the day with the least amount of sun
        (i.e. winter soltice, December 21st)
        the coldest day of the year?

        Is the day with the most amount of sun
        (i.e. summer soltice, June 21st)
        the warmest day of the year?

    ???- info "Example hypothesis 5"

        Have the dates for the coldest and warmest day of the year
        moved in time?

???- question "Does it matter what kind of file?"

    No. A Word document is fine, a plain-text file is fine too.

Check your email for a GitHub invitation to the course project,
or find this message in the GitHub notifications.
Accept the invitation. Welcome to the project!

???- question "Where are the GitHub notifications?"

    These are at the top-right of your GitHub pages:

    ![The GitHub notifications button](github_notifications_button.png)
    
    Click on it and your will see your GitHub notifications,
    which will look similar to this:

    ![GitHub notifications](github_notifications.png)

In the course repository website,
navigate into the `learners` folder.

???- question "How do I do this?"

    To navigate into the `learners` folder, click on the text `learners`:
    
    ![Click on the text `learners`](project_page_annotated.png)

In the course repository website,
create a new file.

???- question "How do I do this?"

    At the top-left, click on 'Add file | Create new file':
    
    ![Click on 'Add file | Create new file'](add_file.png)

???- question "Huh? I am not allowed to do this...?"

    You did not yet accept the GitHub invitation to this project.
    Take a closer look at the previous step.
    Else, notify a teacher.


In the editor:

- name the file `[your_name].md`, e.g. `sven.md`
- copy-paste your hypotheses to this file

When done, click on the 'Commit' button

???- question "How does this look like?"

    ![Editing a file](edit_file.png)

Check if your file has been created.

???- question "How do I check this?"

    There are two indications:
    
    - The so-called 'commit message' shows above the files in the folder
    - In the folder, you can see the file's name

    ![The file is created](file_created_annotated.png)

View the file.

???- question "How do I do this?"

    Click on the file:
    
    ![Click on the file](click_file.png)

    You will now see the rendered file:
    
    ![View the rendered file](view_file.png)

You now see the rendered file.
It may look different than the text you copy-pasted.
However, your text is absolutely there as you have copy-pasted it.
To view the file in its original form, view the file in its raw form.

???- question "How do I do this?"

    Click on the file:
    
    ![Click on 'View raw'](click_raw_file.png)

    You will now see the raw file:
    
    ![View the raw file](view_raw_file.png)

## (optional) Exercise 3

Explore the learners' project GitHub repository.
Where can you find the things below?

The folder to put documentation

???- question "Answer"

    The `doc` folder.
    
    This is a standard and standarized name for documentation.

The folder for the learners to put their notes

???- question "Answer"

    The `learners` folder.
    
    Us teachers picked this name.

The folder to put code.

???- question "Answer"

    The `src` folder.
    
    This is a standard and standarized name for source code.

The folder to put tests.

???- question "Answer"

    The `tests` folder.
    
    This is a standard and standarized name for a folder that
    contains code to assure everything works as it should.

The folder containing the scripts to work on the project.

???- question "Answer"

    The `scripts` folder.
    
    Us teachers picked this name.

The folder containing the GitHub Actions scripts

???- question "Answer"

    The `.github/worksflows` folder.
    
    This is the standarized name used by GitHub

The folder containing the GitHub Actions scripts


## References

- `[Perez-Riverol et al., 2016]`
  Perez-Riverol, Yasset, et al. "Ten simple rules for taking advantage
  of Git and GitHub." PLoS computational biology 12.7 (2016): e1004947.
  [Paper homepage](https://doi.org/10.1371/journal.pcbi.1004947)

<!--

## Summary of `[Perez-Riverol et al., 2016]`

This paper shared 10 simple rules to take advantage of `git` and GitHub:

- Rule 1: Use GitHub to Track Your Projects
- Rule 2: GitHub for Single Users, Teams, and Organizations
- Rule 3: Developing and Collaborating on New Features:
  Branching and Forking
- Rule 4: Naming Branches and Commits: Tags and Semantic Versions
- Rule 5: Let GitHub Do Some Tasks for You: Integrate
- Rule 6: Let GitHub Do More Tasks for You: Automate
- Rule 7: Use GitHub to Openly and Collaboratively Discuss,
  Address, and Close Issues
- Rule 8: Make Your Code Easily Citable, and Cite Source Code!
- Rule 9: Promote and Discuss Your Projects: Web Page and More
- Rule 10: Use GitHub to Be Social: Follow and Watch

-->


- `[Bergström and Moberg, 2002]` Bergström, Hans, and Anders Moberg.
  "Daily air temperature and pressure series for Uppsala (1722–1998)."
  Climatic change 53.1 (2002): 213-252.
  [Paper homepage](https://doi.org/10.1023/A:1014983229213)


## Old

## VS Code terminal

- We will work as much as possible (almost) in the VS Code graphical interface for Git
- However, some things are better (or only) handled from a terminal/command line.

- You find the Git Bash terminal From the menu (different on mac and windows)

![VS Code terminal](../../img/commandline_VSC.png)

## Before we continue we need to configure Git

!!! attention

    - Start VS Code

??? warning "This should have been done already"

    - We hope also that you have already done these steps
      [at the 'Prerequisites' page of this course](../../misc/faq.md/#prerequisites)

## Get a local clone of the project

???- question "Exercise 2a: clone course project using VS code (4 min)"

    - Start VS code
    - Start new window

    - In GitHub, locate the **Code** button, select **SSH** and click the **copy** symbol to the right

    ???- question "Where is this?"

        ``https://github.com/programming-formalisms/programming_formalisms_project_summer_2026``

    ???- question "How will the address to clone look like?"

        ``https://github.com/programming-formalisms/programming_formalisms_project_autunr_2025.git``

    - In VS code: Clone Git repository
        - The repo may show up automatically if you are already part of the project. Then click it.
        - Otherwise paste the copied URL
    - Open folder where you want to have your project
        - Create a new one if necessary in the "Open folder File explorer"
    - Select as Repository Destination

???- question "Exercise 2b: (Alternative with command line) clone course project and create folders (4 min)"

    - You may want to create a directory on your computer for this course.
    - You can do it in the normal way or use your terminal, like this, in a good place (like "Courses" if you have that)
    - ``mkdir Programming_formalisms``
    - ``cd Programming_formalisms``
    - In GitHub, locate the **Code** button, select **SSH** and click the **copy** symbol to the right
    - Back in your terminal type ``git clone`` followed by pasting the copied text.
    - The result shall look something like this:

     ```console
     git clone git@github.com:programming-formalisms/programming_formalisms_project_summer_2026.git
     ```

    **What just happened?**

    - `cd` the new directory that was created
    - list the files with `ls`

!!! summary

    - You should now hopefully be connected to the project and have a local copy of it!
    
