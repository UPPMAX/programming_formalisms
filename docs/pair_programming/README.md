---
tags:
  - pair
  - programming
  - duo
  - duos
  - together
  - collaborative
  - team
---

# Pair programming

!!!- info "Learning outcomes"

    - Understand why pair programming is important
    - Understand what good pair programming looks like
    - Practice pair programming

???- question "For teachers"

    Prerequisites are:

    - Learners can do the git basic workflow on `main`

    Teaching goals are:

    - Learners can tell why pair programming is important
    - Learners can tell how good pair programming looks like
    - Learners have practiced pair programming

    Preparation:

    - A shared document where duos can assign themselves to a class,
      needed for exercise 2
    - The learner project must have a folder `/src/[package_name]`
      where learners can put their code,
      needed for exercise 2

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

    ```mermaid
    gantt
      title Lesson plan pair programming 2
      dateFormat X
      axisFormat %s
      Exercise 2: crit, exercise_2, 0, 5s
      Feedback 2: feedback_2, after exercise_2, 10s
      Theory 3: theory_3, after feedback_2, 5s
      Exercise 3: crit, exercise_3, after theory_3, 10s
      Feedback 3: feedback_3, after exercise_3, 5s
      Start TDD: done, extra, after feedback_3, 45
    ```

## Why?

Pair programming is a facet of developing code better.
We use it a lot in this course, because:

- it is recommended by influential software development
  classics `[Martin, 2011][Thomas & Hunt, 2019]`
- scientific evidence is mixed, however, e.g.
    - a pair considers more alternative ways for a solution `[Flor et al., 1991]`,
      however, this is only 2 programming teams
    - 96% of developers prefer pair programming over developing
      alone `[Williams & Kessler, 2000]`, however,
      this is only 41 respondents
- what is for sure: it works great with recommended teaching practices,
  e.g. grouping up learners
  is effective `[Hattie, 2012][Schwartz & Gurung, 2012, page 65]`
  (with the optimal group size of 2 [reference for best group size 2])
  and indeed the Programming Formalisms learners like it
  [as they write in the retrospective](../evaluations/2023_autumn/retrospective_results_course.md)

## Exercises

### Exercise 1: understand pair programming

???- info "Learning outcomes"

    - Understand what pair programming is
    - First guess at understanding what **good** pair programming is

