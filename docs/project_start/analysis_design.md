---
tags:
  - project
  - analysis
---

# First Phase: Analysis

As you have heard the first phase in any software development is Analysis An this is the phase we are focusing on in this lecture. The goal of the analysis phase is to figure out
what the program should do and  what needs the program must meet. It like all other phases of modern software development is done in an iterative loop or spiral.
In this early stage a focus is on Requirements sometimes also called needs determination and risk analysis.

## Requirements

!!! info "Why do we need to specify requirements?"

    According to Merlin Dorfman (article reproduced in chapter 1 requirements
    engineering) the results from the software crisis in the 1960s gave rise
    to the following problem *"In nearly every software project which fails
    to meet performance and cost goals,requirements inadequacies play a major and expensive role in project failure"*

This is very much still the effect today in the production of scientific software (My personal opinion)

Richard Harwell et. al states
*"Each contract specialist, lawyer, engineer,
systems engineer, manager, or anyone else involved in
the transition Division into product, bas his or her own
definition of a requirement, With the rare exception, all
are applicable and meaningful"*

-- "What is a Requirement?" by R. Harwell et al. from Proc. 3,dAnn. lnt' I Symp. Nat'I Council Systems Eng.,
1993, pp. 17-24.

What guidance can we then gleen in what a Requirement is the above mentioned paper asses that
*"if it mandates that something must be accomplished, transformed, produced, or provided, it is a requirement"*

According to ISO/IEC/IEEE 29148:2018 (Systems and software engineering — Life cycle processes — Requirements engineering)
**Defining requirements begins with stakeholder needs (or goals, or objectives) that are refined and
evolve before arriving as valid stakeholder requirements.**

!!!- info "What is a well formed Requirement" (ISO/IEC/IEEE 29148:2018)?"

    A well-formed specified requirement contains one or more of the following:
        — it shall be met or possessed by a system to solve a problem, achieve an objective or address a stakeholder concern;
        — it is qualified by measurable conditions;
        — it is bounded by constraints;
        — it defines the performance of the system when used by a specific stakeholder or the corresponding capability of the system but not a capability of the user, operator or other stakeholder; and
        — it can be verified (e.g., the realization of the requirement in the system can be demonstrated).

!!! info "Finding the needs!"

    Is a process of finding the subjects and verbs of the project brief and formalize them as testable statements, once that is done we do our first iteration of risk analysis on those sets.

???- "Where do you start?"

    - project brief, if you are given a project brief or write one your self the project brief should state the problem you would like to solve and any related ideas and constraints you have on the project. This is done in plain english
    - Problem statement, the problem statement is a subset of the project brief as it only describes the problem you wish to solve.

!!! hint "How does a typical requirements document look like?"

    A typical requirements document can be made in a spreadsheet program of your choice

!!! info "Commonly used categories of requirements"

    - Requirement ID
    - Requirement Description
    - Risk type
    - Risk
    - Risk probability
    - Risk severity
    - Risk value(Probaility x Severity)
    - Acceptance Criteria
    - Test Cases

???+ exercise "Needs determination"

    We now look at the Course project and start setting upp our first
    development diagrams and design documents for the course project.

???- info "Example design process document"

    Here is an example design process document:

    > When gathering requirements for the program
    > the first iteration is based on analyzing
    > the project brief for subjects and actions,
    > i.e nouns and verbs that will describe the possible
    > demands the users have on the system,
    > after the first pass pay attention to adjective and adverbials
    > that may change a need or requirement.
    >
    > After this make a Table of requirements,
    > from this a system use case design can begin.
    > After the use cases have been determined,
    > go through each use case
    > and see how an object or action can solve this use case.
    >
    > Design a object/class diagram to reflect this possibly
    > through a collaborations diagram.


???- info "Example requirements specification"

    Here is an example requirements specification:

    Requirement ID | Requirement Description | Acceptance Criteria | Test Cases
    ---------------|-------------------------|---------------------|------------
    R1             | Visual Display          | The program must display a field with particles and a visual cue to runtime settings | - Verify that the program opens a graphical window or interface for displaying particles.
    R2             | Particle Initialization | Particles must be initialized with positions and speeds and constants relevant to the simulation such as gravity or energy potentials and parameters must be initialized | - Confirm that each particle has a unique position and speed. and that each parameter is set
    R3             | Particle Interaction    | Particles must interact with each other with at least pair wise interactions | - Implement a chosen interaction (e.g., gravitational attraction, Lennard-Jones potential, or direction alignment). - Verify that particles respond to each other's presence.
    R4             | Boundary Condition      | Choose a boundary condition for the field  this includes how to handle interactions across borders| - Implement chosen boundary conditions (e.g., bounce, wrap, or elimination). - Confirm that particles behave according to the chosen boundary conditions.
    R5             | Simulation Step         | The simulation should progress in discrete steps | - Implement a mechanism to advance the simulation step by step
    R6             | Real-time Visualization | Draw each simulation step with a suitable frame rate update | - Ensure that the simulation displays each step visually as it progresses.
    R7             | Maximum Particle Limit  | The simulation should handle a maximum number of particles set in the runtime settings| - Test the simulation with varying numbers of particles up to the maximum limit and verify that it remains stable.
    R8             | Acceptable Framerate    | The simulation should maintain an acceptable framerate even at maximum number of particles| - Measure and verify that the framerate remains above a defined threshold with the maximum number of particles.
    R9             | Stop Simulation         | Ability to stop the simulation through interruption of the current main loop  | - Implement a user interface or mechanism to stop the simulation.  and check that the simulation ends when such mechanisms are invoked
    R10            | Restart simulation      | A simulation should be able to restart without restarting the interface| Test that the implementation of the restart function can activate after the simulation has ended
    R11            | Test-Driven Development | Develop the project using TDD | - Write test cases before implementing each feature or functionality. - Ensure that the tests pass after implementing the code


