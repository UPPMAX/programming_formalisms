# Optimisation misconceptions

!!!- info "Learning objectives"

    - Understand misconceptions on optimisation
    - Understand Amdahl's law
    - Practice to determine the big-O profile of a function
    - Practice to get a run-time speed profile

## Optimisation misconceptions

Q: What would be **bad advice** to improve the run-time speed of an algorithm?

Fill in in the shared document!

(if you dare and have time: add good advice too)

## Bad advice 1

'Use C or C++ or Rust'

Variance within programming languages is bigger than variance between
languages (adapted fig 2, from `[Prechelt, 2000]`)

![Figure 2, from Prechelt, 2000](prechelt_fig_2_sub.png)

## Bad advice 2

'No for loops', 'unroll for-loops', any other micro-optimization.

Premature optimization is the root of all evil.
It likely has no measurable effect.

## Bad advice 2

> We should forget about small efficiencies,
> say about 97% of the time: premature optimization is the root of all evil.
> Yet we should not pass up our opportunities in that critical 3%.
>
> Donald Knuth

![Donald Knuth](donald_knuth.jpg)

> Source: [Wikipedia](https://upload.wikimedia.org/wikipedia/commons/4/4f/KnuthAtOpenContentAlliance.jpg)

## Bad advice 3

'Always parallelize'

- Maximum gain depends on proportion spent
  in the parallelized part `[Rodgers, 1985]`
- Overhead is underestimated
- Hard to debug

## Bad advice 3

![https://en.wikipedia.org/wiki/File:AmdahlsLaw.svg#file](amdahls_law.png)

## Bad advice 4

'Optimize the function where you feel the performance problem is'

Developers -also very experienced developers- are known
to have a bad intuition `[Sutter & Alexandrescu, 2004]`

Instead (from `[Chellappa et al., 2008]`):

1. find the code that the program spends most time in
2. measure the timing of that code
3. analyze the measured runtimes

## Bad advice 5

'Optimize each function'

- The 90-10 rule: 90% of all time, the program spends in 10% of the code.
- Your working hours can be spent once

## References

- `[Prechelt, 2000]` Prechelt, Lutz. "An empirical comparison of c, c++, java, perl, python, rexx and tcl." IEEE Computer 33.10 (2000): 23-29.
- `[Rodgers, 1985]` Rodgers, David P. "Improvements in multiprocessor system design." ACM SIGARCH Computer Architecture News 13.3 (1985): 225-231.
- `[Sutter & Alexandrescu, 2004]` Sutter, Herb, and Andrei Alexandrescu. C++ coding standards: 101 rules, guidelines, and best practices. Pearson Education, 2004.
- `[Chellappa et al., 2008]`
  Chellappa, Srinivas, Franz Franchetti, and Markus Püschel.
  "How to write fast numerical code: A small introduction."
  Generative and Transformational Techniques in Software Engineering II:
  International Summer School, GTTSE 2007, Braga, Portugal,
  July 2-7, 2007. Revised Papers (2008): 196-259.
