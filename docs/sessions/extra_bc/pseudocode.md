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
