# Discuss Risks and Requirements

## exercise 1

Given the below project brief we are to create a rudimentary requirement specification and risk analysis

!!! info "The brief"

    Do some analysis on data from an Uppsala weather station.

???- "for the teachers"

    **Needs update**

    This project is based of the works of Bergström and Moberg
    [Bergström and Moberg 2002](https://www.smhi.se/download/18.6ae791dc18fc9e7539e1121c/1717658901728/Bergstr%C3%B6m_Moberg_Uppsala.pdf),
    using the [Uppsala "dygnsvärdes" temperature data](https://www.smhi.se/data/temperatur-och-vind/temperatur/uppsalas-temperaturserie)
    ([link to the data set](https://www.smhi.se/download/18.53cdce23194f389da053a4e/1740398333056/uppsala_tm_1722-2022.zip)).

    The students will use some other data for Uppsala that have the same format for other weather stations in Sweden. Thus, the analysis can be extended to other sites.

    The outline of the project ...

    - needs analysis and risk assessment
    - uses Python and matplotlib plot the data
    - uses `scipy` and `numpy` alternatively writing the functions from
      scratch, depending on the needs in Algorithms and TDD sections.
    - uses modular design to be able to swap out the prediction functions.
    - uses object oriented design and development

!!! info "Details"

    - You have a temperature data file (Uppsala)
    - Build a program that performs and presents some analysis
        - graph of running means
        - other statistics
            - daily maximums/min
            - yearly maximums/min
        - meta data extraction
            - name of station
            - dates , times and varible from which column
        - presentation
            - header of graphs (name)
            - axis labels
    - When the program is run, user should be able to decide which analysis to perform, for instance with arguments from the commandline.
    - Make sure to that it can load other data.

    ???- question "How?"

        - Modular design
        - Start with Uppsala file
        - If time allows make program more general:
            - make possible to read other files (defined by)
            - there is a document that connects filenames to stations
            - argument can be station name and the program reads the right file

## Exercise

???+ question "Exercise"

    Discuss risks and requirements (A short Needs Analysis) for the program above.

!!!- hint "Hints for needs"

    - Think about what the user needs from your application
    - Think about how the user interacts

!!!- hint "Hints for risks"

    - Risk is defined in ISO Guide 73:2009 as 'The effect of uncertainty on objectives'.
        - This has an attached Note 1: 'An effect is a deviation from the expected — positive and/or negative'.
        - A positive risk is commonly known as an opportunity, and can be addressed within the Risk Management process.

    Investigate

    - what the risks are in terms of access, legality
    - risks of data loss etc.
    - requirements on users' system

    A short checklist of categories:

    - Uncontrolled System Access
    - Ineffective Security Practices
    - Data loss
    - Program Errors
        - such as yielding the wrong result
        - causing unintended system behavior

## Answers

???- question "One possible answer"

    Start with a look at the user needs and risk involved in the project

    **Summary of the brief:**

    - Do some analysis on data from an Uppsala weather station and possibly other weather stations.

    **Answer**

    **First!** We ask ourself what is the scope and magnitude of this project

    - This is a small project expected for the team to finish in about one week
    - The project will be driven and implemented by a small team of distributed developers.
    - The aim of the project is to teach the team the SDLC process

    - **Conclusion:**
        - The project needs and goes through more formalized steps than a regular project of similar size.
        - The projects needs a minimal risk assessment and needs determination.

    **Second!** Determination of business and legal space.

    - The project operates inside an open non-profit open source scope.
    - The Data Protection Impact assessment is not needed for this data set since it is open and readily available, it is non sensitive non personal data with minimal economic impact.
    - This project is conducted inside a educational setting in Sweden and therefore the legal space is simple.
    - With that out of the way (Usually not conducted for small project but included here for completeness).

    **Third!** First iteration of Needs gathering

    - Start by assessing the brief and determined legal and business space. These should be taken into consideration when evalutating the needs.
    - The SRS (Software Requirments Specification) can be structured as seen below.
    - An SRS is considered complete according to the following statement from the IEEE recomended practises `[Board & ICSSES, 1998]`
    - An SRS is correct if, and only if, every requirement stated therein is one that the software shall meet.


    Requirement ID | Requirement Description | Acceptance Criteria | Test Cases
    ---------------|-------------------------|---------------------|-----------------------
    R1| Open source development|the development process follows the principles of open-source development| In each step evaluate the accessability and openness
    R2| Program that performs and presents some analysis related to temperature|-| -
    R3| The software should be able to read and parse the data in the SMHI station data csv files|-| -
    R4 |Load Dataset|Load the Uppsala temperature dataset from the provided zip file.| The dataset is successfully loaded into memory and is in the correct format (CSV or similar).
    R5| Preprocess Data Process the dataset to handle missing data, and approximate hourly or daily temperatures.| Data is processed to fill missing records and approximate hourly temperature values.| -
    R6| Temperature Data Visualization| Use Matplotlib to create a graph displaying the recorded temperature data over time. |A graph is created where the temperature is on the y-axis and time (dates) on the x-axis.
    R7| Calculate Average Temperature Curve |Compute the average temperature curve to smooth the data and reduce noise. Plot this curve on the same graph as the original data.| The average temperature curve is calculated and displayed on the graph.
    R8| Modular Design for Prediction Functions| The system should allow different prediction functions (such as interpolation or trendline fitting) to be swapped out modularly.|Code is written in a way that allows easy swapping of prediction algorithms.
    R9| Use of SciPy and NumPy| Utilize SciPy and NumPy for numerical calculations, with some algorithms written from scratch when necessary.| Appropriate use of SciPy/NumPy, or custom-written functions depending on the task.
    R10| Object-Oriented Design| Implement the system using object-oriented principles. Different system components should be encapsulated in classes.| The system follows an object-oriented structure, with clear separation of concerns (e.g., a class for data processing, one for plotting, etc.).
    R11| Risk Assessment and Error Handling|Conduct a risk assessment to identify potential failure points (e.g., corrupted data, missing files) and implement error handling.|The system gracefully handles errors, such as missing data, invalid file formats, or incorrect processing.
    R12|Performance Optimization |Ensure the system performs efficiently, especially when processing large datasets. |The system processes and visualizes the data within acceptable performance limits.
    R13| Clear Documentation of functionality |Provide simple documentation or user interface elements for users to interact with the data and view the visualizations.| Documentation is provided that explains how to run the system and interact with the visualization.
    R14|The software shall be developed in python , derived requirment from R9 |Use of python as developement language | The programm uses .py files to implement its function
    R15| Scalability | The system must be able to handle a range of dataset sizes, from small subsets to the full dataset.| The system works seamlessly with both small and large datasets.
    R16|User Interface (UI) |Provide a simple and intuitive user interface for visualizing the temperature data and average curve.| The UI should allow users to interact with the graph and adjust visualization options.
    R17|Code Quality and Maintainability|The code should be modular, well-commented, and follow best practices for maintainability.| Code is structured, commented, and adheres to object-oriented principles.
    R18| Documentation and Reporting Provide clear documentation for developers, including setup instructions, code comments, and user manuals.| The documentation is complete and easy to follow, explaining how to use and modify the system.| -

    **Fourth!** Risks

    - Remember to think of both primary and secondary/derived risks
    - We start looking at the Risk involved in the software project.
        - Over engineering
        - In this kind of small project the risk of a project failing is increased with the risk of making the solutions significantly more complicated than they need to be
        - risk of misread data

    **Fifth!** Second iteration of needs analysis

    - Now that we have established the risks we can go over our original table of requirements and revise them based on the risk evaluation.

## References

- `[Board & ICSSES, 1998]` Board, I. S. S., and ICSSES Committee.
  "IEEE recommended practice for software requirements specifications."
  Institute of Electrical and Electronics Engineers. 1998.
  [here](https://ieeexplore.ieee.org/document/720574)
- `ISO 12207:2018`
- `ISO 73:2009`
- `ISO 15271:1998`
- Effective Methods for Software Testing: Includes Complete Guidelines,
  Checklists, and Templates 3rd Edition

