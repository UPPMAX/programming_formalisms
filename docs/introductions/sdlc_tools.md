---
tags:
  - SDLC
  - tools
---

# Software Development Lifecycle (SDLC) tools

???+ questions

    - What are the key concepts and steps in the SDLC
    - What are the tools for a project?
    
!!! info "Content"

    - Introduction to some SDLC key features
    - Theory of project tools and thinking

!!! info "Learning outcomes of 'SDLC tools'"

    Learners can

    - compare and contrast various software development tools.
    - justify their relevance to specific development tasks.
    - can give a reason for the benefits of the different tools for the SDLC

???- note "Instructor notes"

    Prerequisites are:

    - Understanding the Software development Life Cycle

    Lesson Plan:

    - **Total** 30 min
    - Theory 20
    - Discussions 10 min

---

???- admonition "Changes"

    - clear goal
    - clearer guide
    - ask about level
    - practical examples than just explain the concept.
    - dictionary
    - exercises
        - practical things within exercise (not needing to scroll back and forth)
        - clearer instructions
        - solutions
        - (advanced exercises)

## The waterfall model

1. Requirements
2. Analysis and design
3. Development
4. Test
5. Deployment and maintenance


``` mermaid
flowchart
    Requirements --> A["Analysis and design"] --> Development --> Test --> D["Deployment and maintenance"] -.-> Requirements
```

- Good approach for **small and simple systems** where the team knows the system and **requirements very well**.

!!! warning

    - Error is spreading
    - Small mistakes in the beginning will have large impact on the end result.
        - e.g. bugs, architecture limiting extensions
    - Large costs economically and timely

## Other Models

- Modern principles:
    - automated tests, continuous integration (CI)
- Deliver as fast as possible:
    - small iterations are easier to manage
- Extreme Programming
    - Pair programming
    - Test-driven development

!!! info "Conclusion"

    - Each team has unique requirements
    - Don’t be afraid of trial and error
    - More info in [Software Development Lifecycle tomorrow](sdlc.md)

## The tools/concepts for Developing a programming project

### For small projects

Wilson et al. 2017: **Good enough practices** in Scientific computing

- project organization
    - folders
- software development practices
    - explanations
    - naming
    - eliminate duplication --> libraries
    - dependencies
    - DOI
- tracking changes
- collaborate
    - documentation
    - to-do lists
    - strategies
    - license
    - citable

These cover **WHAT DO I MEAN??**

- Development
- Test
- Deployment

### Also needed

???- info "Details"

    - good tools and practices for refactoring and devel steps
    - focus scientific computing
    - lacking planning steps like requirements, analysis and design

- Planning part with
    - requirements
    - analysis
    - design

!!! admonition "Parts to be covered"

    - &#9745; Planning
        - Pseudocode
        - Unified Modelling Language (UML)
    - &#9745; Testing
        - Different levels
    - &#9745; Source/version control
        - Git etc
    - &#9745; Collaboration
        - GitHub
    - &#9745; Reproducibility (for you and others)
        - Deployment
        - Dependencies
        - (Workflows)
    - &#9745; Sharing
        - open science
        - citation
        - licensing
    - &#9745; Documentation
        - Tutorials
        - How-to guides
        - Explanation
        - Reference

## project organization

- wait to before lunch
    
## software development practices

WHY?

    - explanations
    - naming
    - eliminate duplication --> libraries
    - dependencies
    - DOI

plus testing

Connected to documentation

???- note

    Software
    
    - explanation comment at the start of the program (also "help function" as for './program -h')
    - functions 
        - names for variables and functions
    - eliminate duplication
        - libraries
        - test if you rely
    - dependencies and requirements explicit 
    - program behavior by if/else (possibly arguments from outside)
    - run-all script and/or main program (also related to project organization)
    - example/test data set
    - DOI like zenodo
   
## Tracking changes

WHY?

Git

## Collaborate

WHY?

    - documentation
    - to-do lists
    - strategies
    - license
    - citable

Also links to other sessions

???- note

    - overview: README etc
    - to-do list/issues
    - communication strategies
    - license explicit
        -  recommendations and why
    - citable


    
## Planning part with

    - requirements
    - analysis
    - design

WHY?

!!! note

    - "If I had nine hours to chop down a tree, I'd spend the first six sharpening my axe."
    - Modelling sharpens your axe since it helps you think about what you're going to build, how to seek feedback, and where to make improvements.
    - It prepares you to build the real thing to reduce any potential risk of failure. "

!!! note

    - Planning step is to ...
        - get an overview of the project/program.
        - help planning writing the code
        - identify parts needed
        - risk analysis
    - Can be divided into analysis and design
        - **Analysis** part is to **state the problem** and **define inputs and outputs**
            - graphical tools like UML
            - text
            - if object-oriented programming: **objects**
        - **Design** phase to find out the **specific algorithms** needed
            - UML and/or pseudocode
            - if object-oriented programming: **classes**
            - if functional programming: **functions/modules**

    - More in afternoon!

## Exercises

Think about

???- "Why do we want to work with the mentioned tools?"

???- "What is Unified modelling language"

???- "What is source control and what are  the benefits?"

???- "When to write documentation?"

???- "What does reproducibility mean?"

???- "Why sharing?"

## Summary of SDLC tools

- Now after the overview you are ready to dig deeper in the topics and try it out yourself!
