# Documentation and project organization

WHY?

folders etc

Before lunch
link to Richel's parts about organizing project

???- note

    - proj folder/git repo
    - sub directories
        - doc, src, results, (bin)
    - run-all script and/or main program (also related to software)
    - files
        - README
    - namings


## Documentation

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

!!! objectives

    - [Documentation part 1](../project_start/startup.md#introduction-to-documentation) aims to:
        - introduce motivation for documentation
        - get tips for in-code documentation
        - get tips for README files
    - [Documentation part 2](../deployment/documentation.md) aims to:
        - get tips for README files
    - get tips for full documentation and tutorials


## Intro to documentation

!!! admonition "Documentation comes in different forms"

    - What _is_ documentation?
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

### In-code documentation

- Comments, function docstrings, ...
- Advantages
    - Good for programmers
    - Version controlled alongside code
    - Can be used to auto-generate documentation for functions/classes
- Disadvantage
    - Probably not enough for users

### Order your files

- Think that **everything is worth to be part of documentation** (like GitHub directory tree)
- The parts from the software development cycle
    - The planning parts
        - Requirements:
        - what should the program deliver
        - dependencies
        - OS platforms
        - Risk analysis
    - Design documentation
        - Analysis: pseudo code and UML
    - Source code
        - with in-code documentation
    - README
    - (Full documentation)
    - (Tutorial)

!!! admonition "Directory structure"

    - **Different projects should have separate folders**

    - README file
    - Data  (version controlled)(.gitignore)
    - Processed data intermediate
    - (Manuscript)
    - Results  data, tables, figures (version controlled, git tags for manuscript version)
    - Src  version controlled code goes here
        - License (here or in the 1st level)
        - Requirements.txt
    - Doc
    - index
    - .gitignore file
    
## Summary

!!! admonition "Parts to be covered"

    - &#9744; Planning
        - Pseudocode
        - Unified Modelling Language (UML)
    - &#9744; Testing
        - Different levels
    - &#9745; Source/version control
        - Git intro
    - &#9744; Collaboration
        - GitHub
    - &#9744; Reproducibility (for you and others)
        - Deployment
        - Dependencies
        - (Workflows)
    - &#9744; Sharing
        - open science
        - citation
        - licensing
    - &#9745; Documentation
        - Explanation (in code)

