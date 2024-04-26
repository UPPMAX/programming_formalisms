# Ending documentation

!!! questions

    - How can the user understand how to run your program and what it does?

!!! info "Content"

   - We will prepare for use of your code
   - Update the README
   - Update a Doc Index
   - Revisit licence
   - But also...
     - some theory of packages
     - some theory of workflows
     - some theory of containers
     - some info about Tutorials/Reference/HowTo guides

???- info "Learning objectives of 'Documentation'"

    - learners can finalize the documentation of the project

!!! note "Instructor notes"

    Prerequisites are:

    - ...

    Lesson Plan: **FIX**
    
    - **Total** 30 min
    - Theory 20
    - Discussions 10 min

!!! info "TOC" 

    - In-code documentation review
    - Documentation 
        - tutorials/howto/reference
        - project doc
        - html site generators
        - deployment on servers
    - Hands-on
        - update README
          - installation procedure
        - update license
        - update citation
        - update index
        
## README example
```
# Planets
## About

This program ...

## Installation

- This tool has been successfully tested in python-3.11.5

- Clone this repository

    git clone ...

- Install dependencies (``numpy`` and ``matplotlib``)


    pip install --user -r requirements

- run from code directory

    ./planet_main.py

```

### Licensing       
        
#### Copyright
- Protects creative expression
- Automatically created
- **Derivative works** usually inherit copyright of the thing derived
- Time frame: essentially forever (lifetime + X years)

**When can you use?**
- When there is a **license** saying you can
- Limited other cases (private use, fair use: context dependent)
- In practice: people do many things, but then can't share their output if license does not allow it or is not clarified

!!! admonition "A little more about licensing"

    - Copyleft is the legal technique of granting certain freedoms over copies of copyrighted works with the requirement that the same rights be preserved in derivative works.

    1. Custom/closed/proprietary
        - Derivative work typically not possible
        - Unusual in academics 
    2. Permissive (**MIT**, BSD, Apache)
      - Derivative work does not have to be shared    
    3. Weak copyleft share-alike (**LGPL**, MPL)
      - Derivative work is free software but is limited to the component
    4. Strong copyleft share-alike (**GPL**, AGPL)
      - Derivative work is free software and derivative work extends to the combined project    

[Read more](https://uppmax.github.io/programming_formalisms_intro/sharing_deeper.html#licensing#)      


### Software Citation

- Think the same as for a scientific paper
- [Software citation](https://uppmax.github.io/programming_formalisms_intro/sharing_deeper.html#software-citation)

- !!! admonition "Citation bullets"

    - Creator
    - Title
    - Publication venue
    - Date
    - Version
    - Type

## In-code documentation

- Comments, function docstrings, ...
- Advantages
    - Good for programmers
    - Version controlled alongside code
    - Can be used to auto-generate documentation for functions/classes
- Disadvantage
    - Probably not enough for users

## Documentation outside code

- Documentation comes in different forms - what *is* documentation?
    - **Tutorials**: learning-oriented, allows the newcomer to get started
    - **How-to guides**: goal-oriented, shows how to solve a specific problem
    - **Explanation**: understanding-oriented, explains a concept
    - **Reference**: information-oriented, describes the machinery
- Not to forget
    - **Project documentation:**
        - requirements: what is the goal of the software, risks, platforms
        - the analysis/design: pseudocode and UML
        - risk analysis


### HTML static site generators

There are many tools that can turn RST or Markdown into beautiful HTML pages:

- [Sphinx](http://sphinx-doc.org) 
    - Generate HTML/PDF/LaTeX from RST and Markdown.
    - [Read the docs style](https://sphinx-rtd-theme.readthedocs.io/en/stable/)
    - [Earlier Intro day for this course]()
- [Jekyll](https://jekyllrb.com)
    - Generates HTML from Markdown.
    - GitHub supports this without adding extra build steps.
- [MkDocs](https://www.mkdocs.org/) **← we will exercise this, this is how this lesson material is built**
    - Generates HTML from Markdown.
    - Example: [Programming formalisms  course]([https://uppmax.github.io//](https://github.com/UPPMAX/programming_formalisms)) 

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
                                      
### Wikis
- Popular solutions (but many others exist):
    - [MediaWiki](https://www.mediawiki.org)
    - [Dokuwiki](https://www.dokuwiki.org)
    - Also on GitHub!
    - Typically needs to be hosted and maintained

- Example with [WRF weather model](https://github.com/wrf-model/WRF/wiki)
 
!!! info "See also"

    [Documentation by CodeRefinery](https://coderefinery.github.io/documentation/)


## (Optional) Last hands on your documentation
- Some inspiration [Beagle](https://github.com/yampelo/beagle)



!!! admonition "Git/GitHub Repo "

    - README.md
        - with citation info
    - License
    - Figures
        - figure outputs
    - Src 
        - License (here or in the 1st level)
        - Requirements.txt
        - python files
    - Doc
        - index
        - planning documents
        




???+ Question "(Optional) Update your documentation"

    - You can now work in GitHub directly
    - Do ``git push`` first from local command-line!
    - Revisit your README and update it with info after all our commits
        - About
        - Installation
    - Users should be able to install the required python packages with:
        ``pip install -r requirements.txt`` (depending on system ``--user`` may be added)
    - Citing
    - License
    - Lastly, you may, if time allows, update the doc/index.md file that should describe the content
    - Do a ``git pull`` to have the same version of your project repo locally!

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



