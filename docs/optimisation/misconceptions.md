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

Variance within programming languages is bigger than variance between languages (adapted fig 2, from @prechelt2000empirical)

![](prechelt_fig_2_sub.png)

## Bad advice 2

'No for loops', 'unroll for-loops', any other micro-optimization.

Premature optimization is the root of all evil. It likely has no measurable effect.

## Bad advice 2

> We should forget about small efficiencies, say about 97% of the time: premature optimization is the root of all evil. Yet we should not pass up our opportunities in that critical 3%.
>
> Donald Knuth

![Donald Knuth](donald_knuth.jpg)

> Source: [Wikipedia](https://upload.wikimedia.org/wikipedia/commons/4/4f/KnuthAtOpenContentAlliance.jpg)

## Bad advice 3

'Always parallelize'

-   Maximum gain depends on proportion spent in the parallelized part @rodgers1985improvements
-   Overhead is underestimated
-   Hard to debug

## Bad advice 3

![https://en.wikipedia.org/wiki/File:AmdahlsLaw.svg#file](amdahls_law.png)

## Bad advice 4

'Optimize the function where you feel the performance problem is'

Developers -also very experienced developers- are known to have a bad intuition @sutter2004cpp

Instead, from @chellappa2008write:

1.  finding code program spends most time in
2.  measure timing of that code
3.  analyze the measured runtimes

## Bad advice 5

'Optimize each function'

-   The 90-10 rule: 90% of all time, the program spends in 10% of the code.
-   Your working hours can be spent once