- Together, read the questions before reading the material
- Together, divide which team member is going to read which source:
    - [the Wikipedia page on Pair Programming](https://en.wikipedia.org/wiki/Pair_programming).
    - [Martin Fowler's page on Pair Programming](https://martinfowler.com/articles/on-pair-programming.html)
    - (if with three: [Codecademy's page on Pair Programming](https://www.codecademy.com/resources/blog/what-is-pair-programming/))
- Together, set a timer for 10 minutes
- Individually, answer the questions within the time limit
- Together, write down a shared answer on the GitHub project repository
  with path `learners/[a teammember's name]/pair_programming.md`
- Upload the file to the GitHub repo.

Questions:

- What is pair programming?

???- question "Answers"

    Pair programming is a software development practice
    in which two developers work on the same computer.
    The person with the keyboard ('the driver') develops new code.
    The person without the keyboard ('the navigator') reviews the code.

- How does a good pair behave? Describe what can be observed when pairing online

???- question "Answers"

    In an online course:

    - A good pair has the driver sharing his/her screen
    - In a good pair, both people talk a lot
    - A good pair switches roles regularly
    - A good pair has a lot of commits

- When to switch roles? Give a procedure

???- question "Answers"

    Any procedure to achieve the goal of regularly switching roles:

    - after enough work has been done to put in a `git commit`
      such as 'Add documentation', 'Add test', 'Pass test'
    - each time a timer goes off, e.g. after 5 minutes

    The first procedure sometimes fails when a driver (thinks he/she)
    has much more knowledge than the navigator on the subject
    and is (apparently) inexperienced in good pair programming.
    In such cases, the second procedure work better.

- What effects does pair programming have?

???- question "Answers"

    All material for this exercise show references to studies that
    show advantages of pair programming,
    for example (from two Wikipedia references):

    - a pair considers more alternative ways for a solution `[Flor et al., 1991]`
    - 96% of developers prefer pair programming over developing alone `[Williams & Kessler, 2000]`

    However, the first study uses only 2 programming teams,
    the second study 41 self-selected respondents.
    One can/should be critical on these studies.

    Yet, for teaching, working is groups has a high effect size `[Hattie, 2012]`,
    where the optimal group size is two `[Schwartz & Gurung, 2012]`.

### Exercise 2: criticise teachers pair programming

This exercise is two teacher demonstrating
pair programming as good as possible.

- Watch them do it
- Discuss as a group
    - Were roles swapped often enough?
    - Did they solve unexpected problems well?
    - Did the driver always share his/her screen?
    - Did each team member contribute?
    - Did each team member contribute to the code?
    - How can they improve?

### Exercise 3: practice pair programming

Before doing the exercises:

- Reach an agreement on how to do pair programming: among others,
  decide upon the first driver and when to switch roles.
- Write your own analysis on the weather data, as if it would
  be for a paper. You can use the same analysis
  as done in [the 'TDD at a larger scale' session](../tdd_at_bigger_scale/README.md)
  or come up with your own hypothesis.
  If that is too hard, try
  [one of the many example functions](https://uppmax.github.io/programming_formalisms/misc/functions/)

The exercise, to be done as a pair:

- Develop the code together
- Share code by `push`ing it
- Agree upon when the code is done

Reflect:

- Were roles swapped often enough?

???- question "Answers to reflection"

    Ideally, each learner was the driver at least twice.
    However, the task may have been finished before that happened
    and if that is the case, that is OK.

- Did you solve unexpected problems well?

???- question "Answers to reflection"

    One can expected some unexpected problems.
    It can be that one person struggled with `git`
    and he/she should have been given the proper time to fix this
    **and** work on the problem.

- Did the driver always share his/her screen?

???- question "Answers to reflection"

    Ideally, this is a yes.

    Sure, one can stop sharing when opening an email client for a GitHub message :-)

- Did each team member contribute?

???- question "Answers to reflection"

    Ideally, this is a yes.

    'Contributing' can be more than just writing code!

- Did each team member contribute to the code?

???- question "Answers to reflection"

    Ideally, this is a yes.

    Sure, people have different skill levels and
    one member wrote the more complex parts;
    this is part of being in a team:
    pair programming is one of the best ways to transfer
    knowledge!

## References

- `[Flor et al., 1991]` Flor, Nick V.; Hutchins, Edwin L. (1991). "Analyzing Distributed Cognition in Software Teams: A Case Study of Team Programming During Perfective Software Maintenance". In Koenemann-Belliveau, Jürgen; Moher, Thomas G.; Robertson, Scott P. (eds.). Empirical Studies of Programmers: Fourth Workshop. Ablex. pp. 36–64. ISBN 978-0-89391-856-9.
- `[Fowler's website]` [Fowler's website](https://martinfowler.com/articles/on-pair-programming.html)
- `[Hattie, 2012]` Hattie, John. Visible learning for teachers: Maximizing impact on learning. Routledge, 2012. TODO: check that this is a reference for optimal group size of 2
- `[Martin, 2011]` Martin, Robert C. The clean coder: a code of conduct for professional programmers. Pearson Education, 2011.
- [reference for best group size 2] The reference that a group size of 2
  is best [#71](https://github.com/UPPMAX/programming_formalisms/issues/71)
- `[Schwartz & Gurung, 2012]` Schwartz, Beth M., and Regan AR Gurung. Evidence-based teaching for higher education. American Psychological Association, 2012. TODO: check that this is a reference for optimal group size of 2
- `[Thomas & Hunt, 2019]` Thomas, David, and Andrew Hunt. The Pragmatic Programmer: your journey to mastery. Addison-Wesley Professional, 2019.
- `[Williams & Kessler, 2000]` Williams, Laurie; Kessler, Robert R.; Cunningham, Ward; Jeffries, Ron (2000). "Strengthening the case for pair programming" (PDF). IEEE Software. 17 (4): 19–25. CiteSeerX 10.1.1.33.5248. doi:10.1109/52.854064.
