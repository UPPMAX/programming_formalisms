# Modular programming

???- info "Learning objectives"
    - Understand the concept of code smells and design smells.
    - Grasp the idea of the "zero line" in software design and its relevance.
    - Gain an introductory understanding of modular programming and iterative refactoring.
    - Learn about common interfaces, protocols, and their role in modular programming.
    - Recognize and address tight coupling in code to improve modularity.
    - Appreciate the importance of modularization in collaborative projects, especially for reducing conflicts in version control.

    ```mermaid
        gantt
        title Lesson plan Refactoring, Design Patterns and Modularization
        dateFormat X
        axisFormat %s
        Godmorning and Prior knowledge : intro, 0, 10
        Revist class Diagrams: theory_1, 10, 10s
        Refactoring: refactoring, 20, 10s
        Excersie Refactoring: Excersie_1, 30,30s
        Break:break_1,60,15s
        Modularity:Modularity_1,75, 10s
        Excersie: Modules, 85,25s
        Design Patterns:Design_Patterns, 110, 20s
        Break:break_1,130,15s
        Excersie: Excersie_2, 145,40s
    ```

???- info "Learning objectives of Refactoring"

    - Learners learns about code smells and design smells


???- info "Learning objectives of Modular programming"

    - The learners has a introductory understanding to the modular programming paradigm and the concept of iterative refactoring of code.
    - The concepts of common interface and protocols are introduced to the learners
    - The learners are introduced the concept of coupling and how to find tight coupling
    - The learners learn the importance of modularization when collaborating on larger projects by example of the reduced number of conflicts of commits.
    - The learners partitions their design and message passing by refactoring design and implementation according to the modular paradigms for the student project

## Prior Knowledge

???- "What is Modular Programming"

    Modular programming as a term introduced by Larry Constantine et.al at the Symposium on Modular Programming, organized at the Information and Systems Institute in July 1968.

    Modular programming is a software design technique that emphasizes separating the functionality of a program into independent, interchangeable modules, such that each contains everything necessary to execute only one aspect of the desired functionality.


???- "Why is Modular Programming something to strive for"

    - Reusability
    - Working with others (encapsulation of work and function)



???- "What is Refactoring"

    Refactoring is a systematic process of improving code without creating new functionality that can transform a mess into clean code and simple design.
    [refactoring.guru](https://refactoring.guru/refactoring)


## Theory

Revisiting class design

The 4 most important relationship classes can have
are association, composition and aggregation

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
    Animal <|--Goldfish
```

Further reading:
[Aggregation vs composition and Generalization vs Specialization](https://www.visual-paradigm.com/guide/uml-unified-modeling-language/uml-aggregation-vs-composition/)


???+ "Read and discuss"

    - Read [https://refactoring.guru/refactoring](https://refactoring.guru/refactoring)
       and discuss how this can be implemented also in the design phase (10 min)

    - Consider is your class diagram reflecting your code

## Exercises

???- "Refactor your design document"

    Try to consider what in your code are or will require classes to know about each other (Association).
    Try to consider which have a has-a relationship (composition if destroying an instance of the first class destroys the composing part) or if the part exist independently of the aggregate(aggregation)

???- "Modularization"

     Order your design in logical consistent modules that separates behavior that belongs together via interfaces.
