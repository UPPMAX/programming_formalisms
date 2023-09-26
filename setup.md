# Setup
Parts taken from [https://nbis-reproducible-research.readthedocs.io/en/course_2104/setup/](https://nbis-reproducible-research.readthedocs.io/en/course_2104/setup/)
 and [https://coderefinery.github.io/installation/](https://coderefinery.github.io/installation/)

## Shell and Git

### Setup for Mac / Linux users
- We will use terminal to some extent.
- Choose one of your choice, the built-in or another!

- Chances are that you already have git installed on your computer. You can check by running e.g. git --version. 
- If you don't have git, install it following the instructions [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git). 
- If you have a very old version of git you might want to update to a later version.


### Setup for Windows users

There are several different ways to run the course material on a Windows
computer. Neither is perhaps optimal, and the material itself has not been
adapted specifically for Windows. Nevertheless, in principle everything
*should* be possible to run. A few ways you could setup:

#### Most straight-forward way with a command line and Git integrated.
- Install Git Windows: [https://gitforwindows.org/](https://gitforwindows.org/) (**easiest if you want to start fast and plan to work in windows environment**)
  - See Windows part at [https://coderefinery.github.io/installation/shell-and-git/#installation](https://coderefinery.github.io/installation/shell-and-git/#installation)
  - Included will be the Git Bash

#### Other possibilities
- Run as Linux through a virtual machine (and see the Linux setup above)
- Use the Windows 10 PowerShell, install git 
  - [https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-PowerShell](https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-PowerShell)
- Use the Linux Bash Shell (WSL) on Windows 10 (**perhaps best practice if you plan to run Linux as well**
  - instructions below 

##### Running in the Linux Bash Shell on Windows 10

This will give you access to a full command-line bash shell based on Linux on your
Windows 10 PC. For the difference between the Linux Bash Shell and the PowerShell on Windows
10, see *e.g.* [this article](https://searchitoperations.techtarget.com/tip/On-Windows-PowerShell-vs-Bash-comparison-gets-interesting).

Install Bash on Windows 10 (WSL), following the instructions at *e.g.* **1** of these
resources:

- [Installing the Windows Subsystem and the Linux Bash](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
- [Installing and using Linux Bash on Windows](https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/)
- [Installing Linux Bash on Windows](https://itsfoss.com/install-bash-on-windows/)

### Configure git
Follow these instructions. [https://nbis-reproducible-research.readthedocs.io/en/course_2104/setup/#installing-git](https://nbis-reproducible-research.readthedocs.io/en/course_2104/setup/#installing-git)

## GitHub
Sign up for GitHub account:
[https://coderefinery.github.io/installation/github/](https://coderefinery.github.io/installation/github/)

## Git/GitHub connection through ssh keys (This may take a while to get working, but is worth it)

[https://coderefinery.github.io/installation/ssh/](https://coderefinery.github.io/installation/ssh/)

- Test: `ssh -T git@github.com`
- If not working, these are the approximate steps to be done in your terminal. It can vary between systems, so link above is more certain.
```console
ssh-keygen -t ed25519 -C "email address"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```
- [Adding a new SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)


## Python
- Use what you already have
- If you don't have it there are different ways to go. We won't use Conda during the lessons, for instance.
- In Linux and Bash Python should work from the command line by typing ``python``/``python3`` or running a script with ``python <script>``/``python3 <script>``

 ### Windows
- Get it working from Git Bash
  - if the command ``type python`` gives you a path, then proceed
    - otherwise you may have to do a new installation
  - ``$ alias python='winpty python.exe'``
  - ``$ python -V``
    - does it give you the python version 3-something?
 - Make it permanent
 -``$ echo "alias python='winpty python.exe'" >> ~/.bashrc``



## PlantUML
- We will use the tool PlantUML to render UML code to graphical diagrams and flowcharts. 
- If you want PlantUML to render directly from a file on GitHub please install the **extension PlantUML viewer to your web browser**.
- works for multiple browsers [https://github.com/marcozaccari/markdown-diagrams-browser-extension](https://github.com/marcozaccari/markdown-diagrams-browser-extension)
-  if the above does not work try
  - Firefox: PlantUML visualizer (is not compatible with !theme _none_ tag)
  - Chrome: Pegmatite,PlantUML viewer
  - Microsoft Edge Markdown Diagrams
- When done you should see the code below as a diagram.

```plantuml
@startuml
!theme superhero
title:"USECASE Diagrams"
skinparam actorStyle awesome
Lecturer -d->(Present slides on UML)
Participant-d->(learn UML from SLIDES)
@enduml
```
