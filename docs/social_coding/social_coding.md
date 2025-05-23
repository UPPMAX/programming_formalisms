---
tags:
  - social
  - coding
---

# Social coding

> This material is based on the Social Coding lecture by Code Refinery:
> [Social coding](https://github.com/coderefinery/social-coding/blob/main/content/social-coding.md) by [CodeRefinery](https://coderefinery.org/) is licensed under [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/).


!!! info "Learning outcomes of 'Social coding'"

    Learners

    - have an overview of motivations, benefits, but also risks of sharing and reusing code.


- The **Open Science movement** encourages researchers to share research output beyond the contents of a published academic article (and possibly supplementary information).
- **Open-source license** is a type of license for computer software and other products that allows the source code, blueprint or design to be used, modified and/or shared under defined terms and conditions.

!!! admonition "FAIR"

    **The current buzzword for data management**

    - You may be asked about it in, for example, making data management plans for grants:

    - **F**indable
        - Will anyone else know that your data exists?
        - Solutions: put it in a standard repository, or at least a description of the data. Get a digital object identifier (DOI).
    - **A**ccessible
        - Once someone knows that the data exists, can they get it?
        - Usually solved by being in a repository, but for non-open data, may require more procedures.
    - **I**nter-operable
        - Is your data in a format that can be used by others, like csv instead of PDF?
        - Or better than csv. Example: 5-star open data
    - **R**eusable
        - Is there a license allowing others to re-use?


## Discussion in groups

### Question 1: Why would I want to share my scripts/code/data?

- A: Easier to find and reproduce (scientific reproducibility)
- B: More trustworthy: others can verify correctness and find and report bugs
- C: Enables others to build on top of your code
  (derivative work, provided the license allows it)
- D: Others can submit features/improvements
- E: Others can help fixing bugs
- F: Many tools and apps are free for open source, so no financial cost for this
  (GitHub, GitLab, Appveyor, Read the Docs)
- G: Good for your CV: you can show what you have built
- H: Discourages competitors. If others can't build on your work,
  they will make competing work
- I: When publicly shared, usually we timestamp or set a version,
  so it is easier to refer to a specific version
- J: You can reuse your own code later after change of job or affiliation
- K: It encourages me to code properly from the start


### Question 2: The most concerning thing for me, If I share my software now

- A: It will be scooped (stolen) by someone else
- B: It will expose my "ugly code"
- C: Others may find bugs and mistakes. What if the algorithm is wrong?
- D: I will get too many questions, I do not have time for that
- E: Losing control over the direction of the project
- F: Low quality copies will appear
- G: I won't be able to sell this later. Someone else will make money from it
- H: It is too early, I am just prototyping, I will write version to distribute later
- I: Worried about licensing and legal matters, as they are very complicated

### Question 3: Why is software often treated differently from papers?


### Question 4: When you find a repository with code/library you would like to reuse, what are the things you look at to decide whether you use it?

## Comparing sharing papers and sharing code

<img src="https://github.com/coderefinery/social-coding/blob/main/content/img/sharing-papers.jpg?raw=true" alt="Image shows that we are motivated sharing our published papers since we get rewarded with academic credit in form of citations" width="600"/>

Citation as one form of academic credit to motivate sharing papers.

Sharing papers and academic credit:

- The goal is maximum visibility and maximum reuse.
- The more interesting science is done referencing my paper, the better for me.
- Nobody actively tries to limit the reach of their papers.

<img src="https://github.com/coderefinery/social-coding/blob/main/content/img/sharing-code.jpg?raw=true" alt="Getting improvements back and also getting citations can motivate us to share code" width="600"/>

Different ways we can benefit from sharing code.

Sharing code:

- "I did all the ground work and they get to do the interesting science?"
- Sharing code and encouraging _derivative work_ may boost your academic impact.
- But will your work be visible if it is used two levels deep down?

## Journal policies as motivation for sharing

??? info "From [Science editorial policy](https://www.sciencemag.org/authors/science-journals-editorial-policies)"

    > "We require that **all computer code used for modeling and/or data analysis**
    > that is not commercially available be deposited in a **publicly accessible repository**
    > upon publication. In rare exceptional cases where security
    > concerns or competing commercial interests pose a conflict, code-sharing
    > arrangements that still facilitate reproduction of the work should be
    > discussed with your Editor no later than the revision stage."

???- info "From [Nature editorial policy](https://www.nature.com/authors/policies/availability.html)"

    > "An inherent principle of publication is that others should be able to
    > replicate and build upon the authors' published claims. A condition of
    > publication in a Nature Research journal is that authors are required to make
    > **materials, data, code, and associated protocols promptly available** to readers
    > without undue qualifications. Any restrictions on the availability of
    > materials or information must be disclosed to the editors at the time of
    > submission. Any restrictions must also be disclosed in the submitted
    > manuscript."

However [a study](https://www.pnas.org/content/115/11/2584) showed that despite
these policies, many people still do not share their code 😞. This paper
includes samples of charming author responses such as:

> "When you approach a PI for the source codes and raw data, you better explain
> who you are, whom you work for, why you need the data and what you are going
> to do with it."

## Motivation for open source software

- Enable derivative work
- Do not lock yourself out of own code
- Attract developers who want to be able to show the coding work on their CVs
- Tightly regulated domains require open source
- Open-source software (OSS) can lead to more engagement from industry which may lead to more impact
- If it's not open, it is not likely to become standard

## Sharing software is also scary

- **Fear of being scooped**
  > A license can avoid it, and you can release when you are ready. Anyway, it is
  > very unlikely that others will understand your code and publish before you
  > without involving you in a collaboration. Sharing is a form of publishing.
- **Exposes possibly "ugly code"**
  > In practice almost nobody will judge the quality of your code.
  > "Software, once written, is never really finished" (N. Asparouhova).
- **Others may find bugs and mistakes**
  > Isn't this good? Would you not like to use a code which gives people the chance to locate bugs?
  > If you don't release, people will assume there are bugs anyway.
- **Others may require support and ask too many questions**
  > This can become a problem: use tools and community and protect your time.
  > You aren't required to support anyone. You can also "archive" a repository to disable
  > most forms of interaction (issues, PRs). Also a note in README on support level helps.
- **Fear of losing control over the direction of the project**
  > Open source does not mean everybody can change **your version**.
- **"Bad" derivative projects may appear**
  > It will be clear which is the official version.

## Code reusability

Should you reuse things that others have done?

Types of things that can be reused:

- Main libraries (e.g. NumPy, SciPy)
- Special scientific libraries
- Random code from website
- Copying from Stack Overflow

Do you want others to reuse what you make?
How do you turn your own small project into the next NumPy? Do you want to?

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

## Sharing or not sharing?

<img src="https://github.com/coderefinery/social-coding/blob/main/content/img/in-out.jpg?raw=true" alt="Our work depends on ideas, articles, data, and software" width="600"/>

> Whether and what we can share depends on how we obtained the components.

- Our work depends on outputs from others. Research of others depends on our outputs.
- Whether you can share your output depends on how you obtained your input.
- A repository that is private today might become public one day.
- Sometimes "OTHERS" are you yourself in the future in a different group/job.
- **Software licenses** matter. And this is what we will discuss the last day.

## Sharing data

<https://coderefinery.github.io/social-coding/sharing-data/>

!!! note "The Turing Way"

    - The Turing Way is an open science, open collaboration, and community-driven project.
    - We involve and support a diverse community of contributors to make data science accessible, comprehensible and effective for everyone.
    - Our goal is to provide all the information that researchers, data scientists, software engineers, policymakers, and other practitioners in academia, industry, government and the public sector need to ensure that the projects they work on are easy to reproduce and reuse.
    - [The Turing Way Handbook](https://book.the-turing-way.org/index.html)