## Risk analysis

Risk analysis is central in some systems like RDD(Risk Driven Development),
FDA(FDA-1997-D-0029) splits into two types Business risks and Technical risk.
Where Business risk relates to direct requirements while technical risks
are from derived requirements.
One type of risk assessment is the FMEA Failure modes and effects analysis
which calculate the risk in Probability of occurrence x severity of risk.

!!! hint "How big should the risk analysis matrix be?"

    It is common is to divide it in 5 severity categories and 5 probability
    levels then establishing a table as below to asses which needs are the
    most important to address.

<table>
 <tr>
    <th>Probability/Severity</th>
    <th>S1</th>
    <th>S2</th>
    <th>S3</th>
    <th>S4</th>
    <th>S5</th>
  </tr>
  <tr>
    <td>P5</td>
    <td style="background-color: DARKGOLDENROD">
      <p align=center>5</p>Supplementary issue
    </td>
    <td style="background-color: ORANGE">
      <p align=center>10</p>Issue
    </td>
    <td style="background-color: RED">
      <p align=center>15</p>Unacceptable
    </td>
    <td style="background-color: RED">
      <p align=center>20</p>Unacceptable
    </td>
    <td style="background-color: RED">
      <p align=center>25</p>Unacceptable
    </td>

  </tr>
  <tr>
    <td>P4</td>
    <td style="background-color: GREEN">
     <p align=center>4</p>Acceptable
    </td>
    <td style="background-color: DARKGOLDENROD">
      <p align=center>8</p>Supplementary issue
    </td>
    <td style="background-color: ORANGE">
      <p align=center>12</p>Issue
    </td>
    <td style="background-color: RED">
    <p align=center>16</p>Unacceptable
    </td>
    <td style="background-color: RED">
    <p align=center>20</p>Unacceptable
    </td>

  </tr>
  <tr>
    <td>P3</td>
   <td style="background-color: GREEN">
   <p align=center>3</p>Acceptable
   </td>
    <td style="background-color: DARKGOLDENROD">
    <p align=center>6</p>Supplementary issue
    </td>
    <td style="background-color: DARKGOLDENROD">
      <p align=center>9</p>Supplementary issue
    </td>
    <td style="background-color: ORANGE">
      <p align=center>12</p>Issue
    </td>
    <td style="background-color: RED">
    <p align=center>15</p>Unacceptable
    </td>
  </tr>
  <tr>
    <td>P2</td>
    <td style="background-color: GREEN">
    <p align=center>2</p>Acceptable
    </td>
    <td style="background-color: GREEN">
    <p align=center>4</p>Acceptable
    </td>
    <td style="background-color: DARKGOLDENROD">
    <p align=center>6</p>Supplementary issue
    </td>
    <td style="background-color: DARKGOLDENROD">
    <p align=center>8</p>Supplementary issue
    </td>
    <td style="background-color: ORANGE">
    <p align=center>10</p>issue
    </td>
  </tr>
  <tr>
    <td>P1</td>
    <td style="background-color: GREEN">
    <p align=center>1</p>Acceptable
    </td>
    <td style="background-color: GREEN">
    <p align=center>2</p>Acceptable
    </td>
    <td style="background-color: GREEN">
    <p align=center>3</p>Acceptable
    </td>
    <td style="background-color: GREEN">
    <p align=center>4</p>Acceptable
    </td>
    <td style="background-color: DARKGOLDENROD">
    <p align=center>5</p>Supplementary issue
    </td>
  </tr>
</table>

!!! hint "Where to focus?"

    Focus on the risks  that are issues or unacceptable first.
    Then develop towards risks that are acceptable

???- info "Requirements matrix to Feature list"

    Using the Requirements and risk matrix we can design a feature list these
    can be tracked using issues or project tab in Git or in a separate
    document the feature list describes how to solve a requirement in plain
    text english and with flowcharts

