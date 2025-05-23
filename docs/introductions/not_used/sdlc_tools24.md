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
    - Theory of project tools and thinking.

!!! info "Learning outcomes of 'SDLC tools'"

    Learners can

    - compare and contrast various software development tools.
    - justify their relevance to specific development tasks.

???- note "Instructor notes"

    Prerequisites are:

    - Understanding the Software development Life Cycle

    Lesson Plan:

    - **Total** 30 min
    - Theory 20
    - Discussions 10 min

---

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

## Planning: Analysis and design

!!! note

    - "If I had nine hours to chop down a tree, I'd spend the first six sharpening my axe."
    - Modelling sharpens your axe since it helps you think about what you're going to build, how to seek feedback, and where to make improvements.
    - It prepares you to build the real thing to reduce any potential risk of failure. "

!!! note

    - Planning step is to ...
        - get an overview of the project/program.
        - help planning writing the code
        - identify parts needed
        - (risk analysis)
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

### Flowcharts or Unified Modeling Language (UML)

#### Tools

- PlantUML
    - Open-source
    - Can be integrated with IDE:s, Java documentation, Word
    - Scripts rather than drawing tools
    - requires plug-in to render in browser
    - <http://www.plantuml.com/plantuml>
- Graphviz
    - open source graph visualization software.
    - It has important applications in networking, bioinformatics, software engineering, database and web design, machine learning, and in visual interfaces for other technical domains.
    - <https://graphviz.org/>
