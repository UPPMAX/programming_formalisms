# Get connected to the project repo

!!! info "Learning outcomes of 'Get started with Git/GitHub'"

    Learners

    - are connected to the course repo

## Become a member of the Project

- Share your GitHub name [at this issue](https://github.com/programming-formalisms/programming_formalisms_project_autumn_2025/issues/1)
- Join [the Autumn 2025 learners' project](https://github.com/programming-formalisms/programming_formalisms_project_autumn_2025)

## Before we continue we need to configure Git

!!! attention

    - Send your emails in the chat so that we can add you as "Collaborators" in the project!
    - Start VS Code

???- note "Did you set up git and GitHub?"

    - **Git and GitHub should be configured prior to the course**
        - Note that Mac users may need to run a command from the terminal to be able to run ``git``: ``sudo xcodebuild -license accept``
        - [Configure Git](https://nbis-reproducible-research.readthedocs.io/en/course_2104/setup/#configure-git)
            - like: ``git config --global user.name "Mona Lisa"``
            - like: ``git config --global user.email "mona_lisa@gmail.com"``
    - We hope also that you have already done these steps
      [at the 'Prerequisites' page of this course](../misc/faq.md/#prerequisites)

## VS Code terminal

- We will work as much as possible (almost) in the VS Code graphical interface for Git
- However, some things are better (or only) handled from a terminal/command line.

- You find the Git Bash terminal From the menu (different on mac and windows)

![VS Code terminal](../img/commandline_VSC.png)

### Clone

- Clone to your computer
    - Buttons in VS code or a terminal, using ``git clone``

### (May be needed if time goes by:) Sync from GitHub

- As others are working on the same repo, there may be uploaded changes from *fast* collaborators.
- Do a ``git pull`` to get these changes locally as well.
- Do this before you start with new changes. Good practice!
    - This reduces errors or double work!

???- question "Difference between ``git pull`` and ``git fetch``?"

    We may cover this later. Not important now!

    - Git **pull** **copies changes** from a remote repository directly **into your** **working directory**, while git **fetch** **does not**.
    - The git **fetch** command only copies changes into your local **Git** repo.
    - The git **pull** command does **both**.
    - You Should Use git **fetch** When…
        - You want to **check** if there are new **updates** on the remote repository but **don't want to apply them immediately**.
        - You are working on new features and you want to **avoid potential merge conflicts**.

