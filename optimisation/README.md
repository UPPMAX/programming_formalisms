# Optimisation

[taught by Richel]

 * Problem: code is slow. How to make it fast?

 * Use [code from here](https://johnlekberg.com/blog/2020-10-25-seq-align.html)

 * Theory:
   * Profiling
   * Need to have function
   * Big O
   * Only useful in release mode on big problems!
   * Bottlenecks: CPU versus file IO versus web IO
   * Techniques: sorting, storing
   * Other language: only if able
   * Multiple threads: not yet
   * Myths: experienced devs know where the bottleneck is
   * Myths: for loops are always evil, always use assembly/C/C++/Rust

 * Learning goals:
   * Being able to make a profile
   * Done one optimalization, measure if it is actually better

 * Evaluation:
   * Question: how do you know where to profile? Answer must be: 'you don't' or 'by measuring'
   * Profile visible on GHA
   * Profiling comparison visible on GHA

## Links

 * [Former Canvas page of this course](https://uppsala.instructure.com/courses/69215), with code 'NBIS_CS_FORM_HT22'
