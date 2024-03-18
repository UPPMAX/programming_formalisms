# Introduction of the week

!!! note "Course mottos"

    - Turning scripters into computer scientists
    - Add theory to bolster already present practical skills

## Course overview

```mermaid
flowchart TD

  classDef bjorn_node fill:#ddf,color:#000,stroke:#00f
  classDef lars_node fill:#dfd,color:#000,stroke:#0f0
  classDef richel_node fill:#fdd,color:#000,stroke:#f00

  subgraph day_1[Monday]
    git_basic[git basic workflow]:::bjorn_node
    class_design[Class design]:::lars_node
  end
  subgraph day_2[Tuesday]
    class_diagram[Create project's class diagram]:::lars_node
    pair_programming[Pair programming]:::richel_node
    tdd[TDD]:::richel_node
  end
  subgraph day_3[Wednesday]
    testing[Testing]:::richel_node
    code_reviews[Code reviews]:::richel_node
    git_branches[git branches]:::bjorn_node
  end
  subgraph day_4[Thursday]
    data_structures[Data structures]:::richel_node
    algorithms[Algorithms]:::richel_node
    optimisation[Optimisation]:::richel_node
  end
  subgraph day_5[Friday]
    modular_programming[Modular programming]:::lars_node
    deployment[Deployment]:::bjorn_node
  end


  git_basic --> pair_programming
  pair_programming --> tdd
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

## Schedule   

Day      |Time       |Teacher|Subject
---------|-----------|-------|-----------------------------------------------------------
Monday   |09:00-12:00|Lars   |Parts from Björn's intro and Class design (in groups, on repo, using web interface only)
Monday   |13:00-16:00|Björn  |Start project git basic on documents (no coding?) (in groups, on repo)
|||
Tuesday  |09:00-12:00|Lars   |Create project's class diagram (using git)
Tuesday  |13:00-16:00|Richel |pair programming + TDD
|
Wednesday|09:00-10:00|Björn  |understand git branches, git merge
Wednesday|10:15-11:00|Richel |apply git branches
Wednesday|11:15-12:00|Björn  |understand git pull request with code review
Wednesday|13:00-14:00|Richel |apply code review 
Wednesday|14:15-15:00|Richel |understand TDD (+data structures)
Wednesday|15:15-15:45|Richel |apply TDD (+data structures)
Wednesday|15:45-16:00|Richel |retrospect
|||
Thursday |09:00-12:00|Richel |Data structures (+ algorithms)
Thursday |13:00-16:00|R (+M) |Algorithms + Optimisation
|
Friday   |09:00-12:00|Lars   |Modular programming deep
Friday   |13:00-16:00|Björn  |Deployment
