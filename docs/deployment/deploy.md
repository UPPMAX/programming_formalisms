# Deploy your code

!!! questions

    - How to make your program work for others?

!!! info "Content"

    - We will prepare for use of your code
    - But also...
        - some theory of packages
        - some theory of workflows
        - some theory of containers
        - get some hands on

!!! info "Learning objectives of 'Deployment'"

    - learners can mentalize the installation needs from the users perspective
    - learners can evaluate different available tools for reproducibility and installations
    - learners can prepare for different users: local computer, Cluster

???- note "Instructor notes"
    Prerequisites are:

    - ...

    Lesson Plan: **FIX**

    - **Total** 30 min
    - Theory 20
    - Discussions 10 min

???- info "TOC"

    - Overview
        - Recording dependencies
        - workflows
        - containers
    - Make a package

## Introduction

- It's about Distribution!

!!! note

    - Many projects/scripts start as something for personal use, but expands to be distributed.
    - Let's start in that end and be prepared.
    - The following steps can be very valuable for you in a couple of months as well as you revisit your code and don't know what it does or why you did this and that.

!!! attention

    - Make your program or workflow works for others and yourself in the future.
    - Let people understand how to use your program/tool

## Exercises

!!! info "Intro"

    - Users should be able to install the required python packages with ``pip``:
        ``pip install -r requirements.txt`` (depending on system ``--user`` may be added)
    - Revisit your README and update it with info after all our commits
        - Installation
    - Do a ``git pull`` to have the same version of your project repo locally!

???+ question "Make a 'requirements' file in groups"

    - each group in different branches
    - then merge and teacher does code review

???+ question "Update the "installation instruction' in groups"

    - each group in different branches
    - then merge and teacher does code review

## Summary

!!! info "Key points"

    **Make sure it works for others or yourself in the future!**


!!! admonition "Parts to be covered!"

    - &#9745; Source/version control
        - Git
        - We have a starting point!
        - GitHub as remote backup
        - branches
    - &#9745; Planning
        - &#9745; Analysis
        - &#9745; Design
    - &#9745; Testing
        - Different levels
    - &#9745; Collaboration
        - GitHub
        - pull requests
    - &#9744; Sharing
        - &#9745; open science
        - &#9744; citation
        - &#9745; licensing
        - &#9745; deploying
    - &#9744; Documentation
        - &#9745; in-code documentation
        - &#9744; finish documentation

