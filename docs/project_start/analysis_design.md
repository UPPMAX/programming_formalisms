# Project start with analysis

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

???- info "Hint!"

    Start by looking at the example design document
    at [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/design/DPD_unassisted.md).
    how to design design
    [Requirement document](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/design/DPUA_requirementspecification.md)

???- info "Hint!"

    Analyze the project brief and make 5 short statements about the software

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

