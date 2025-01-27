---
tags:
  - data structures
  - class
  - classes 
  - composition
---

# Data structures

!!!- info "Learning outcomes"

    - Practice to use classes for expression
    - Practice to use classes for type safety
    - Practice to use composition for a 'has-a' relationship

## Why?

You want to model the real world.
The real world consists out of things.
You need to convert those things into code.

You want to use data structures.

## Good data structures

Good data structures:

- [Increase expressiveness](../expressive_data_type/README.md)
- [Bundles data that belongs together](../has_a_relation/README.md)
- [Ensures correct state of the program](class_design.md)

Good example data structures are [built-in data structures](built_in_data_structures.md).

## Discussion

- Structures increase expressiveness of code
- The design of data structures has implications
- Structures are useful to bundle data
- It is rare that structures match the real world

## structure versus class

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Parameter               | structure                    | class
------------------------|------------------------------|--------------------------------------------
Python keyword          | `class`                      | `class`
R object type           | S3 class                     | S4, R5, R6
All states are valid    | Yes                          | No
Maintains a valid state | No                           | Yes
Example                 | A number for an x coordinate | A string for a DNA sequence
Invalid when            | Never                        | Sequence holds an invalid nucleotide letter

<!-- markdownlint-ensable MD013 -->

