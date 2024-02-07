# Lesson plans

 * Autumn 2024, around April


## Suggest course schedules

These are, I'd say, the dependencies in the course:

```mermaid
flowchart TD

  classDef bjorn_node fill:#ddf,color:#000,stroke:#00f
  classDef lars_node fill:#dfd,color:#000,stroke:#0f0
  classDef richel_node fill:#fdd,color:#000,stroke:#f00

  subgraph day_1
    pair_programming[Pair programming]:::richel_node
    git_basic[git basic workflow]:::bjorn_node
    class_design[Class design]:::lars_node
  end
  subgraph day_2
    class_diagram[Create project's class diagram]:::lars_node
    tdd[TDD]:::richel_node
  end
  subgraph day_3
    testing[Testing]:::richel_node
    code_reviews[Code reviews]:::richel_node
    git_branches[git branches]:::bjorn_node
  end
  subgraph day_4
    data_structures[Data structures]:::richel_node
    algorithms[Algorithms]:::richel_node
  end
  subgraph day_5
    modular_programming[Modular programming]:::lars_node
    optimisation[Optimisation]:::richel_node
  end


  class_design -.-> git_basic
  git_basic <-.-> pair_programming
  class_design <-.-> pair_programming
  tdd <--> pair_programming
  git_basic --> git_branches
  pair_programming --> code_reviews
  git_branches --> code_reviews
  class_design --> class_diagram
  class_diagram --> tdd
  git_basic --> tdd
  tdd --> testing
  git_branches --> testing
  code_reviews --> data_structures
  testing --> data_structures
  testing --> code_reviews
  data_structures --> algorithms
  algorithms --> modular_programming
  algorithms --> optimisation
```

 * MO-1: Class design (in groups, on repo, using web interface only)
 * MO-2: git basic (in groups, on repo)
 * TU-1: Create project's class diagram (using git)
 * TU-2: pair programming, DD
 * WE-1: git branches
 * WE-2: TDD
 * WE-3: Code reviews
 * TH-1: Data structures
 * TH-2: Algorithms
 * FR-1: Modular programming
 * FR-2 Optimisation
