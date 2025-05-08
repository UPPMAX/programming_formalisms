---
tags:
  - modular programming
  - refactoring
---

#  Refactoring and Modular programming

???- info "Learning outcomes"

    - Understand the concept of code smells and design smells.

    - Grasp the idea of the "zero line" in software design and its relevance.

    - Gain an introductory understanding of modular programming and iterative refactoring.

    - Learn about common interfaces, protocols, and their role in modular programming.

    - Recognize and address tight coupling in code to improve modularity.

    - Appreciate the importance of modularization in collaborative projects, especially for reducing conflicts in version control.

    ```mermaid
        gantt
        title Lesson plan Refactoring, and modularization
        dateFormat X
        axisFormat %s
        Refactoring: refactoring,0, 10,
        Refactoring Exercise: Exercise_1, 10, 15s
        Modularity:Modularity_1,25, 15s
    ```

???- info "Learning outcomes of Refactoring"

    - Learners learns about code smells and design smells


???- info "Learning outcomes of Modular programming"

    - The learners has a introductory understanding to the modular programming paradigm and the concept of iterative refactoring of code.

    - The concepts of common interface and protocols are introduced to the learners

    - The learners are introduced the concept of coupling and how to find tight coupling

    - The learners learn the importance of modularization when collaborating on larger projects by example of the reduced number of conflicts of commits.

    - The learners partitions their design and message passing by refactoring design and implementation according to the modular paradigms for the student project

## Refactoring

???- "What is Refactoring"

    Refactoring is a systematic process of improving code without creating new functionality that can transform a mess into clean code and simple design.
    [refactoring.guru](https://refactoring.guru/refactoring)


### Revisiting class design

The 4 most important relationship classes can have
are association, composition and aggregation

#### Bad structure

    - `PetsIOwn` is a relation DB table not an object as it has
    - no function, which pets an owner has is not a object that exist in the real world - big semantic gap.

```mermaid
classDiagram
    Owner-->PetsIOwn
    Dog*--"1"Head
    Dog*--"1"Body
    Dog*--"0..1"Tail
    PetsIOwn o--"0..*"Dog
    PetsIOwn o--"0..*"Cat
    PetsIOwn o--"0..*"GoldFish
    Animal <|--Dog
    Animal <|--Cat
    Animal <|--GoldFish
```

Refactored design, the Refactoring is done already in design space as a iteration of your design

```mermaid
classDiagram
    Owner --> Animal: cares for
    Owner o-- Animal: owns
    Dog *-- "1"Head
    Dog *-- "1"Body
    Dog *-- "0..1"Tail
    Animal <|-- Dog
    Animal <|-- Cat
    Animal <|-- GoldFish
```

What was this ann effect of a phenomenon known as Design Smell.

Code smell and design smell are two very good reason to do refactoring

- What? How can code "smell"??
- Well it doesn't have a nose... but it definitely can stink!

From [https://refactoring.guru/](https://refactoring.guru/).

Some examples of code smell

- Bloaters
- Object-Orientation Abusers
- Change Preventers
- Dispensables
- Couplers

## Exercises

???+ "Read and discuss"

    - Read [https://refactoring.guru/refactoring](https://refactoring.guru/refactoring)
       and discuss how this can be implemented also in the design phase (10 min)

    - Consider is your class diagram reflecting your code

???- "Refactor your design document"
    Chose an Issue that you are responsible for!

    Try to consider what in your code are or will require classes to know about each other (Association).
    Try to consider which have a has-a relationship (composition if destroying an instance of the first class destroys the composing part)

???- "Refactor your code"
    Chose an Issue that you are responsible for go through the code and refactor the code.

## Code Coupling
???- "What is Coupling in code"

Lets talk about Tightly vs loosely coupled code.

???- "What is tightly coupled code?"
     Tightly coupled code is when a group of classes are highly dependent on one another. This isn't necessarily a bad thing, but it can make the code harder to test because of the dependent classes are so intertwined. They can't be used independently or substituted easily.

    In tightly coupled systems, each component or class in the system knows details about many other components or classes. They are interdependent, meaning that if one component changes, it can have a ripple effect on all other components that depend on it. This can make the system as a whole more difficult to maintain, because changes in one place can require changes in many other places.

???- "Why is loose coupling to prefer"

    - Easier Maintenance: Because each component is independent, changes in one component don't require changes in other components. This makes the system as a whole easier to maintain.

    - Improved Testability: Components can be tested independently, without needing to set up and manage other components. This makes it easier to write unit tests, and makes the tests more reliable, because they're less likely to be affected by changes in other parts of the system.

    - Greater Flexibility and Reusability: Because components don't depend on each other, they can be more easily reused in different parts of the system, or even in different systems. They can also be replaced or upgraded without affecting other components.

!!! Hint "Circular dependency"

## Modular Programming

???- "What is Modular Programming"

    Modular programming as a term introduced by Larry Constantine et.al at the Symposium on Modular Programming, organized at the Information and Systems Institute in July 1968.

    Modular programming is a software design technique that emphasizes separating the functionality of a program into independent, interchangeable modules, such that each contains everything necessary to execute only one aspect of the desired functionality.

!!! info "lets read about modular programming"(10 min)
    This is a wikipeda article on [modular programming](https://en.wikipedia.org/wiki/Modular_programming)

??? question "Lets Discuss"

From this these for principles are generally considered a requirement for modularity

- no communication in with no communication out
- no communication in with some communication out
- some communication in with some communication out
- some communication in with no communication out

!!! info "What does it mean in practice"

- That what you must clearly define for any function or object is a Common Interface that is static
- That there are no side effect from your implementation
- That you do not do message passing by reference.
- That you program blackbox methods and classes.

???- "Why is Modular Programming something to strive for"

    - Reusability
    - Working with others (encapsulation of work and function)


!!! info "another take on modular programming (about 30 min)"
    A good [lesson](https://www.youtube.com/watch?v=MYDAAhB1QIo) on Modularity by Huw Collingbourne


