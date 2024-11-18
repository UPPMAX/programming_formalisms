# Lesson plan Autumn 2024

- Author: Richel

## Week 37

### Suggested new schedule

Mu suggestion:

Day      |Hours|Topic                    |Remarks
---------|-----|-------------------------|---------------------------
Monday   |1-6  |Risk analysis, design    |More exercises, less theory
Tuesday  |1-6  |git                      |More exercises, less theory. Add 'Always work in an Issue'
Wednesday|1-3  |TDD                      |Not in pair yet, consider adding pseudocode and in-code documentation
Wednesday|4-6  |Pair programming         |In pairs from now on
Thursday |1-3  |Testing                  |.
Thursday |4-6  |Code reviews             |Need a dedicated TA to review code
Friday   |1-3  |Class design             |More exercises, less theory
Friday   |4-6  |Create a re-usable module|More exercises, less theory

In the schedule to be discussed:

- **Monday morning**:
    - Björn: course overview
    - Björn: basic git
- **Monday afternoon**: Requirements modeling and risk assessment
    - Lars: Define the project
    - Lars: Make formal requirements model
    - Lars: Make formal risk assessment
- **Tuesday**: Git setup and version control, from a reproducible research and social coding/development perspective
    - Organize the project
- **Wednesday**:
    - Richel: Test-Driven Development (TDD) and function design
- **Thursday and Friday morning**:
    - Richel: Test-Driven Development and class design (TDD)
    - Richel: Implement the project as a package
- **Friday afternoon**: Deployment and documentation

## Week 36

### Suggested new schedule

Day      |Hours|Topic                    |Remarks
---------|-----|-------------------------|---------------------------
Monday   |1-3  |git basic workflow       |More exercises, less theory
Monday   |4-6  |git professional workflow|More exercises, less theory. Add 'Always work in an Issue'
Tuesday  |1-3  |TDD                      |Not in pair yet, consider adding pseudocode and in-code documentation
Tuesday  |4-6  |Pair programming         |In pairs from now on
Wednesday|1-3  |Testing                  |.
Wednesday|4-6  |Code reviews             |Need a dedicated TA to review code
Thursday |1-3  |Data structures          |.
Thursday |4-6  |Function design          |Consider adding documentation
Friday   |1-3  |Class design             |More exercises, less theory
Friday   |4-6  |Create a re-usable module|More exercises, less theory

### List of suggested changes

