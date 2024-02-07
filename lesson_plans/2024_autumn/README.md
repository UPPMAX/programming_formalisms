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

Day      |Time       |Teacher|Subject
---------|-----------|-------|-----------------------------------------------------------
Monday   |09:00-12:00|Lars   |Class design (in groups, on repo, using web interface only)
Monday   |13:00-16:00|Björn  |git basic (in groups, on repo)
Tueday   |09:00-12:00|Richel |Create project's class diagram (using git)
Tueday   |13:00-16:00|Richel |pair programming + TDD
Wednesday|09:00-12:00|Björn  |git branches
Wednesday|13:00-16:00|Richel |TDD + Code reviews
Thursday |09:00-12:00|Richel |Data structures
Thursday |13:00-16:00|Richel |Algorithms
Friday   |09:00-12:00|Lars   |Modular programming
Friday   |13:00-16:00|R (M)  |Optimisation
