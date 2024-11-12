# Pre-requirements

<base target="_blank">

!!! note "What do you need to be prepared?"

    - A good Zoom setup: microphone, camera and a place where you can talk
    - A **terminal**
    - We use **VS Code** in our teaching
         - VS Code has a built-in terminals and other useful integrated systems
         - You can use another IDE if you are more comfortable with it
    - A local installation of **`git`**
    - A **GitHub** account
    - A local **Python** installation

!!! info

    If you have not set up Git/GitHub and have not installed Git, Python and VS code.
  
    - **Count with ~1 hour of preparations**, depending on choices you make (Anaconda takes time to install).

## Checkpoints

### A good Zoom setup

You have a Zoom good setup, if:

- :black_square_button: you can talk freely. If not, find a room/place where you can
- :black_square_button: others in the Zoom room can clearly hear what you say.
      If not, use a microphone
- :black_square_button: you can clearly hear what others in the Zoom room say.
      If not, use a headset

### Visual Studio

You have installed Visual Studio, if:

- :black_square_button: You can start Visual Studio

???- question "Do you have Visual Studio Code installed?"

     - Yes!
     - No, go to [Visual studio](prereqs.md#visual-studio)

### Git

You have installed `git`, if:

- :black_square_button: In a terminal, `git version` shows your version of `git`

???- question "Don't have Git installed?"

    Go to [Terminal and Git](prereqs.md#terminal-&-git)

- :black_square_button: In a terminal, `git config --global user.name` shows your name

???- question "Does not show your name?"

    In a terminal, type:

    ```
    git config --global user.name "[your regular name]"
    ```

    where `[your regular name]` is your regular name, for example:

    ```
    git config --global user.name "Sven Svensson"
    ```

- :black_square_button: In a terminal, `git config --global user.email` shows your email address

???- question "Does not show your email?"

    In a terminal, type:

    ```
    git config --global user.email "[your email]"
    ```

    where `[your email]` is your email address, for example:

    ```
    git config --global user.email "sven@svensson.se"
    ```

- :black_square_button: In a terminal, `git config --global pull.rebase` shows something,

      e.g. the text `false`

???- question "Does not show your rebase strategy?"

    In a terminal, to change this to the default, type:

    ```
    git config --global pull.rebase false
    ```

???- question "Can you run Git from VS code?"

     - Yes!
     - No go to [Using git in VS code](prereqs.md#using-git-in-VS-code)

???- question "Have you configured a Git (local) account?"

     - Yes!
     - No, go to [Configure Git](prereqs.md#configure-git)

???- question "Have you set up a git ssh-keys?"

     - Test: `ssh -T git@github.com`
         - Output should be something like this: ``Hi bclaremar! You've successfully authenticated, but GitHub does not provide shell access.`` 
     - Yes!
     
     - If not working, go to [to here](prereqs.md#gitgithub-connection-through-ssh-keys) 
     
You have good enough knowledge of `git`, if:

- :black_square_button: You know what cloning is
- :black_square_button: You know what staging is
- :black_square_button: You know what a commit is
- :black_square_button: You know what pushing is
- :black_square_button: You know what pulling is
- :black_square_button: You know how to see the status of your `git` repository
- :black_square_button: You can do a basic `git` workflow,
      as described [here](https://uppmax.github.io/programming_formalisms/misc/git_workflow/)
      in 5 minutes.

???- question "Do you know basic git?"

     - I am familiar with basic git commands like 
         - ``clone``, ``pull``, ``push``, ``add``, ``commit``, ``status``, ``log``
     
     - No, go to [Git courses](prereqs.md#git-courses)

### GitHub

You have set up a GitHub account, if:

- :black_square_button: You can login at [https://github.com/](https://github.com/)

???- question "Have you set up a GitHub account?"

     - Yes!
     - No, go to [Github](prereqs.md#github)

### Python

You have installed Python, if:

- :black_square_button: In a terminal, running `python --version` or `python3 --version` shows the Python version.

???- question "Have you installed Python?"

     - Yes!
     - No, go to [Python](prereqs.md#python)

???- question "Can you run Python from VS Code?"

     - Yes!
     - No, go to [Python in VS Code](prereqs.md#python-in-vs-code)

You know enough basic Python, if:

- :black_square_button: You can describe what a variable is
- :black_square_button: You can change the value of a variable
- :black_square_button: You can show the value of a variable on screen

???- question "Do you know basic Python?"

     - Yes!
     - Even though it is not part of the course we will use Python in the exercises. 
         - With other programming languages you can get far, but you may want to learn the basic syntax used in Python!
     - To learn more, go to [Python courses](prereqs.md#python-courses)

### Some other solutions

Do you want to work in another environment you are used to, you can do some of the steps above and get some inspiration from the [other solutions](prereqs.md#other-solutions) further down.

## Visual Studio

**There are several solutions in how to work with coding and the environments around it**

- You can work in the environment(s) you are used to.
- Many of the teachers will use **Visual Studio Code (VS code)**
- This is not necessary if you have other solution
- Benefit:
    - integrate you terminal and Git work with **code development**
    - graphical user interface
    - available in **all platforms**

- You may want to check [VS Code installation](https://coderefinery.github.io/installation/vscode/) as well!

- [Download](https://code.visualstudio.com/)
    - Note for Mac Users: If Safari does not let you download, try Chrome or other web browser.

!!! info

    Go back to [checkpoints](prereqs.md#checkpoints)

## Install Git

**Git (specific installation may be required) and terminals are already integrated in VS Code and can be the first choice**
Otherwise follow the steps in the end of this page ([Other solutions]prereqs.md#other-solutions)!

- Version >= 2.28 would do

=== "Windows"

    There are several different ways to run the course material on a Windows computer. Neither is perhaps optimal, and the material itself has not been adapted specifically for Windows. Nevertheless, in principle everything *should* be possible to run. A few ways you could setup:

    **Git-windows with a command line and Git integrated**

    - Install Git Windows: [https://gitforwindows.org/](https://gitforwindows.org/?to=/placeholder.com) (**easiest if you want to start fast and plan to work in windows environment**)
      
        - Follow the setup insctructions from the Windows part at [https://coderefinery.github.io/installation/git-in-terminal/](https://coderefinery.github.io/installation/git-in-terminal/) by CodeRefinery.
        - Included will be the **Git Bash**

=== "Mac"

    - We will use terminal to some extent.
    - Choose one of your choice, the built-in or another!
    - Chances are big that you already have **git installed on your computer**.     
    - You can check by running e.g. `git --version`. 
        -  and if it reports 2.28 or higher, then you are good.
    - If you have a very old version of git or you don't have it, install it following the instructions [here](https://git-scm.com/download/mac)     
        - You may have to do ``xcode select --install`` from the Mac terminal.

=== "Linux"

    - `git` comes installed with all Linux distributions
    - To install `git`, do `sudo apt-get install git`

!!! info

    Go back to [checkpoints](prereqs.md#checkpoints)

## Using git in VS code

- When Git is installed you may need to restart a shell in VS code before it works.

<!-- 
### Using VS Code as a git editor

- This will set VS Code as the editor that Git starts. 
- It will start a new tab, and Git will wait until you save and close that tab.
- Git for Windows on Windows may automatically set this if you select it as an editor.
- Otherwise:

```console
git config --global core.editor "code --wait"
```
-->

!!! info

    Go back to [checkpoints](prereqs.md#checkpoints)


### Configure git

**This must be done**

Follow these instructions. [https://nbis-reproducible-research.readthedocs.io/en/course_2104/setup/#installing-git](https://nbis-reproducible-research.readthedocs.io/en/course_2104/setup/#installing-git)

!!! info

    Go back to [checkpoints](prereqs.md#checkpoints)


### GitHub

Sign up for GitHub account:
[https://coderefinery.github.io/installation/github/](https://coderefinery.github.io/installation/github/)

!!! info

    Go back to [checkpoints](prereqs.md#checkpoints)


### Git–GitHub connection through ssh keys

(This may take a while to get working, but is worth it)
[https://coderefinery.github.io/installation/ssh/](https://coderefinery.github.io/installation/ssh/)

- Test: `ssh -T git@github.com`
    - Output should be something like this: ``Hi bclaremar! You've successfully authenticated, but GitHub does not provide shell access.``
- If not working, these are the approximate steps to be done in your terminal. It can vary between systems, so link above is more certain.

```console
ssh-keygen -t ed25519 -C "<email address for your GitHub account>"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
# Copy the SSH public key to your clipboard. For WINDOWS:
clip < ~/.ssh/id_ed25519.pub
```

- On Mac, use ``pbcopy`` instead, like:

```console
# Copy the SSH public key to your clipboard. For MAC:
pbcopy < ~/.ssh/id_ed25519.pub
```


- Then go to your GitHub account on the web.
    1. In the upper-right corner of any page, click your profile photo, then click Settings.
    2. In the "Access" section of the sidebar, click SSH and GPG keys.
    3. Click New SSH key or Add SSH key.
    4. In the "Title" field, add a descriptive label for the new key. For example, if you're using a personal laptop, you might call this key "Personal laptop".
    5. Select the type of key **authentication**.
    6. In the "Key" field, paste your public key.
    7. Click Add SSH key.
    8. If prompted, confirm access to your account on GitHub.

- Now test again in your terminal: `ssh -T git@github.com`
    - Output should be something like this: ``Hi bclaremar! You've successfully authenticated, but GitHub does not provide shell access.``

- If there was a problem, confer the full article [Adding a new SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).

!!! info

    Go back to [checkpoints](prereqs.md#checkpoints)


## Git courses

- Learn the basics!
- Choose one or several of these!

- Git courses
    - [NBIS](https://nbis-reproducible-research.readthedocs.io/en/course_2104/git/)
    - [Git by CodeRefinery](https://coderefinery.github.io/git-intro/)
    - [GitHub by CodeRefinery](https://coderefinery.github.io/git-collaborative/)
    - [NAISS](https://www.hpc2n.umu.se/node/982)

- [Pro Git book](https://git-scm.com/book/en/v2)

!!! info

    Go back to [checkpoints](prereqs.md#checkpoints)


## Python

- Use what you already have
- If you don't have Python there are different ways to go. We won't use Conda during the lessons, for instance.
    - Bare python (recommended for the **"bare metal" user**)
        - You may need to install other packages (pip)
        - [install python](https://www.python.org/downloads/)
        - **note macOS**: the system install of Python on macOS is not supported, instead:
            - ``brew install python3``
    - Anaconda (recommended for **python/R developers liking GUI:s**)
        - **Count with 15-20 minutes**  
        - includes
            - many many packages
            - conda packager
            - pip installer
            - GUI launchers, like example
            - jupyter notebook/lab
            - Spyder
            - RStudio
            - etc...
        - [install Anaconda](https://www.anaconda.com/download)
    - miniconda (recommended for **terminal user**)
        - **Faster to install**
        - Includes:
            - less packages than Anaconda, and no GUI launcher but:
            - conda packager
            - pip installer
            - etc...
        - [install Miniconda](https://docs.conda.io/projects/miniconda/en/latest/)

- In Linux and Bash, Python should work from the command line by typing ``python``/``python3`` or running a script with ``python <script>``/``python3 <script>``

## Python in VS Code

- Step 1. Install a supported version of Python on your system, see above
- Step 2. Install the Python extension for Visual Studio Code from the left menu bar.
- Step 3. Open or create a Python file and start coding.
    - Example: make a hello.py script and run it with the "play" button.
    - Choose which Python interpreter to use.
- Step 4. To run Python from a VS Code terminal (Bash or other) you may have to restart the shell

!!! info

    Go back to [checkpoints](prereqs.md#checkpoints)


## Python courses

- We assume familiarity with python at least equivalent
- Learn the basics by choosing one or several of these  courses!

    - [Python part](https://uppmax.github.io/uppmax_intro_python/) of the UPPMAX introductory course
    - [Python programming with applications to bioinformatics](https://uppsala.instructure.com/courses/85913).


## Other solutions

There are some other solutions for installations but they are probably not supported by the teachers of the course.

### Terminals

=== "Windows"

    There are several different ways to run the course material on a Windows computer. Neither is perhaps optimal, and the material itself has not been adapted specifically for Windows. Nevertheless, in principle everything *should* be possible to run. A few ways you could setup:

    **Git-windows with a command line and Git integrated**

    - Install Git Windows: [https://gitforwindows.org/](https://gitforwindows.org/?to=/placeholder.com) (**easiest if you want to start fast and plan to work in windows environment**)
      
        - Follow the setup insctructions from the Windows part at [https://coderefinery.github.io/installation/git-in-terminal/](https://coderefinery.github.io/installation/git-in-terminal/) by CodeRefinery.
        - Included will be the **Git Bash**

    **Other possibilities**
    - Use the **Windows 10 PowerShell**

        - [install git](https://git-scm.com/book/en/v2/Appendix-A:-Git-in-Other-Environments-Git-in-PowerShell)
        
    - Use the Linux Bash Shell (**WSL**) on Windows 10/11 (**perhaps best practice if you plan to run Linux as well**)
    
        - This will give you access to a full command-line bash shell based on Linux on your Windows 10/11 PC. 
        - instructions below
        - For the difference between the Linux Bash Shell and the PowerShell on Windows 10, see *e.g.* [this article](https://searchitoperations.techtarget.com/tip/On-Windows-PowerShell-vs-Bash-comparison-gets-interesting).

    - Run as Linux through a **virtual machine** (and see the Linux setup above)
        - not shown

    **Install Bash on Windows 10/11 (WSL)**, following the instructions at *e.g.* **1** of these resources:


    - [Installing the Windows Subsystem and the Linux Bash](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
    - [Installing and using Linux Bash on Windows](https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/)
    - [Installing Linux Bash on Windows](https://itsfoss.com/install-bash-on-windows/)

### Python from In Git-bash (Windows)

- Get it working from **Git Bash**
    - if the command ``type python`` gives you a path, then proceed
        - otherwise you may have to do a new installation
        - or find the path
        - if anaconda installation you may add something like this:
        - ``echo 'export PATH="<path/to/Anaconda/root>:<path/to/anaconda/root>/Scripts:$PATH:' >> .bashrc``
            - example:  ``/c/Users/bjcar425/AppData/Local/anaconda3:/c/Users/bjcar425/AppData/Local/anaconda3/Scripts``
    - ``$ alias python='winpty python.exe'``
    - ``$ python -V``
        - does it give you the python version 3-something?
- Make it permanent
 -``$ echo "alias python='winpty python.exe'" >> ~/.bashrc``


Parts taken from [https://nbis-reproducible-research.readthedocs.io/en/course_2104/setup/](https://nbis-reproducible-research.readthedocs.io/en/course_2104/setup/)