Topic|Suggested time|Previous time|Remark
---|---|---|---
Risk analysis|-|Monday|not needed for shared project
Use of ChatGPT to generate design documents|-|Monday|Not needed for shared project. No exercise
Object orientated design|Consider Friday|Monday|No exercise. Project state on Friday gives more context
Inheritance|Consider Friday|Monday|No exercise. Project state on Friday gives more context
Creating a local GitHub repo|-|Monday|Not needed for shared project
Markdown markup|Consider Friday|Monday|No exercise. Not needed for shared project
mermaid markup|Consider for class design|Monday|No exercise yet
put Mermaid in a README|Consider class design|Monday|No exercise yet
optimization|-|Monday|not vital to the shared project
documentation|Consider function design|Monday|No exercise yet
pseudocode|Consider function design|Monday|No exercise yet. Not needed for shared project
class list|Class design or `git` basics|?Monday|Do class list before class diagram
class diagram|Class design|?Monday|Do class list before class diagram
TDD|TDD|Tuesday|Before pair programming
Pair programming|Pair programming|Tuesday|After TDD
git merge conflicts|Monday|-|Need exercise for this
`git init`|-|Monday|Not needed for shared project, can be done on GitHub
`git branch -c`|-|Monday|can be done on GitHub
`git graph`|-|Monday|can be done on GitHub
`git diff`|-|Monday|can be done on GitHub
`git show`|-|Monday|no exercise
`git log`|-|Monday|no exercise, can be done on GitHub
`git mv`|-|Monday|no exercise
`git rm`|-|Monday|no exercise
big code examples|-|Monday|Simplify to a 'Hello world' program
use multiple files|-|Monday|Simplify to one file
use big files|-|Monday|Simplify to short files
use complex commit graphs|-|Monday|Simplify to simple commit graphs
using more repos|-|Monday|Simplify to only use the shared repo
using git plugin|-|Monday|Simplify by using GitHub [network](https://github.com/UPPMAX/programming_formalisms/network)
using GitHub templates|-|Monday|not needed for shared project
using protected branches|-|Monday|not needed for shared project
add using Issues|?|-|We do use these in the shared project!
using command-line|-|Monday/Wednesday|Remove if can be done with GitHub
use `git checkout`|Monday|Monday|`git checkout` works for older versions
Optimization: profiling|?|Thursday|No time
Optimization: big-O profile|?|Thursday|No time
aggregation|-|Friday|We don't use it in the project
remove deep `__init__.py`|-|Friday|Not needed in the project
Give definition of containers|Friday|Friday|No exercise yet
Compare the types of container|-|Fridays|We use one container max. No exercise yet
build systems|-|Friday|not needed for the project
virtual environments|-|Friday|not needed for the project
venv comparisons usage for different OSes|-|Friday|not needed for project
venv usage|-|Friday|not needed for project
In-code documentation|Consider function design|Friday|No exercise yet.
Licensing|-|Friday|not needed for the project: we give it a license
Static HTML website generator|-|Friday|not needed for the project
making a package and using it|Friday|-|Need to create exercise
Wiki|-|Friday|not needed for the project, no formal terminology

### Meeting 2024-09-11 evaluation

I am happy we voted democratically on what the course goal is
and what is yes/no course content.

I do feel the course has been made worse by this.
These are my worries:

- We voted for the coarse goal of 'to give an understanding of formal
  principles of software development', instead of 'applying formal
  principles of software development'. I worry that we have failed
  to reduce lecturing and have failed to reduce lecturing useless content
  (there are many things I am not convinced of to be useful, even after have
  seen some of these topic being discussed multiple times; if something is
  said to be 'essential' does not convince me)
- We voted for 'Only what is used by the student project is course content,
  with alternatives relevant to academics provided in lecture (or extra
  material) to what we do'. I suggested 'Only what is used by the student
  project is course content' to reduce lecturing. Also here, I worry that we
  have failed to reduce lecturing

## 2024-11-09 Preparation

I will have 4 days to prepare, all of these disturbed by meetings.

- Thursday:

Day      |Time       |Teacher|State
---------|-----------|-------|-----------------------------------------------------------
Tuesday  |10:00-11:00|Richel |Issues 6/10
Tuesday  |10:00-11:00|Richel |Kanban board 6/10
Tuesday  |10:00-11:00|Richel |Team roles 6/10
Tuesday  |11:00-15:40|Richel |TDD 6/10
Wednesday|13:00-15:40|Richel |Pair programming 6/10
.        |.          |.      |function design 6/10
.        |.          |.      |assert 6/10
.        |.          |.      |Testing framework ?
.        |.          |.      |Testing in a team ?
.        |.          |.      |Continuous integration ?
.        |.          |.      |Testing indeterminate functions
.        |.          |.      |Skip: recursive algorithms 6/10
Thursday |10:00-12:00|Richel |Class design ?
.        |.          |.      |Has-a relationship ?
.        |.          |.      |Built-in data structures
.        |.          |.      |Expressive data types
Thursday |14:00-15:40|Richel |Implement the project as a package
Friday   |09:00-11:00|Richel |optimisation misconceptions ?
.        |.          |.      |big-O ?
.        |.          |.      |run-time speed profile ?
Friday   |15:00-15:40|Richel |Wrap-up
Friday   |15:40-16:00|Richel |Confidence and retrospect
.        |.          |.      |Project 2/10

## 2024-11-17

I feel that there is too little time for the shared project,
due to more time for theoretical things. On the other hand,
as this is a given, I should be able to make my exercises
use the project more...

Instead of discussing CI, I will put it on the project itself,
so the learners can feel what it does.

- [x] Put CI in project
- [x] TDD
- [x] Put TDD example code in project
- [x] Use testing framework in code
- [x] Testing framework
- [SKIP] Testing in a team ?
- [SKIP] Testing indeterminate functions
- [ ] Class design ?
- [ ] Has-a relationship ?
- [ ] Built-in data structures
- [ ] Expressive data types
- [x] Create package in CI script
- [x] Implement the project as a package
- [ ] optimisation misconceptions ?
- [ ] big-O ?
- [ ] run-time speed profile ?

Shall I directly use a testing framework in TDD?

## 2024-10-18

Before teaching, my course material seems on schedule to me.

At the teacher's coffee meeting, 
I suggested to the relevant teacher to split up the group
when teaching git, so that the git experts can do something at
their skill level. We decided to see what happens.

I wonder if we have an 'Open Door Syndrome': 'planning is good',
'thinking is good, of course', 'you want reproducibility',
'documentation is an important thing'.
These statements are debatable.
Only references to the literature will
make those statements sound useful.

I have no idea what learners are expected to do.
This means I cannot help them.

## Prepera for 2024-10-19

- [x] Reflect on learners' Retrospect
- [ ] Check if schedules match  
  - [x] Fixed
- [ ] Check on learners' Retrospect
- 

