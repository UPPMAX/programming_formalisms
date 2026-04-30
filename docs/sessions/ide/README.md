# Integration development environment

!!! info "Learning outcomes"

    Learners ...

    - understand what an integrated development environment is
    - can use our IDE to see the commit history

??? question "For teachers"

    Prior:

    - What is an integrated development environment?

## What is an integrated development environment?

It is the program that helps you program.

![VS Code welcome screen](vs_code.png)

## Why is an integrated development environment important?

An integrated development environment intends to help you program,
with many features to do so.

## What does the literature say?

- IDEs are perceived hard to use `[Morales et al., 2019]`
- IDEs are difficult to use, learn, and master.
  Experts perceive IDEs better (but not much) than beginners
  `[Kline and Seffah, 2005]`
- Even though syntax highlighting is present in most (all?) IDEs,
  this does not improve readability or understanding
  `[Beelders and du Plessis, 2015]`
- A fun study:
  IDEs can detect and improve the mood of the programmer `[Khan, 2009]`.
  To improve the mood of a programmer,
  a video is shown to urge the developer to do ... exercises...?

???- question "How are IDEs perceived by beginners and experts?"

    Here is figure 1 from `[Kline and Seffah, 2005]`:

    ![Kline and Seffah, 2005, figure 1](kline_and_seffah_2005_fig_1.png)

    The large standard deviations in the experts is explain by the low
    amount of experts: there were 7 experts (compared to a 100 beginners).

## Why does this course recommends to use an IDE anyways?

Because it reduces the amount of tools you need to install,
as the IDE installs these for you:

- Built-in version control
- Built-in terminal
- Built-in git credential manager
- Built-in debugger

Additionally, it helps the learners understand what the other is doing,
if they use the same program to work in.

## Exercises

## Exercise 1: clone the learners project using VS Code

???- question "Prefer a video?"

    Watch the YouTube video
    [How to use VSCode to (git) clone a repository](https://youtu.be/bcYFlBh9WUk?si=H6a2LG6XuIUw1DoC)

In this exercise, we are going to clone the learners project
using VS Code.

What does 'clone' mean?
You can look it up at [the session about version control](../version_control/README.md).

???- question "Answer"

    'Download'.

    It is a bit more technical than that, but 'download' is the a good
    first step in your understanding.

    The more technical explanation: 'to create a local copy from a remote
    repository'.

Start VS Code and try to clone and open the learners project
without looking at the answers. 

???- question "How do I do this?"

    In your favorite way.

    Here I show the least technical way to do so.

    At the VS Code welcome screen, click on 'Clone Git repository':

    ![At the VS Code welcome screen, click on 'Clone Git repository'](vs_code_click_clone_git_repository.png)

    You will be taken to the top editor, called the 'Command Palette'.
    In the Command Palette, click 'Clone from GitHub'.

    ![In the Command Palette, click 'Clone from GitHub'](vscode_click_clone_from_github.png)

    When VS Code request access to GitHub, click 'Allow'.

    ![When VS Code request access to GitHub, click 'Allow'](vs_code_requests_access_to_github_click_allow.png)

    If you just allowed VS Code to access GitHub,
    VS Code will show it is signing in to GitHub.

    ![VS Code shows it is signing in to GitHub](vs_code_signing_in_to_github.png)

    If you just allowed VS Code to access GitHub,
    go to your web browser. In your web browser,
    authorize VS Code to access GitHub by clicking 'Continue'.

    ![Authorize VS Code to access GitHub by clicking 'Continue'](github_authorize_vs_code_click_continue.png)

    If your web browsers requests access to VS Code, allow it,
    for example, by clicking on 'Open xdg-open'.

    ![Click on 'Open xdg-open'](web_browser_request_access_to_vs_code_click_open.png)

    If your web browser does not know which (of multiple) VS Code
    programs to use, pick the first VS Code.

    ![Let the first VS Code handle URLs](let_vs_code_handle_urls.png)

    In the 'Command Palette', click on the GitHub repository with the learners
    project.

    ![In the 'Command Palette', click on the GitHub repository with the learners project](vs_code_open_learners_project.png)

    When VS Code asks where to clone the repository in, select your favorite
    folder

    ![Select your favorite folder to clone the repository in](vs_code_ask_folder_to_clone_repo_to.png)

    When VS Code asks what to do with this repository, click 'Open'.

    ![When VS Code asks what to do with this repository, click 'Open'](vs_code_open_repo_click_open.png)

    Congratulations! VS Code has now cloned and loaded your repository!

???- question "How does this look like?"

    Your screen will look similar to this:

    ![VS Code has now cloned and loaded your repository](vs_code_has_loaded_repo.png)

## Exercise 2: view the learners project history from VS Code

## Exercise 3: change a file from VS Code

## References

- `[Beelders and du Plessis, 2015]` Beelders, Tanya R.,
  and Jean-Pierre L. du Plessis.
  "Syntax highlighting as an influencing factor when reading and
  comprehending source code." Journal of Eye Movement Research 9.1 (2015): 1.
  [Paper homepage](https://doi.org/10.16910/jemr.9.1.1)

- `[Khan, 2009]` Khan, Iftikhar Ahmed.
  Towards a mood sensitive integrated development environment
  to enhance the performance of programmers.
  Diss. Brunel University, School of Information Systems,
  Computing and Mathematics, 2009.

- `[Kline and Seffah, 2005]` Kline, Rex Bryan, and Ahmed Seffah.
  "Evaluation of integrated software development environments:
  Challenges and results from three empirical studies."
  International journal of human-computer studies 63.6 (2005): 607-627.

- `[Morales et al., 2019]` Morales, Jenny, et al.
  "How “friendly” integrated development environments are?."
  International Conference on Human-Computer Interaction.
  Cham: Springer International Publishing, 2019.
  [Paper homepage](https://doi.org/10.1007/978-3-030-21902-4_7)
