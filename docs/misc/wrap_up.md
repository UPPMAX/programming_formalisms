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

  #subgraph day_1[Monday]
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

## Detailed overview

```mermaid
flowchart TB

  classDef bjorn_node fill:#ddf,color:#000,stroke:#00f
  classDef lars_node fill:#dfd,color:#000,stroke:#0f0
  classDef richel_node fill:#fdd,color:#000,stroke:#f00
  classDef project_node fill:#fff,color:#000,stroke:#000
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

> Overview of the course content.
> Red: Richel.
> Green: Lars.
> Blue: Björn.
> Grey: Project.
> Project nodes are not connected to obtain a clearer graph

## Project overview

```mermaid
flowchart TB
  classDef bjorn_node fill:#ddf,color:#000,stroke:#00f
  classDef lars_node fill:#dfd,color:#000,stroke:#0f0
  classDef richel_node fill:#fdd,color:#000,stroke:#f00

  version_control[Version control]:::bjorn_node
  risk_analyis[Risk analysis]:::lars_node
  uml_class_diagram[UML Class diagram]:::lars_node
  minimal_classes[Minimal classes]:::richel_node
  unit_tests[Unit tests\n+ automated]:::richel_node
  style_tests[Style tests\ne.g. documentation\n+ automated]:::richel_node
  classes_with_elements[Classes with elements]:::richel_node
  classes_with_behavior[Classes with behavior]:::richel_node
  runtime_speed_profile[Runtime-speed profile\n+ automated]:::richel_node
  big_o[Big-O analysis\n+ automated]:::richel_node
  package[Package]:::bjorn_node
  module[Module]:::lars_node
  refactoring[Refactoring]:::lars_node
  documentation[Documentation]:::bjorn_node
  deployment[Deployment]:::bjorn_node

  version_control --> uml_class_diagram
  version_control --> risk_analyis
  uml_class_diagram --> minimal_classes
  minimal_classes --> classes_with_elements
  minimal_classes --> unit_tests
  minimal_classes --> style_tests
  classes_with_elements --> classes_with_behavior
  classes_with_behavior --> module
  classes_with_behavior --> big_o
  classes_with_behavior --> runtime_speed_profile
  classes_with_behavior --> deployment
  classes_with_behavior --> refactoring
  style_tests --> documentation
  unit_tests --> runtime_speed_profile
  module --> package
  package --> deployment
  documentation --> deployment
```

> Overview of the course project.
> Red: Richel.
> Green: Lars.
> Blue: Björn.
