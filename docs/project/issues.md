---
tags:
  - Issue
  - Issues
  - Tasks
  - Issue tracker
  - Bug tracker
  - Todo
  - Todo list
---

# Issues

!!!- info "Learning objectives"

    - To be a good team member within a project
    - Use Issues to communicate what needs to be done
    - Assign yourself to Issues to communicate what you are working on

???- question "For teachers"

    Prerequisites are:

    - .

    Teaching goals are:

    - .

    Prior:

    - .

    Lesson plans:

    ```mermaid
    gantt
      title Lesson plan pair programming 1
      dateFormat X
      axisFormat %s
      Introduction : intro, 0, 5s
      Theory 1: theory_1, after intro, 5s
      Exercise 1: crit, exercise_1, after theory_1, 15s
      Feedback 1: feedback_1, after exercise_1, 5s
      Theory 2: theory_2, after feedback_1, 5s
      Exercise 2: crit, exercise_2, after theory_2, 10s
      Exercise 2 after the break: crit, after exercise_2, 5s
    ```

A good team member communicates.
Here we show how to communicate to the rest of the team with minimal overhead.

- What needs to be done?
- Who is doing what now?

## Issues

> A bug-tracking database is not just a memory aid or ascheduling tool.
> It doesn 't make it easier to produce great software,
> it makes it possible to create great software.
>
> Joel Spolsky `[Gunderloy, 2007]`

An issue is a unit of work, or something that needs to be done.
All issues are stored in an issue tracker.
The issue tracker is a fundamental communication tool in
teams `[Bertram, 2009]`

English                 |Issue                          |Describe
------------------------|-------------------------------|----------------------------------------
This needs to be done!  |Create an issue                |Why and what needs to be done
I am on it!             |Assign yourself to an issue    |-
You are best to do this!|Assign someone else to an issue|Why you think the other is best to do it
Done!                   |Closing an issue               |Why it is done
Nah, it is not done yet!|Re-opening an issue            |Why it was not done

![The life cycle of a issue, from Bugzilla, 2009](issue_lifecycle.png)

> The life cycle of a issue, from `[Bugzilla, 2009]`

## Our project

In our project we use the following rules:

- Always work on an issue, create an issue if needed
- Issues are always based on the requirements document
- First part of an issue can be to add it to the
  requirements document. 
  Sure, the product owner is usually is charge of this, but in this
  project, everyone is a bit of a product owner :-)

## Exercises

### Exercise 1: a typical issue lifecycle

Do the following in our student project:

- Create a test issue.
  In the text, write why you create that issue and what needs
  to be done
- Assign yourself to the issue
- Close the issue. In the text, write why you close that issue

### Exercise 2: learners' project

For the learners' project:

- create at least one issue for things that
  you think need to be done, based on the design document.
  Assign yourself to one issue

!!! note "Duplicates"

    Sometimes, two issues describe the same problem.
    This is called a duplicate.
    Because duplicates are not uncommon,
    there is an issue label called `duplicate`.

!!! note "Managing issues"

    For a fresh project, there are many things to do.
    It is not uncommon to have an 'issue manager'
    that keeps an overview of all issues.

## Discussion

Issues are useful to communicate:

- what needs to be done
- who is planning to do what
- what is already done

However, an issue tracker is not designed to
communicate what is _actively_ being worked on.
For that, a [kanban board](kanban_board.md) is used instead.

## References

- `[Bertram, 2009]` Bertram, Dane. "The social nature of issue tracking in software engineering." University of Calgary (2009).
- `[Gunderloy, 2007]` Gunderloy, Mike, ed. Painless project management with FogBugz. Berkeley, CA: Apress, 2007.

- `[Bugzilla, 2009]` Bugzilla (2009). Life Cycle of a Bug.
  Retrieved October 30, 2009 from <https://www.bugzilla.org/docs/2.18/html/lifecycle.html>