- **Mermaid** used in this course
    - Open-source
    - Not as many diagrams
    - renders in browser without plug-ins
    - <https://mermaid.js.org/>
    - [Live editor](https://mermaid.live/)

**Types**

```mermaid
flowchart TD

  uml_diagrams["UML graph types"]
  structure[Structure]
  behaviour[Behavior]
  interaction[Interaction]

  uml_diagrams --> structure
  uml_diagrams --> behaviour
  structure --> class_diagram[Class diagram]
  structure --> component[Component diagram]
  structure --> object[Object diagram]
  structure --> composite[Composite diagram]
  behaviour --> use_case[Use case diagram]
  behaviour --> activity[Activity diagram]
  behaviour --> interaction
  interaction --> sequence[Sequence diagram]
  interaction --> communication[Communication]
  interaction --> timing[Timing]
  interaction --> interaction_overview[Interaction overview]
```

!!! admonition "We will in the course use"

    - Sequence
    - Activity/algorithm flowchart
    - Class diagrams

!!! note "See also"

    - [Learn UML with mermaid](../misc/uml_with_mermaid.md)

#### Sequence

```mermaid
sequenceDiagram
    Alice ->>+Bob: Authentication Request
    Bob-->>-Alice: Authentication Response
    Alice->>+Bob: Another authentication Request
    Bob-->>-Alice: Another authentication Response
```

#### Class

 A diagram that shows the system classes and relationships between them.

```mermaid
classDiagram
    Driver o-- Car : owns
    Car *-- Wheel : have 4
```

#### Activity/algorithm

A flowchart that shows the process and its correlating decisions,
including an **algorithm**  or a business process.

```mermaid
flowchart TD
  is_installed{Graphviz installed?}
  is_installed --> |yes| process_all[process all diagrams]
  is_installed --> |no| process_sub[process only sequence and activity diagrams]
```

!!! note "See also"

    - Diagrams will be covered on
        - Monday and Tuesday during part of the [Project start with analysis and design](../project_start/analysis_design.md) and [Design paradigms](../data_structures/class_design.md)
        - Thursday during [Modular programming](../modularity/modular.md)

### Pseudocode

- Pseudocode does not have syntax rules of any particular language
    - no systematic standard form.
- Depending on the writer, pseudocode may therefore vary widely in style,
    - from a near-exact imitation of a real programming language at one extreme
    - to a description approaching formatted prose at the other.

!!! note "See also"

    - Example of [pseudocode](../extra_bc/pseudocode.md)

## Testing

Does it work for all legal input data sets??

1. Unit testing
2. Integration tests (test modules together as a whole)

**Typical testing process**

```mermaid
flowchart TD
  unit_tests[Unit test]
  unit_tests --> |As many times as necessary| unit_tests
  unit_tests --> |worst bugs fixed| alpha
  alpha[Alpha release]
  alpha --> |As many times as necessary| unit_tests
  alpha --> |worst bugs fixed| beta
  beta[Beta release]
  beta --> |As many times as necessary| alpha
  beta --> |minor bugs fixed| done
  done[Finished program]
```

!!! note "See also"

    - More about testing day 2.
    - [Test-driven development(TDD)](../tdd/README.md)
    - [Testing lecture](../testing/README.md)

## Source/version control and collaboration

### The essence of version control

Summarized from [Code refinery](https://coderefinery.github.io/git-intro/motivation/)

- System which records **snapshots** of a project
- Implements **branching**:
    - You can work on several **feature** branches and switch between them
    - **Different people** can work on the same code/project without interfering
    - You can **experiment** with an idea and discard it if it turns out to be a bad idea
- Implements **merging**:
    - Person A and B’s simultaneous work can be **easily combined**

!!! info "Why Git?"

    We will use [Git](https://git-scm.com) to record snapshots of our work:

    - **Easy to set up**: no server needed.
    - **Very popular**: chances are high you will need to contribute to somebody else's code which is tracked with Git.
    - **Distributed**: good backup, no single point of failure, you can track and clean-up changes offline, simplifies collaboration model for open-source projects.
    - Important **platforms** such as [GitHub](https://github.com), [GitLab](https://gitlab.com), and [Bitbucket](https://bitbucket.org) build on top of Git.

    However, any version control is better than no version control and it is OK to prefer a different tool than Git.

    - Other tools:

        - [Subversion](https://subversion.apache.org)
        - [Mercurial](https://www.mercurial-scm.org)
        - [Pijul](https://pijul.org/)

## Collaboration

### Example

- Someone has given you access to a repository online and **you want to contribute** to it.
- Quite easy to make a **copy and send a change back**.

    1. get repository, make a change locally, and send the change directly back.
    2. make a "pull request" that allows a review.

- Once we know how code review works:
    - we will be able to propose changes to repositories of others
    - review changes submitted by external contributors.

!!! objectives

    - [Collaboration](../git/contribute.md) aims to
        - Get into working more with GitHub for collaboration
        - **Centralized** workflow (good within a group)
        - **Forking** (better for contribution to other's project)
        - Contributing to other's projects

## Reproducibility and sharing

### Reproducible research

- Have you ever spent days trying to repeat the results that took you hours to do the first time last week?
- Or you have to do paper revisions, but you just can’t get the results to match up?

- We will integrate this topic in the hands-on.
- We will discuss different methods and tools for better reproducibility in research software and data.
    - Virtual environments with ``pip install`` (venv/virtualenv) will be covered in the hands-on.
    - Conda environment is referred to in the extra material.
- We will demonstrate how version control, workflows, containers, and package managers can be used to record reproducible environments and computational steps.
- [Extra material](https://uppmax.github.io/programming_formalisms_intro/reproducible_deeper.html)

!!! objectives

    - [More about reproducibility](https://uppmax.github.io/programming_formalisms_intro/reproducible_deeper.html) aims to
        - Get a short overview of recording dependencies
        - Get short intro to tools:
            - Pip and PyPI
            - Conda
            - Environments
            - Tools for other languages than Python

### Sharing and licensing and citations

!!! Discussion "One-time usage towards distributed package"

    - Have others used your code?
    - Did you plan it from beginning?
    - Did you take actions somehow?

#### Open science

- The **Open Science movement** encourages researchers to share research output beyond the contents of a published academic article (and possibly supplementary information).
- **Open-source license** is a type of license for computer software and other products that allows the source code, blueprint or design to be used, modified and/or shared under defined terms and conditions.

!!! info "See also"

    - We will talk about this the last day!

### Licensing

!!! info "See also"

    - We will talk about this the last day!


### Software Citation

!!! info "See also"

    - We will talk about this the last day!

!!! objectives

    - [More about sharing](https://uppmax.github.io/programming_formalisms_intro/sharing_deeper.html) aims to:
        - introduce reproducibility and sharing, licensing and citation
        - get into thinking about dependencies and solutions
        - get into choosing license, citation and DOI

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

## Do you remember?

!!! info "Learning outcomes of 'SDLC tools'"

    Learners can

    - compare and contrast various software development tools.
    - justify their relevance to specific development tasks.

!!! admonition "Parts to be covered"

    - &#9744; Planning
        - Pseudocode
        - Unified Modelling Language (UML)
    - &#9744; Testing
        - Different levels
    - &#9744; Source/version control
        - Git etc
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
    - &#9744; Documentation
        - Tutorials
        - How-to guides
        - Explanation (in-code)
        - Reference

### Think about

???- "Why do we want to work with the mentioned tools?"

???- "What is Unified modelling language"

???- "What is source control and what are  the benefits?"

???- "When to write documentation?"

???- "What does reproducibility mean?"

???- "Why sharing?"

## Summary of SDLC tools

!!! Keypoints

    - Software development is both series of steps:

        1. Requirements
        2. Analysis and design
        3. Development
        4. Test
        5. Deployment and maintenance

    - ... and iteration of these
    - Planning for reproducibility, modularity and documentation should be started in the beginning
    - Tools for the developer
        - Planning: UML (graphs)
        - Development iteration: git
        - Testing: test functions (Covered later)
        - Collaboration: GitHub
        - Sharing: GitHub, licenses, citation
        - Reproducibility
        - Documentation: In-code, READMEs, html

- Now after the overview you are ready to dig deeper in the topics and try it out yourself!
