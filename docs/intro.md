# Introduction of the week

!!! note "Course mottos"

    - Turning scripters into computer scientists
    - Add theory to bolster already present practical skills

## Course overview

!!! info "Programming Formalisms goal"

    The goal of the course is
    to give scientists with some experience in programming and scripting
    [an understanding of formal principles of software development](https://github.com/UPPMAX/programming_formalisms/issues/54).
  
    Only what is used by the student project is course content,
    with alternatives relevant to academics provided in lecture
    (or extra material) to what we do
    ([#52](https://github.com/UPPMAX/programming_formalisms/issues/52)).
    As we need discuss alternatives besides the course content, by definition,
    all exercises cannot be part of the project
    ([#43](https://github.com/UPPMAX/programming_formalisms/issues/43)).
    Whenever we give some advice,
    we will try to supply a references to the literature
    ([#57](https://github.com/UPPMAX/programming_formalisms/issues/57)).

    You can always give anonymous feedback at any time [here](misc/feedback.md)
    ([#75](https://github.com/UPPMAX/programming_formalisms/issues/75)).

    Teach evidence-based or expert-recommended best practices on how to:

    - write design documents for a project
    - work as a team
    - share code
    - develop code
    - test code
    - optimize code
    - write reusable code
    - deploy code

    Understand and do formal software development practices:

    - understand, use and create a UML class diagram
    - understand and use a formal git branching model
    - understand and use a formal project workflow
    - understand and practice social coding,
      such as pair programming and code reviews
    - understand and use a run-time speed profiler

## The project

!!! note "Become a Programming Formalisms team member"

    - Share your GitHub name [at this issue](https://github.com/programming-formalisms/programming_formalisms_project_autumn_2024/issues/1)
    - The project can be found
      [here](https://github.com/programming-formalisms/programming_formalisms_project_autumn_2024)

## Shared document

- [HackMD](https://hackmd.io/29fyx-PaTZ6WPgAShRM8ig)

## Schedule

This is a general course schedule, that intends to give a general overview
of the course's teaching.
For a detailed daily schedule, see the detailed schedule of that day.

Next iteration of the the course will take place in week 47,
i.e. Monday 18th November to and including Friday 22nd November 2024.

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->
<!-- markdownlint-disable MD055 --><!-- We use three pipes to indicate an empty row -->

Day      |Time       |Teacher|Subject
---------|-----------|-------|-----------------------------------------------------------
Monday   |09:00-10:00|Björn  |[Syllabus](./intro.md) + [Introduction](./introductions/intro.md)
Monday   |10:00-11:00|Björn  |[Software development tools](introductions/sdlc_tools.md)
Monday   |11:00-12:00|Björn  |[Git/GitHub basics and start project](./project_start/startup.md)
Monday   |13:00-15:40|Lars   |[Define and plan project](./project_start/analysis_design.md)
Monday   |15:40-16:00|Lars   |Confidence and retrospect
|||||
Tuesday  |09:00-10:00|Lars   |[Software development life cycle](./introductions/sdlc.md)
Tuesday  |10:00-11:00|Richel |[Issues](project/issues.md) and [kanban board](project/kanban_board.md) and [team roles](project/team_roles.md)
Tuesday  |11:00-15:40|Richel |[TDD](tdd/README.md), [assert](algorithms/assert.md), [formal testing framework](testing/testing_framework.md), [CI](testing/continuous_integration.md)
Tuesday  |15:40-16:00|Lars   |Confidence and retrospect
|||||
Wednesday|09:00-12:00|Björn  |[Formal git workflow, branches/merge](./git/branches.md) & [github branches/merge](./git/contribute.md) & [contribute, social coding](./social_coding/social_coding.md)
Wednesday|13:00-15:40|Richel |[Pair programming](pair_programming/README.md), [function design](algorithms/function_design.md)
Wednesday|15:40-16:00|Lars   |Confidence and retrospect
|||||
Thursday |09:00-10:00|Lars   |Object-oriented design
Thursday |10:00-12:00|Richel |[Class design](data_structures/class_design.md), [has-a relation](data_structures/has_a_relation.md), [expressive data type](data_structures/expressive_data_type.md)
Thursday |13:00-14:00|Lars   |[Modular programming](./modularity/modular.md)
Thursday |14:00-15:40|Richel |[Implement the project as a package](package/README.md)
Thursday |15:40-16:00|Lars   |Confidence and retrospect
|||||
Friday   |09:00-11:00|Richel |[Optimisation misconceptions](optimisation/misconceptions.md), [Big O](optimisation/big_o.md), [runtime speed profiles](optimisation/runtime_speed_profiles.md)
Friday   |11:00-13:30|Björn  |[Deployment](deployment/deploy.md)
Friday   |13:30-15:00|Björn  |[Documentation](deployment/documentation.md)
Friday   |15:00-15:40|Richel |Wrap-up
Friday   |15:40-16:00|Richel |Confidence and retrospect

<!-- markdownlint-enable MD013 -->
<!-- markdownlint-enable MD055 -->
