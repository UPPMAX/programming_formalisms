---
tags:
  - OOP
  - OOD
  - object-oriented
  - object oriented
  - programming
  - development
---

# Object Oriented development

???- info "Learning outcomes"

    - Understand the benefits of object-oriented development, including smaller semantic gaps for improved understanding and easier modification of models.
    - Learn the definition and characteristics of an object, including its ability to save state and perform operations.
    - Comprehend the principles of object-oriented development, such as information hiding, encapsulation, and message passing.
    - Understand the definition and structure of a class as a collection of objects with common traits and behaviors.
    - Recognize the importance of relationships between classes, including association, composition, and aggregation, in class diagrams.
    - Explore the concept of design patterns as blueprints for solving common software design problems.
    - Develop a practical understanding of the Factory Method design pattern


"People regard their environment in terms of objects"
`[Jacobson 1992]`

This leads to a smaller semantic gap which
gives two major benefits

- **Understanding**
The semantic gap(The distance form input to understanding) between reality and model is smaller making the risk of misunderstanding less.

- **Modification**
    The model tends to be local resulting from a individual item. Each of these are represented by a single object.


## Objects

!!! info "What is an object?"

    An object is an entity that is defined by being able to save state(Information) and a number of operations(Behavior).

!!! info "Object Orientation is a paradigm, not a language feature"

    - Mariam-webster defines a Paradigm as:
      philosophical and theoretical framework of a scientific school or discipline within which theories, laws, and generalizations and the experiments performed in support of them are formulated

    - Stanford Encyclopedia of Philosophy cites the work of Thomas Kuhn The Structure of Scientific Revolutions in where a work of Paradigm is not only the key theories and laws, but also—and this is what makes them paradigms—the applications of those theories in the solution of important problems

!!! info "Principles of object orientated development"

    1: **Information Hiding**
        No unit outside of the object shall know the internal workings of the object;
        Or as Jacobson states "they hide their internal structure from their surroundings"`[Ivar Jacobson 1992]`

    2: **The concept of Encapsulation**
        The behavior and information are encapsulated in the object
        `[Ivar Jacobson 1992]`


???- question "What is a Class"

    >A class is a set of objects that share a common structure, common behavior, and common semantics.
    `[Booch 2007]`



Composition implies a relationship where the child cannot exist independent of the parent. Example: House (parent) and Room (child). Rooms don't exist separate to a House.


```mermaid
classDiagram
    Owner --> Animal: cares for
    Dog*--"1"Head
    Dog*--"1"Body
    Dog*--"0..1"Tail
    Owner o--"0..*"Animal
    Animal <|-- Dog
 ``

Further reading:
[Aggregation vs composition and Generalization vs Specialization](https://www.visual-paradigm.com/guide/uml-unified-modeling-language/uml-aggregation-vs-composition/)

???- question "Is a programming language object oriented?"

    Object-oriented programming is a technique for programming – a paradigm
    for writing 'good' programs for a set of problems.
    If the term 'object-oriented programming language' means anything it must
    mean 'a programming language that provides mechanisms that support
    the object-oriented style of programming well'.
    `[Stroustrup B. 1998]`

!!! info "Techniques for Object oriented programming"

    Decide which classes you want;
    provide a full set of operations for each class;
    make commonality explicit by using inheritance.
    `[Stroustrup B. 1988]`

!!! hint "Why do we Break the rule?"

    In this course we do not go into the concept of
    inheritance in implementation as this is makes for a
    more complicated structure. We only concern our selfs
    with the "has a" relation ship rather than "is a" relation ship.
    we work with the composite and the aggregate relationships


### Exercise

???- "Objects"
    Write a object description for Uppsala Weather station then translate this into a class make a markdown document in your learners folder

## Design patters(self study)

???- info "Learning outcomes of Design Patterns"

    - The learners know of the "zero line" code and how it relates to software design "Zero line" Design
    - The learners can describe the general parts of a design pattern and why we use them.
    - The Learners should be able to understand the "Decorator pattern" and what problem it solves

The zero line code is the most optimal code there for the zero line design must be the most optimal?

The zero line code/design simply refers do not make something that some one else already has coded unless warranted by either security concerns (the source is not trusted such as untested code )or for learning.

Zero line Design is optimal in the sense that if some one already figure out a tried a tested method to do something don't do it yourself. Zero line design means using a tried and tested design.

???- question  "What is a Design Pattern?"

    Design patterns are typical solutions to common problems
    in software design. Each pattern is like a blueprint
    that you can customize to solve a particular
    design problem in your code.
    from [refactoring.guru](https://refactoring.guru/design-patterns)

    Gamma et al. starts describing a design pattern with a quote from Christopher alexander "Each pattern describes a problem which occurs over and over again in our environment,and then describes the core of the solution to that problem in such away that you can use this solution a million time over , without doing it the same way twice" which is a qoute about buildings and towns, but they go on to claim that this is applicable in object design as well`[Gamma et al., 1995]`

???- question  "Why do we use Design Patterns?"

    The truth is that you might manage to work as a programmer for many years without knowing about a single pattern. A lot of people do just that. Even in that case, though, you might be implementing some patterns without even knowing it. So why would you spend time learning them?

    Design patterns are a toolkit of tried and tested solutions to common problems in software design. Even if you never encounter these problems, knowing patterns is still useful because it teaches you how to solve all sorts of problems using principles of object-oriented design.

    Design patterns define a common language that you and your teammates can use to communicate more efficiently. You can say, “Oh, just use a Singleton for that,” and everyone will understand the idea behind your suggestion. No need to explain what a singleton is if you know the pattern and its name.
    from [refactoring.guru](https://refactoring.guru/design-patterns)

Exercise

???+ "Design Patterns"

    Read the [Decorator](https://refactoring.guru/design-patterns/decorator) pattern is there a function or Class that would fit this particular problem?

!!! Hint "Something that must be done differently but belong together"
    when looking for pattern it is always good to go through what you have design or code so far and check if something just changes how a thing looks. Or when you need to access multiple data formats in one way


!!!- "Answer"

    The temperature converter in utils is an excellent case where generalization by a decorator that lets you add as many converters to the system as you like

???- "Extra assignment"

    Using refactoring.guru find an design Describe in a design document a pattern that is useful for the weather project

<!--![Gamma et al., 1995]() consider adding images of each book used in the refrence -->

## References

- `[Ivar Jacobson 1992]` Ivar Jacobson et al., Object-Oriented Software Engineering, a usecase driven approach, Addison-wesley 1992.
- `[Booch 2007]` Grady Booch et al.,Object-oriented analysis and design with applications -3rd ed,Addison-wesley 2007.
- `[Stroustrup B. 1998]` Stroustrup B. What is “Object-oriented Programming”? Software, IEEE. 1988 Jun 1;5:10–20.
-`[Gamma et al., 1995]` Gamma, Erich, et al.
  "Elements of reusable object-oriented software." Design Patterns (1995).

