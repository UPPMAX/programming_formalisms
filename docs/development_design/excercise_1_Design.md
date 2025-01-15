# Discuss Risks and Requirements

!!! info "The brief"

    We want to see (an approximation and cleanly looking)
    hourly daily temperature data from Uppsala,
    using a long-lasting dataset that recorded the temparature
    a couple of times per day.

    It needs to be approximate, as there are only few recordings
    per day.
    It needs to be cleanly looking as [Björn takes over here!]
    We want to have the average curve be displayed to reduce noise of visualization.

???- "for the teachers"
    This project is based of the works of Bergström and Moberg[Bergström and Moberg 2002](https://www.smhi.se/polopoly_fs/1.175744!/Bergstr%C3%B6m_Moberg_Uppsala.pdf), using the [Uppsala "dygsvärdes" temperature data](https://www.smhi.se/data/meteorologi/temperatur/uppsalas-temperaturserie-1.2855) [link](https://www.smhi.se/polopoly_fs/1.2866!/uppsala_tm_1722-2022.zip) to the data set. The outline of the project
        - Needs analysis and risk assesment
        - Using Python and matplotlib plot the data
        - Using Scipy and numpy alternativly scratch wrighting the functions depending on the needs in Algorithms and TDD sections.
        - Use modular design to be able to swap out the prediction functions.
        - use of objecto orinet design and development


???+ question Discuss Risks and Requirements (A short Needs Analysis) for a program that visualize and does simple curve fitting for temperature data from uppsala

!!!- hint "Needs"
    - Think about what the user needs from your application
    - Think about how the user interacts


!!!- hint "Risks"
    Risk is defined in ISO Guide 73:2009 as “The effect of uncertainty on objectives”. This has an attached Note 1,
    “An effect is a deviation from the expected — positive and/or negative”. A positive risk is commonly known as an opportunity,
    and can be addressed within the Risk Management process.

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


???- question "One answer"

    Start with a look at the user needs. and Risk involved in the project

    Summary of the brief:
    The Brief specify that the users want to look at daily temperature data
    from uppsala from when it was started to be recorded to current day.
    They want to have the average curve be displayed to reduce noise of visualization.

    !**Answer**
        First! we ask ourself what is the scope and magnitude of this project
        - This is a small project expected for the team to finish in about one week
        - The project will be driven and implemented by a small team of distributed developers.
        - the aim of the project is to teach the team the SDLC process

        **conclusion**- The project needs and goes through more formalized steps than a regular project of similar size.
        The projects needs a minimal risk assessment and and needs determination

        Second! Determination of business and legal space.
            The project operates inside an open non-profit open source scope, The Data Protection Impact assessment is not needed for this data set since it is open and readily available , it non sensitive non personal data with minimal economic impact.
            This project is conducted inside a educational setting in Sweden and therefor the legal space is simple.
        With that out of the way(Usually not conducted for small project but included here for completeness)

        Third! first iteration of Needs gathering

        forth! Risks
        Remember to think of both primary and secondary/derived risks
        We start looking at the Risk involved in the software project.
            -Over engineering - In this kind of small project the risk of a project failing is increased with the risk of making the solutions significantly more complicated than they need to be
            -risk of

        Fifth! second iteration of needs analyzis



[References]
ISO 12207:2018
ISO 73:2009
ISO 15271:1998

[Aditional literature suggestions]
    - Effective Methods for Software Testing: Includes Complete Guidelines, Checklists, and Templates 3rd Edition