# Modular programming
## "Learning goals"

Todays Learning Goals are:

???- "Learning objectives of 'Modular programming'"

    -The student has a introductory understanding to the modular programming paradigm and the concept of iterative refactoring of code. 
    -The concepts of common interface and protocols are introduced
    -The students are introduced the concept of coupling and how to find tight coupling
    -Learns the importance of modularization when collaborating on larger projects by example of the reduced number of conflicts of commits.
    -The students partitions their design and message passing by refactoring design and implementation according to the modular paradigms for the student project

???- "Learning objectives of 'Design Patterns'"

    -The students know of the "zero line" code and how it relates to software design "Zero line" Design
    - The students should be able to implement into their design the 
    "Factory pattern"
    -The students can describe the general parts of a design pattern and why we use them.


##Prior Knowledge:
???- "What is Modular Programming"

    Modular programming as a term introduced by Larry Constantine et.al at the Symposium on Modular Programming, organized at the Information and Systems Institute in July 1968.
    
    Modular programming is a software design technique that emphasizes separating the functionality of a program into independent, interchangeable modules, such that each contains everything necessary to execute only one aspect of the desired functionality. 
???- "Why is Modular Programming something to strive for"

    -Reusability 
    -Working with others (encapsulation of work and function)
    
???- "What is a Design Pattern"

???- "Why do we use Design Patterns"

???- "What is Refactoring"


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


???- Read https://refactoring.guru/refactoring and discuss how this can be implemented also in the design phase.(10 min)

    - Consider is your class diagram reflecting your code.

## Exercise
 Refactor your design document 
