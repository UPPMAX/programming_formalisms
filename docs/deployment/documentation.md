# Ending documentation

!!! questions

    - How can the user understand how to run your program and what it does?

???+ info "Learning objectives of 'Documentation'"

    learners  
    
    - can make a full README
    - can make a suitable choice of License
    - can make citation info
    - know how to find instruction of going more sophisticated

!!! info "Content"

    - content of readme
        - installation
        - get started
        - test
        - citation
        
    - Revisit licence
    
    - Update a Doc Index
    - View other possibilities
        - Wiki
        - GitHub pages/ReadTheDocs
        - MkDocs/sphinx
  
!!! note "Instructor notes"

    Prerequisites are:

    - ...

    Lesson Plan: **FIX**

    - **Total** 30 min
    - Theory 20
    - Discussions 10 min

!!! info "TOC"


## Revisiting documentation

!!! admonition "Documentation comes in different forms"

    - What *is* documentation?
        - **Tutorials**: learning-oriented, allows the newcomer to get started
        - **How-to guides**: goal-oriented, shows how to solve a specific problem
        - **Explanation**: understanding-oriented, explains a concept
        - **Reference**: information-oriented, describes the machinery
        - **In-code documentaion — docstrings**
        **Not to forget**
        - Project documentation:
            - requirements: what is the goal of the software, risks, platforms
            - the analysis: pseudocode and UML
            - risk analysis

**There is no one size fits all**: often for small projects a `README.md` or
`README.rst` can be enough (more about these formats later).

### Where are we?

**DONE**

- &#9745; in-code documentation
- &#9745; Project documentation:
    - requirements: what is the goal of the software, risks, platforms
    - the analysis: pseudocode and UML
    - risk analysis

**Finalize today**

- &#9744; README
    - &#9745; installation instruction
    - &#9744; Tutorial: get started
    - &#9744; citation

**Further documentation for future projects**

- &#9744; **License**
- &#9744; **Tutorials**: learning-oriented, allows the newcomer to get started
- &#9744; **How-to guides**: goal-oriented, shows how to solve a specific problem
- &#9744; **Explanation**: understanding-oriented, explains a concept
- &#9744; **Reference**: information-oriented, describes the machinery

## The README

### Example content

- About
- Installation (with dependencies and testing)
- Get started
- Use cases
- Citation

### About

### Install

- We covered this in last session

### Get started

- This session can be "running some test data" to get an overview of what the program can perform.
- It may describe how to get test data
- Example: <https://github.com/KamilSJaron/smudgeplot/tree/v0.3.0?tab=readme-ov-file#runing-this-version-on-sacharomyces-data>

### Use cases

- This may sometimes be merged with the previous section

- **How-to guide**: goal-oriented, shows how to solve a specific problem
- May be a sub-set of the most important commands, depending on how wide the program is.
- Example: <https://github.com/KamilSJaron/smudgeplot/tree/v0.3.0?tab=readme-ov-file#runing-this-version-on-sacharomyces-data>

???- discussion "would it be needed for your project?"

### Contributions

- How to contribute?
- Example: <https://github.com/KamilSJaron/smudgeplot/tree/v0.3.0?tab=readme-ov-file#runing-this-version-on-sacharomyces-data>


### Acknowledgements

- Add references that inspired or added algorithms to your code
- Example: <https://github.com/KamilSJaron/smudgeplot/tree/v0.3.0?tab=readme-ov-file#acknowledgements>

### References/Citation

