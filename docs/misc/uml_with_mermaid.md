### Flowcharts or Unified Modeling Language (UML)

#### Tools

- PlantUML
    - Open-source
    - Can be integrated with IDE:s, Java documentation, Word
    - Scripts rather than drawing tools
    - requires plug-in to render in browser
    - <http://www.plantuml.com/plantuml>
- Graphviz
    - open source graph visualization software.
    - It has important applications in networking, bioinformatics, software engineering, database and web design, machine learning, and in visual interfaces for other technical domains.
    - <https://graphviz.org/>
- **Mermaid** used in this course
    - Open-source
    - Not as many diagrams
    - renders in browser without plug-ins
    - <https://mermaid.js.org/>
    - [Live editor](https://mermaid.live/)

**Types**

```mermaid
flowchart TD

  uml_diagrams["UML graph types"]
  structure[Structure]
  behaviour[Behavior]
  interaction[Interaction]

  uml_diagrams --> structure
  uml_diagrams --> behaviour
  structure --> class_diagram[Class diagram]
  structure --> component[Component diagram]
  structure --> object[Object diagram]
  structure --> composite[Composite diagram]
  behaviour --> use_case[Use case diagram]
  behaviour --> activity[Activity diagram]
  behaviour --> interaction
  interaction --> sequence[Sequence diagram]
  interaction --> communication[Communication]
  interaction --> timing[Timing]
  interaction --> interaction_overview[Interaction overview]
```

!!! admonition "We will in the course use"

    - Sequence
    - Activity/algorithm flowchart
    - Class diagrams

#### Sequence

```mermaid
sequenceDiagram
    Alice ->>+Bob: Authentication Request
    Bob-->>-Alice: Authentication Response
    Alice->>+Bob: Another authentication Request
    Bob-->>-Alice: Another authentication Response
```

Mermaid code

```text
sequenceDiagram
    Alice ->>+Bob: Authentication Request
    Bob-->>-Alice: Authentication Response
    Alice->>+Bob: Another authentication Request
    Bob-->>-Alice: Another authentication Response
```

#### Class

 A diagram that shows the system classes and relationships between them.

```mermaid
classDiagram
    Driver o-- Car : owns
    Car *-- Wheel : have 4
```

Mermaid code

```text
classDiagram
    Driver o-- Car : owns
    Car *-- Wheel : have 4
```


#### Activity

A flowchart that shows the process and its correlating decisions,
including an **algorithm**  or a business process.

```mermaid
flowchart TD
  is_installed{Graphviz installed?}
  is_installed --> |yes| process_all[process all diagrams]
  is_installed --> |no| process_sub[process only sequence and activity diagrams]
```

Mermaid code

```text
flowchart TD
  is_installed{Graphviz installed?}
  is_installed --> |yes| process_all[process all diagrams]
  is_installed --> |no| process_sub[process only sequence and activity diagrams]
```

#### Algorithm flowchart

```mermaid
flowchart TD
  condition{Is something true?}
  condition --> |yes| is_true[Do action 1]
  condition --> |no| is_false[Do action 2]
```

Mermaid code

```text
flowchart TD
  condition{Is something true?}
  condition --> |yes| is_true[Do action 1]
  condition --> |no| is_false[Do action 2]
```

!!! info "shape of boxes etc in flowchart and state diagrams "

    - initial state (small circle)
        - ``[*]``
    - end state (small solid-filled circle)
        - ``[*]``
    - state (rectangle)
        - ``A["text"]``
    - activity (rounded recatngle)
        - ``A("text")``
    - choice (diamond)
        - ``A{"text"}``
    - arrow
        - ``-->``

    - Other syntax: <https://mermaid.js.org/ecosystem/tutorials.html>

### Pseudocode

- Pseudocode does not have syntax rules of any particular language
    - no systematic standard form.
- Some borrow style and syntax from some conventional programming language
    - like Fortran, Pascal, BASIC, C, C++, Java, Lisp, and ALGOL.
- Variable declarations are typically omitted.
- Function calls and blocks of code, such as code contained within a loop, are often replaced by a one-line natural language sentence.

**Example**

```code
  algorithm ford-fulkerson is
    input: Graph G with flow capacity c,
           source node s,
           sink node t
    output: Flow f such that f is maximal from s to t

    (Note that f(u,v) is the flow from node u to node v, and c(u,v) is the flow capacity from node u to node v)

    for each edge (u, v) in GE do
        f(u, v) ← 0
        f(v, u) ← 0

    while there exists a path p from s to t in the residual network Gf do
        let cf be the flow capacity of the residual network Gf
        cf(p) ← min{cf(u, v) | (u, v) in p}
        for each edge (u, v) in p do
            f(u, v) ←  f(u, v) + cf(p)
            f(v, u) ← −f(u, v)

    return f
```

- Depending on the writer, pseudocode may therefore vary widely in style,
    - from a near-exact imitation of a real programming language at one extreme
    - to a description approaching formatted prose at the other.

!!! note "See also"

    - Diagrams will be covered on
        - Monday and Tuesday during part of the [Project start with analysis and design](../project_start/analysis_design.md) and [Design paradigms](../design_develop/class_design.md)
        - Thursday during [Modular programming](../modularity/modular.md)
