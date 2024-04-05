# Data structures

!!!- info "Learning objectives"

    - Practice to use classes for expression
    - Practice to use classes for type safety
    - Understand difference between composition and aggregation
    - Practice to use composition for a 'has-a' relationship

# Data structures

Good data structures:

-   [Increase expressiveness](expressive_data_type.md)
-   [Bundles data that belongs together](has_a_relation.md)
-   [Ensures correct state of the program](class_design.md)

Good example data structures are [built-in data structures](built_in_data_structures.md).

## Discussion

-   Structures increase expressiveness of code
-   The design of data structures has implications
-   Structures are useful to bundle data
-   It is rare that structures match the real world

## structure versus class

Parameter               | structure                    | class
------------------------|------------------------------|--------------------------------------------
Python keyword          | `class`                      | `class`
R object type           | S3 class                     | S4, R5, R6
All states are valid    | Yes                          | No
Maintains a valid state | No                           | Yes
Example                 | A number for an x coordinate | A string for a DNA sequence
Invalid when            | Never                        | Sequence holds an invalid nucleotide letter

