# Object Oriented development

>People regard their environment in terms of objects"
`[Jacobson 1992]`

???- info "Learning objectives"
    - Understand what a Design Pattern is 
    - Describe the general components of design patterns and their significance.

???- info "Learning objectives of Design Patterns"

    - The learners know of the "zero line" code and how it relates to software design "Zero line" Design
    - The learners can describe the general parts of a design pattern and why we use them.
    - The Learners should be able to understand the "Factory pattern" and what problem it solves
    

This leads to a smaller semantic gap which
gives two major benefits

    -Understanding
        the semantic gap(The distance form input to understanding) between reality and model is smaller making the risk of misunderstanding less.
    - Modification
        The model tends to be local resulting from a individual item. Each of these are represented by a single object.


### Objects

!!! info "What is an object?"

    An object is an entity that is defined by being able to save state(Information) and a number of operations(Behavior).

!!! info "Object Orientation is a paradigm not a language feature"

    - Merriam-webster defines a paradigm as: 'a philosophical and theoretical 
      framework of a scientific school or discipline within which theories,
      laws, and generalizations and the experiments performed in support
      of them are formulated'
    - Stanford Encyclopedia of Philosophy cites [`Kuhn, 1962`]
      in where a work of Paradigm
      is not only the key theories and laws, but also—and this is what makes
      them paradigms—the applications of those theories in the solution of important problems

Developing object orientated is following these principles:

- Information Hiding
    - No unit outside of the object shall know the internal workings of the object
- The concept of Encapsulation
- The concept of message passing


???- question "What is a Design Pattern"

    Design patterns are typical solutions to common problems
    in software design. Each pattern is like a blueprint
    that you can customize to solve a particular
    design problem in your code.
    from [refactoring.guru](https://refactoring.guru/design-patterns)

???- question "Why do we use Design Patterns"

    The truth is that you might manage to work as a programmer for many years
    without knowing about a single pattern. A lot of people do just that.
    Even in that case, though, you might be implementing some patterns without
    even knowing it. So why would you spend time learning them?

    Design patterns are a toolkit of tried and tested solutions to common
    problems in software design. Even if you never encounter these problems,
    knowing patterns is still useful because it teaches you how to solve all
    sorts of problems using principles of object-oriented design.

    Design patterns define a common language that you and your teammates can
    use to communicate more efficiently. You can say, “Oh, just use a
    Singleton for that,” and everyone will understand the idea behind your
    suggestion. No need to explain what a singleton is if you know the pattern
    and its name.
    from [refactoring.guru](https://refactoring.guru/design-patterns)

### Exercise

???- "Design Patterns"

    Implement a Factory method for the creation of bacteria and one for nutrients

???- "Extra assignment"

    Using refactoring.guru find an implement another pattern that is useful for your project.

## References 

- `[Kuhn, 1962]` Kuhn, T. S. The Structure of Scientific Revolutions. Chicago: University of Chicago Press, 1962. ISBN 0-226-45808-3
- `[Ivar Jacobson 1992]` Object-Oriented Software Engineering, a usecase driven approach, Addison-wesley 1992
- `[Stroustrup B. 1998]` Stroustrup B. What is “Object-oriented Programming”? Software, IEEE. 1988 Jun 1;5:10–20.
- `[Merriam-Webster, 2011]` paradigm. 2011. In Merriam-Webster.com. Retrieved Nov 20, 2024,
  from https://www.merriam-webster.com/dictionary/hacker
