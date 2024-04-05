# Introduction of the week

!!! note "Course mottos"

    - Turning scripters into computer scientists
    - Add theory to bolster already present practical skills

## Course overview


!!! info "Programming Formalisms goal"
    
    Give scientists with some experience in programming and scripting
    an understanding of formal principles of software development.
    
    Teach evidence-based or expert-recommended best practices on how to:
     
    - write design documents for a project
    - work as a team
    - share code
    - develop code
    - test code
    - optimize code
    - write reusable code
    - deploy code

    Understand and do formal software development practices:

    - understand, use and create a UML class diagram
    - understand and use a formal git branching model
    - understand and use a formal GitHub workflow
    - understand and practice social coding, such as pair programming and code reviews
    - understand and use a run-time speed profiler


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

This is a general course schedule, that intends to give a general overview
of the course's teaching.
For a detailed daily schedule, see the detailed schedule of that day.

Day      |Time       |Teacher|Subject
---------|-----------|-------|-----------------------------------------------------------
Monday   |09:00-12:00|Lars   |Parts from Björn's intro and Class design (in groups, on repo, using web interface only)
Monday   |13:00-15:45|Björn  |Start project git basic on documents (no coding?) (in groups, on repo)
Monday   |15:45-16:00|Richel |Retrospect
Tuesday  |09:00-12:00|Lars   |Create project's class diagram (using git)
Tuesday  |13:00-15:45|Richel |pair programming + TDD
Tuesday  |15:45-16:00|Richel |Retrospect
Wednesday|09:00-12:00|Björn  |Formal git workflow
Wednesday|13:00-16:00|Richel |Formal GitHub and software development work
Wednesday|15:45-16:00|Richel |Retrospect
Thursday |09:00-12:00|Richel |Data structures (+ algorithms)
Thursday |13:00-16:00|R (+M) |Algorithms + Optimisation
Thursday |15:45-16:00|Richel |Retrospect
Friday   |09:00-12:00|Lars   |Modular programming deep
Friday   |13:00-16:00|Björn  |Deployment
Friday   |15:45-16:00|Richel |Evaluation


## Detailed overview

```mermaid
flowchart TB

  classDef bjorn_node fill:#ddf,color:#000,stroke:#00f
  classDef lars_node fill:#dfd,color:#000,stroke:#0f0
  classDef richel_node fill:#fdd,color:#000,stroke:#f00
  classDef project_node fill:#ddd,color:#000,stroke:#000
  subgraph project[Project]
    p_uml_class_diagram[UML Class diagram]:::project_node
    p_minimal_classes[Minimal classes]:::project_node
    p_unit_tests[Unit tests]:::project_node
    p_automated_tests[Automated tests]:::project_node
    p_classes_with_elements[Classes with elements]:::project_node
    p_classes_with_behavior[Classes with behavior]:::project_node
    p_runtime_speed_profile[Runtime-speed profile]:::project_node

    p_uml_class_diagram ---> p_minimal_classes
    p_minimal_classes ---> p_classes_with_elements
    p_classes_with_elements ---> p_classes_with_behavior
    p_unit_tests ---> p_automated_tests

  end
  subgraph course[Course]
    direction TB
  subgraph day_1[Monday]
    git_basic[git basic workflow]:::bjorn_node
    class_design[Class design]:::lars_node
  end
  subgraph day_2[Tuesday]
    class_design_2[Class design]:::lars_node
    pair_programming[Pair programming]:::richel_node
    tdd[TDD]:::richel_node
    uml_class_diagram[UML class diagram]:::project_node
    minimal_classes[Minimal classes]:::project_node
  end
  subgraph day_3[Wednesday]
    subgraph testing[Testing]
      testing_framework[Using a formal testing framework]:::richel_node
      continuous_integration[Continuous integration]:::richel_node
      testing_in_a_team[Testing in a team and project]:::richel_node
      unit_tests[Unit tests]:::project_node
      automated_tests[Automated tests]:::project_node
    end
    code_reviews[Code reviews]:::richel_node
    git_branches[git branches]:::bjorn_node
  end
  subgraph day_4[Thursday]
    subgraph data_structures[Data structures]
      expressive_data_types[Expressive data types]:::richel_node
      has_a_relationship[A has-a relationship]:::richel_node
      class_design_in_code[Class design]:::richel_node
      built_in_datatypes[Built-in datatypes]:::richel_node
      has_a_relationship --> |needed for| class_design_in_code
      classes_with_elements[Classes with elements]:::project_node
    end
    subgraph algorithms[Algorithms]
      function_design[Function design]:::richel_node
      assert[assert]:::richel_node
      recursive_algorithms[Recursive algorithms]:::richel_node
      classes_with_behavior[Classes with behavior]:::project_node
    end
    subgraph optimisation[Optimisation]
      misconceptions[Misconceptions]:::richel_node
      big_o[Big-O]:::richel_node
      runtime_speed_profiles[Runtime speed profiles]:::richel_node
      runtime_speed_profile[Runtime speed profile]:::project_node

    end
  end
  subgraph day_5[Friday]
    modular_programming[Modular programming]:::lars_node
    deployment[Deployment]:::bjorn_node
  end
  end


  git_basic --> pair_programming
  pair_programming --> tdd
  git_basic --> git_branches
  pair_programming --> code_reviews
  pair_programming --> |created| minimal_classes
  git_branches --> code_reviews
  class_design --> class_design_2
  class_design_2 --> |creates| uml_class_diagram
  class_design_2 --> tdd
  git_basic --> tdd
  tdd --> testing
  git_branches --> testing
  code_reviews --> data_structures
  testing --> data_structures
  testing --> code_reviews
  data_structures --> algorithms
  algorithms --> modular_programming
  algorithms --> optimisation

  testing_framework --> |creates| unit_tests
  continuous_integration --> |creates| automated_tests
  has_a_relationship --> |creates| classes_with_elements
  function_design --> |creates| classes_with_behavior
  runtime_speed_profiles --> |creates| runtime_speed_profile
```