[Software citation by Code Refinery](https://coderefinery.github.io/social-coding/software-citation/)

- Example: <https://github.com/KamilSJaron/smudgeplot/tree/v0.3.0?tab=readme-ov-file#reference>

!!! example

    - R: <https://github.com/KamilSJaron/smudgeplot/tree/v0.3.0?tab=readme-ov-file#install-the-whole-thing>
    - Conda: <https://github.com/biobakery/MetaPhlAn>
    - pip: <https://github.com/deeptools/HiCExplorer>
    - pip: <https://github.com/caleblareau/mgatk?tab=readme-ov-file>
    - binaries/executable: <https://github.com/dougspeed/LDAK?tab=readme-ov-file#how-to-obtain-ldak>

## Exercise

!!! info "Intro"

    - Revisit README-ext and update it with info after all our commits
        - About
    - Citing
    - Lastly, you may, if time allows, update the doc/index.md file that should describe the content
    - Do a ``git pull`` to have the same version of your project repo locally!


???+ question "Update your documentation in groups"

    - You can now work in GitHub directly
    - Do ``git push`` first from local command-line!

    
    - We already have a file called ``README.md``, that is used for information for the course participants.
    - Let's continue to work with the ``README-EXT.md`` we used in last session.


    ???- question "Group 1: Work together and formulate an 'About' section

    ???- question "Group 2: Work together and formulate 'Getting started' section"
    
    ???- question "Group 3: Work together and formulate 'Citation' section"


## Discussion

???- question "Discussion: Describe what you've done and why?"

## Going further with documentation

!!! info "See also"

    [Documentation by CodeRefinery](https://coderefinery.github.io/documentation/)

### Wikis

- Popular solutions (but many others exist):
    - [MediaWiki](https://www.mediawiki.org)
    - [Dokuwiki](https://www.dokuwiki.org)
    - Also on GitHub!
    - Typically needs to be hosted and maintained

- Example with [WRF weather model](https://github.com/wrf-model/WRF/wiki)

### HTML static site generators

There are many tools that can turn RST or Markdown into beautiful HTML pages:

- [Sphinx](http://sphinx-doc.org)
    - Generate HTML/PDF/LaTeX from RST and Markdown.
    - [Read the docs style](https://sphinx-rtd-theme.readthedocs.io/en/stable/)
    - [HICexplorer documentation](https://hicexplorer.readthedocs.io/en/latest/)
- [Jekyll](https://jekyllrb.com)
    - Generates HTML from Markdown.
    - GitHub supports this without adding extra build steps.
- [MkDocs](https://www.mkdocs.org/) **← we will exercise this, this is how this lesson material is built**
    - Generates HTML from Markdown.
    - Example: [Programming formalisms course](https://uppmax.github.io/programming_formalisms)

There are many more ...

### Deployment on servers

GitHub, GitLab, and Bitbucket make it possible to serve HTML pages:

- [GitHub Pages](https://pages.github.com) (GH-pages) ← this is what we and many others use for course and tutorial material
- [Bitbucket Pages](https://www.w3schools.com/git/git_remote_pages.asp?remote=bitbucket)
- [GitLab Pages](https://pages.gitlab.io)
- [Read the docs](http://readthedocs.org) ← this is what NBIS uses for some course material
    - hosts public Sphinx documentation for free!
    - Example: [NBIS Introduction to Git](https://nbis-reproducible-research.readthedocs.io/en/course_1803/git/)

#### GitHub pages

- Easiest. Everything is local to GitHub
- This lesson material

#### Read the Docs

- Somewhat more possibilities, like having several versions of documentation to switch between.


### What contributes to reusability?

What contributes to you being able to reuse stuff that others make, and others
(or you) being able to reuse your stuff? When you find a repository with code
you would like to reuse, you may look at the following things to determine its
reusability:

!!! note
    
    This can be now reconnected to question 4 (above).

- Date of last code change
  > ... is the project abandoned?
- Release history
  > ... how about stability and backwards-compatibility?
- Versioning
  > ... will it be painful to upgrade?
- Number of open pull requests and issues
  > ... are they followed-up?
- Installation instructions
  > ... will it be difficult to get it running?
- Example
  > ... will it be difficult to get started?
- License
  > ... am I allowed to use it?
- Contribution guide
  > ... how to contribute and decision process?
- Code of conduct
  > ... how to make clear which behaviors are unacceptable and discouraged? How violations of Code of conduct will be handled?
- Trust and community
  > ... somebody you trust recommended it?

... most of which you have or will learn during this
[CodeRefinery](https://coderefinery.org) workshop!


!!! admonition "Parts to be covered!"

    - &#9745; Source/version control
        - Git
        - We have a starting point!
        - GitHub as remote backup
        - Branches
    - &#9745; Planning
        - &#9745; Analysis
        - &#9745; Design
    - &#9745; Testing
        - Different levels
    - &#9745; Collaboration
        - GitHub
        - pull requests
    - &#9745; Sharing
        - &#9745; open science
        - &#9745; citation
        - &#9745; licensing
        - &#9745; deploying
    - &#9745; Documentation
        - &#9745; in-code documentation
        - &#9745; finish documentation

