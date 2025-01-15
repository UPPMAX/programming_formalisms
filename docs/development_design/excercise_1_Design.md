# Discuss Risks and Requirements

!!! info "The brief"
    We want to look at daily temperature data from uppsala from when it was started to be recorded to current day.  They want to have the average curve be displayed to reduce noise of visualization.
???- "for the teachers"
    This project is based of the works of Bergström and Moberg[Bergström and Moberg 2002](https://www.smhi.se/polopoly_fs/1.175744!/Bergstr%C3%B6m_Moberg_Uppsala.pdf), using the [Uppsala "dygsvärdes" temperature data](https://www.smhi.se/data/meteorologi/temperatur/uppsalas-temperaturserie-1.2855) [link](https://www.smhi.se/polopoly_fs/1.2866!/uppsala_tm_1722-2022.zip) to the data set. The outline of the project
        - Needs analysis and risk assesment
        - Using Python and matplotlib plot the data
        - Using Scipy and numpy alternativly scratch wrighting the functions depending on the needs in Algorithms and TDD sections.
        - Use modular design to be able to swap out the prediction functions.
        - use of objecto orinet design and development


Discuss Risks and Requirements (A short Needs Analysis) for a program that visualize and does simple curve fitting for temperature data from uppsala

- Think about what the user needs from your application
- Think about how the user interacts
- Think about what the risks are in terms of access, legality
- Think about risks of data loss etc.
- Think about requirements on users system

A short checklist of categories

- Uncontrolled System Access
- Ineffective Security Practices
- Data loss
- Program Errors
    - such as yielding the wrong result
    - Causing unintended system behavior

another good source

- Effective Methods for Software Testing: Includes Complete Guidelines, Checklists, and Templates 3rd Edition

???- question "One answer"

    First we look at the user needs.
    The Brief specify that the users want to look at daily temperature data
    from uppsala from when it was started to be recorded to current day.
    They want to have the average curve be displayed to reduce noise of visualization.
    !**Answer** First! we ask ourself what is the scope and magnitude of this project
        - This is a small project excpected for the team to finish in about one week
        - The project will be driven and implemented by a small team of distrubuted developers.
        - the aim of the project is to teach the team the SDLC process

        conclusion- The project needs and goes through more formailsed steps than a regular project of similar size.
        The projects needs a minimal risk assesment and and needs determination
        Second ! Determination of buissness and legal space.
            The project operates inside an open non-profit open source scope, The Data Protection Impact assesment is not needed for this data set since it is open and readialy availible , it non sensitive non personal data with minimal economic impact.
