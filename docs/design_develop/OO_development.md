# Object Oriented development

???- info "Learning objectives"
    - Understand what a Design Pattern is 
    - Describe the general components of design patterns and their significance.

???- info "Learning objectives of Design Patterns"

    - The learners know of the "zero line" code and how it relates to software design "Zero line" Design
    - The learners can describe the general parts of a design pattern and why we use them.
    - The Learners should be able to understand the "Factory pattern" and what problem it solves
    

>People regard their environment in terms of objects"
`[Jacobson 1992]`

This leads to a smaller semantic gap which
gives two major benefits

-**Understanding**
The semantic gap(The distance form input to understanding) between reality and model is smaller making the risk of misunderstanding less.

- **Modification**
    The model tends to be local resulting from a individual item. Each of these are represented by a single object.


### Objects

!!! info What is and object
    An object is an entity that is defined by being able to save state(Information) and a number of operations(Behavior).

!!! info **Object Orientation is a Paradigm not a language feature**

    - Mariam-webster defines a Paradigm as:
    philosophical and theoretical framework of a scientific school or discipline within which theories, laws, and generalizations and the experiments performed in support of them are formulated

    - Stanford Encyclopedia of Philosophy cites the work of Thomas Kuhn The Structure of Scientific Revolutions in where a work of Paradigm is not only the key theories and laws, but also—and this is what makes them paradigms—the applications of those theories in the solution of important problems

!!! info "Principles of object orientated development"

    1: **Information Hiding**
        No unit outside of the object shall know the internal workings of the object

    2: **The concept of Encapsulation**

    3: **The concept of message passing**

???- "What is a Class"

???- "What is a Design Pattern"

    Design patterns are typical solutions to common problems
    in software design. Each pattern is like a blueprint
    that you can customize to solve a particular
    design problem in your code.
    from [refactoring.guru](https://refactoring.guru/design-patterns)

???- "Why do we use Design Patterns"

    The truth is that you might manage to work as a programmer for many years without knowing about a single pattern. A lot of people do just that. Even in that case, though, you might be implementing some patterns without even knowing it. So why would you spend time learning them?

    Design patterns are a toolkit of tried and tested solutions to common problems in software design. Even if you never encounter these problems, knowing patterns is still useful because it teaches you how to solve all sorts of problems using principles of object-oriented design.

    Design patterns define a common language that you and your teammates can use to communicate more efficiently. You can say, “Oh, just use a Singleton for that,” and everyone will understand the idea behind your suggestion. No need to explain what a singleton is if you know the pattern and its name.
    from [refactoring.guru](https://refactoring.guru/design-patterns)

### Exercise

???- "Design Patterns"

    Design a Factory method for the creation of bacteria 

???- "Extra assignment"

    Using refactoring.guru find an design Describe in a design document another pattern that is useful for your project.


## References 
- `[Ivar Jacobson 1992] Object-Oriented Software Engineering, a usecase driven approach, Addison-wesley 1992
-`[Stroustrup B. 1998]` Stroustrup B. What is “Object-oriented Programming”? Software, IEEE. 1988 Jun 1;5:10–20.