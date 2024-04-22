# Project start with analysis and design
So how do we identify the needs of our system

???- "Where do you start?"
        
        - project brief, if you are given a project breif or write one your self the project breif should state the problem you would like to solve and any related ideas and constraints you have on the project. This is done in plain english

!!! info "Finding the needs!"

     Is a process of finding the subjects and verbs of the project brief and formalise them as testable statements, once that is done we do our firast iteration of risk analysis on those sets.

???+ exercise "Needs determination"
    
    We now look at the Course project and start setting upp our first development diagrams and design documents for the course project.

???- info "Hint!" 

    Start by looking at the example design document ![Design Process Document](../../projects/example_project/DPD_unassisted.md) How we design
    ![Requirement document](../../projects/example_project/DPUA_requirementspecification.md)

???- info "Hint!" 

    Analyse the project breif and make 5 short statements about the software
!!! Requirments matrix to Feature list

    Using the Requirements and risk matrix we can design a feature list these can be tracked using issues in Git or in a separate document the feature list describes how to solve a requirment in plain text english and with flowcharts


## Design

!!! Object design

    In object design we try and find the objects that will help us identify the classes of our project ![Geeks for geeks introduction to OOP](https://www.geeksforgeeks.org/oops-object-oriented-design/) and here is a link to a tutorial for python ![Geeks for geeks introduction to OO for python](https://www.geeksforgeeks.org/python-oops-concepts/)

???- What are the main concepts of object design

    Model the realworld through classes
    Facilitate __information hiding__ through Encapsulation
    Facilitate reusability through inherentance
    Interaction through behaviour

???+ Exercise Model the Features of the projects as objects
    
    using the graph feature of mermaid graph TD model objects that will be translated into the classes we will implement

???- info Hint!

    This is a basic representation of what an object diagram for bacterial simulation could look like
    ```mermaid
        graph TD;    
        A(Simulation) -->|initialize| B(world);
        C(bacteria) -->|exits in| B;
        C -->|moves twoards| D(Food Source);
        C--> |consumes| D
        A-->|updates|A
        E(Graphical User Interface)-->|Displays|A
    
        classDef red fill:#f9cccc,stroke:#333,stroke-width:2px;
        classDef orange fill:#ffe6cc,stroke:#333,stroke-width:2px;
        classDef green fill:#ccffcc,stroke:#333,stroke-width:2px;
        classDef blue fill:#00aaff,stroke:#333,stroke-width:2px;
        class A red;
        class B, orange;
        class C,D,G green;
        class E blue
    ```

!!! Class diagrams
    A good way to show your design is through class diagrams which shows the relationships and the class definitions 
    A class is and abstraction of an object where its Data is abstracted as attributes and its behaviour as methods

???+ Excercise

    Taking our feature list and requirments and object modeling now we try and find the classes and  model a class diagram that implements those features.
    ![mermaid class diagrams](http://mermaid.js.org/syntax/classDiagram.html)



     