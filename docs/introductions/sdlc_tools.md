# Software Development Lifecycle (SDLC) tools

???+ questions

    - What are the key concepts and steps in the SDLC
    - What are the tools for a project?


!!! info "Content"

    - We will have an introduction to some SDLC key features
    - We will get some theory of project tools and thinking.


!!! info "Learning objectives of 'SDLC tools'"

    - Compare and contrast various software development tools and justify their relevance to specific development tasks.

!!! note "Instructor notes"

    Prerequisites are:

    - Understanding the Software development Life Cycle


    Lesson Plan: **FIX**

    - **Total** 30 min
    - Theory 20
    - Discussions 10 min

!!! info "TOC"

    - Review SDLC steps
    - Planning: Analysis and design
    - Testing
    - Source/version control
    - Collaboration
    - Reproducibility and sharing
    - Documentation

---

## The waterfall model

1. Requirements
2. Analysis and design
3. Development
4. Test
5. Deployment and maintenance


``` mermaid
flowchart
    Requirements --> A["Analysis and design"] --> Development --> Test --> D["Deployment and maintenance"] --> Requirements
```

- Good approach for **small and simple systems** where the team knows the system and **requirements very well**.

!!! warning
    - Error is spreading
    - small mistakes in the beginning will have large impact on the end result.
        - e.g. bugs, architecture limiting extensions
    - large costs economically and timely

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
    - More info in [Software Development Lifecycle tomorrow](sldc.md)


