---
tags:
  - wrap-up
  - wrap up
  - conclusion
  - summary
---

# Wrap-up

!!!- info "Learning objectives"

    - Remember what the course was about

## Why?

!!! note "Course mottos"

    - Turning scripters into computer scientists
    - Add theory to bolster already present practical skills

To determine if the course mottos have held.


## Course overview

```mermaid
flowchart TD

  classDef bjorn_node fill:#ddf,color:#000,stroke:#00f
  classDef lars_node fill:#dfd,color:#000,stroke:#0f0
  classDef richel_node fill:#fdd,color:#000,stroke:#f00

    sdlc[Software development lifecycle]:::lars_node
    devtools[Software development tools]:::bjorn_node

    requirements[Requirements]:::lars_node
    risk_analysis[Risk analysis]:::lars_node

    requirements --> issues
    risk_analysis --> issues

    issues[Issues]:::richel_node
    kanban_board[Kanban board]:::richel_node
    team_roles[Team roles]:::richel_node

    team_roles <--> issues <--> kanban_board <--> team_roles

    team_roles --> pair_programming

    version_control_1[Version control on single branch]:::bjorn_node
    version_control_many[Version control on multiple branches]:::bjorn_node

    version_control_1 --> version_control_many

    class_design[Class design]:::lars_node

    pair_programming[Pair programming]:::richel_node
    tdd[TDD]:::richel_node

    testing[Testing]:::richel_node
    code_reviews[Code reviews]:::bjorn_node

    data_structures[Data structures]:::richel_node
    algorithms[Algorithms]:::richel_node
    optimisation[Optimisation]:::richel_node

    modular_programming[Modular programming]:::lars_node
    package[Package]:::richel_node
    deployment[Deployment]:::bjorn_node
    documentation[Documentation]:::bjorn_node


  sdlc --> requirements
  sdlc --> risk_analysis
  devtools --> version_control_1

  requirements --> class_design
  version_control_1 --> requirements
  version_control_1 --> risk_analysis
  pair_programming --> tdd
  pair_programming --> code_reviews
  version_control_many --> code_reviews
  class_design --> data_structures
  version_control_1 --> tdd
  tdd --> testing
  issues --> testing
  code_reviews --> data_structures
  testing --> data_structures
  testing --> code_reviews
  testing --> algorithms
  data_structures --> package
  package <--> modular_programming
  package --> optimisation
  algorithms --> package

  package --> deployment
  package --> documentation
```

> Overview of the course.
> Red: Richel.
> Green: Lars.
> Blue: Björn.
