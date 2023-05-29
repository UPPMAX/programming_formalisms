# Learning line

> See bottom for the functions to-be-developed for The Big Project

## Tuesday part 1: Paradigms, Introduction to formalised development

## Tuesday part 2: TDD

> Goal: students have done multiple TDD cycles individually

 * [x] Why is TDD important?
 * [x] What is TDD?
 * [x] What is the TDD cycle?
 * [x] How the git history of TDD cycle looks like
 * [x] Why TDD gives better software architecture
 * [x] Why helpful error messages are important
 * [x] Different types of tests: unit tests, etc.
 * [x] Test for documentation
 * [x] Why tests are valuable: they are what you discuss with your boss
 * [x] Encourage to get sloppier in the end: there will be unexpected
       errors :-)
 * [x] There is at least 1 easy function description that
       makes no sense when writing tests. Change the description
 * [x] Can miss code to be tested, will measure codecov in TDD2
 * [x] Can test for style, will lint codecov in TDD2

Other activities:

 * Collect GitHub usernames

> Evaluation: git history on students's repositories

## Wednesday part 1: social coding, pair programming as a tool for rapid development

## Wednesday part 2: Testing

> Goal: students have done multiple TDD cycles within a testing framework socially

 * [x] Add CI to TDD development
 * [x] Add build badge
 * [ ] Add linter CI script
 * [ ] Add Markdown spellcheck
 * [ ] Add broken links checker
 * [ ] Measure codecov
 * [ ] Do PR to demonstrate a bug
 * [ ] [Hamcrest notation](https://en.wikipedia.org/wiki/Hamcrest)
 * [ ] Writing functions for tests
 * [ ] Testing frameworks
 * [ ] Beyoncé principle
 * [ ] Recursive tests

Other activities:

 * Rotate pairs
 * Big project: shared repo with simple tests

> Evaluation: Code on multiple GitHub tested thoroughly by GHA, developed by groups

## Thursday part 1: algorithms

> Goal: students have created multiple different types of algorithms

 * [ ] Design by contract
 * [ ] The role of `assert`, https://docs.python.org/3/reference/simple_stmts.html#assert
 * [ ] What is a good algorithm
 * [ ] DRY
 * [ ] Dimensions of a algorithm: speed, memory, disc, network
 * [ ] Type of algorithms overview
 * [ ] Iterative versus recursive
 * [ ] Exact or approximate
 * [ ] Deterministic or non-deterministic
 * [ ] Digital or quantum
 * [ ] Single-thread, multi-thread, distributed
 * [ ] Divide and conquer: qsort
 * [ ] Measuring speed to make rooftop plot
 * [ ] Caching results/LUTs
 * [ ] Do the bare minimum, e.g. `nth_element`
 * [ ] Using data structures to simplify algorithms, e.g. use an ordered set to sort
 * [ ] Big O
 * [ ] Data structure: `dict`, for NW parameters

> Evaluation: Code on multiple GitHub tested thoroughly by GHA, developed by groups

## Thursday part 2: data structures

> Goal: students have develop tested code together

 * [ ] Essential Python classes
 * [ ] YAGNI
 * [ ] Winnebago class
 * [ ] Design a simple class

> Evaluation: Code on multiple GitHub tested by GHA, 100% codecov, developed by groups

## Friday part 1: Modular programming

## Friday part 2: Optimisation

> Goal: students have attempted to optimize code together

 * [ ] Problem: code is slow. How to make it fast?
 * [ ] Use [code from here](https://johnlekberg.com/blog/2020-10-25-seq-align.html)
 * [ ] Profiling
 * [ ] Need to have small functions
 * [ ] Only useful in release mode on big problems!
 * [ ] Bottlenecks: CPU versus file IO versus web IO
 * [ ] Techniques: sorting, storing
 * [ ] Other language: only if able
 * [ ] Multiple threads: not yet
 * [ ] Myths: experienced devs know where the bottleneck is
 * [ ] Myths: for loops are always evil, always use assembly/C/C++/Rust

> Evaluation: Code on one GitHub tested and profiled by GHA, developed by all

## Functions to be developed for The Small Project

These are barely (sometimes purposefully vague!) suggestions:

 * if you do not need all, that is OK
 * if you know better, that is OK

### Easy

 * At day 'TDD'

Name                          |Purpose
------------------------------|-----------------------------------------------------------------------
`is_even(x)`                  |Returns `True` if `x` is even
`is_odd(x)`                   |Returns `True` if `x` is odd
`is_probability(p)`           |Returns `True` if `p` is a probability (i.e. a chance of something happening)
`is_zero(x)`                  |Returns `True` if `x` is zero

#### Extra

Name                          |Purpose
------------------------------|-----------------------------------------------------------------------
`are_numbers(x)`              |Returns `True` if `x` is zero, one or more numbers
`are_strings(x)`              |Returns `True` if `x` is zero, one or more strings
`is_dividable_by_three(x)`    |Returns `True` if `x` is dividable by 3
`is_number(x)`                |Returns `True` if `x` is a number
`is_string(x)`                |Returns `True` if `s` is a string

  * roman_str_to_number
  * is_perfect
  * [calc_n_ways_to_climb_stairs](https://leetcode.com/problems/climbing-stairs/)

### Prime, easy

 * At day 'Testing', `medium_questions.py`

Name                          |Purpose
------------------------------|-----------------------------------------------------------------------
`are_primes(x)`               |Returns `True`/`False` for each element in `x` being prime yes/no
`get_digits(n)`               |Returns all the digits of number `n`
`get_proper_divisors(n)`      |Returns all proper divisors of number `n`
`is_palindrome(n)`            |Returns `True` if the number `n` is a palindrome
`is_palindrome(s)`            |Returns `True` if the string `s` is a palindrome
`is_perfect(x)`               |Returns `True` if `x` is a perfect number
`is_prime(x)`                 |Returns `True` if `x` is prime
`is_roman_number(s)`          |Returns `True` if `s` is a string that is a roman number
`roman_number_to_int(s)`      |Returns an integer equal to the roman number that is string `s`
`sum_digits(x)`               |Returns the sum of the digits of number `x`
`to_roman_number(i)`          |Returns a Roman number as a string equivalent to the integer that is `i`

#### Extra

Name                          |Purpose
------------------------------|-----------------------------------------------------------------------
`are_primes(x, m)`            |Returns `True`/`False` for each element in `x` being prime yes/no using method `m`
`can_use_prime_method(x, m)`  |Returns `True` if `m` is a prime finding method that can be used on `x`
`get_all_prime_methods()`     |Returns all prime finding methods
`is_prime(x, m)`              |Returns `True` if `x` is prime using method `m`
`is_prime_td(x)`              |Returns `True` if `x` is prime using the Trial Division method
`is_prime_ss(x)`              |Returns `True` if `x` is likely to be prime using the Solovay-Strassen method
`is_prime_ss(x, p)`           |Returns `True` if `x` is likelier than probability `p` to be prime using the Solovay-Strassen method
`is_prime_method(m)`          |Returns `True` if `m` is a prime finding method

### Prime, advanced

 * At day 'Testing' and 'Optimisation'

Name                          |Purpose
------------------------------|-----------------------------------------------------------------------
`calc_p_is_prime(x, m)`       |Returns the change that number `x` is prime using method `m`
`calc_p_is_prime_bpsw(x)`     |Returns the chance that number `x` is prime using the Baillie-PSW primality test
`calc_p_is_prime_mr(x)`       |Returns the chance that number `x` is prime using the Miller-Rabin primality test
`calc_p_is_prime_ss(x)`       |Returns the chance that number `x` is prime using the Solovay-Strassen primality method
`is_coprime(a, b)`            |Returns `True` is `a` is coprime to `b`
`is_factorial_prime(x)`       |Returns `True` if `x` is a factorial prime
`is_mersenne_prime(x)`        |Returns `True` if `x` is a Mersenne prime
`is_proth_prime(x)`           |Returns `True` if `x` is a Proth prime
`is_perfect_power(x)`         |Returns `True` if `x` is a perfect power
`is_prime_aks(x)`             |Returns `True` if `x` is prime using the Agrawal-Kayal-Saxena primality test
`is_prime_bpsw(x)`            |Returns `True` if `x` is likely to be prime using the Baillie-PSW primality test
`is_prime_ec(x)`              |Returns `True` if `x` is prime using an elliptic curve primality test
`is_prime_ec(x, m)`           |Returns `True` if `x` is prime using the elliptic curve primality test `m`
`is_prime_eccm(x)`            |Returns `True` if `x` is prime using the complex multiplication elliptic curve primality test
`is_prime_ecpp(x)`            |Returns `True` if `x` is prime using the Atkin-Morain elliptic curve primality test
`is_prime_ecgk(x)`            |Returns `True` if `x` is prime using the Goldwasser-Kilian elliptic curve primality test
`is_prime_mr(x)`              |Returns `True` if `x` is likely to be prime using the Miller-Rabin primality test
`is_primorial_prime(x)`       |Returns `True` if `x` is a primorial prime
`is_twin_prime(x)`            |Returns `True` if `x` is a twin prime

## Functions to be developed for The Medium Project

 * At day 'Algorithms' and 'Optimisation'

These are barely (sometimes purposefully vague!) suggestions:

 * if you do not need all, that is OK
 * if you know better, that is OK

Name                          |Purpose
------------------------------|--------------------------------------------------------
`bubble_sort(x)`              |Returns the sorted elements of `x` using bubble sort
`block_sort(x)`               |Returns the sorted elements of `x` using block sort
`cube_sort(x)`                |Returns the sorted elements of `x` using cube sort
`cocktail_shaker_sort(x)`     |Returns the sorted elements of `x` using cocktail shaker sort
`comb_sort(x)`                |Returns the sorted elements of `x` using comb sort
`cycle_sort(x)`               |Returns the sorted elements of `x` using cycle sort
`exchange_sort(x)`            |Returns the sorted elements of `x` using exchange sort
`gnome_sort(x)`               |Returns the sorted elements of `x` using gnome sort
`heap_sort(x)`                |Returns the sorted elements of `x` using heap sort
`intro_sort(x)`               |Returns the sorted elements of `x` using intro sort
`insertion_sort(x)`           |Returns the sorted elements of `x` using insertion sort
`is_sorted(x)`                |Returns `True` if the elements of `x` are in ascending order
`is_sorting_method(m)`        |Returns `True` if `m` is a sorting method
`library_sort(x)`             |Returns the sorted elements of `x` using library sort
`merge_sort(x)`               |Returns the sorted elements of `x` using merge sort
`odd_even_sort(x)`            |Returns the sorted elements of `x` using odd-even sort
`quick_sort(x)`               |Returns the sorted elements of `x` using quick sort
`selection_sort(x)`           |Returns the sorted elements of `x` using selection sort
`shell_sort(x)`               |Returns the sorted elements of `x` using shell sort
`tim_sort(x)`                 |Returns the sorted elements of `x` using tim sort
`tree_sort(x)`                |Returns the sorted elements of `x` using tree sort
`patience_sort(x)`            |Returns the sorted elements of `x` using patience sort
`smooth_sort(x)`              |Returns the sorted elements of `x` using smooth sort
`sort(x)`                     |Returns the sorted elements of `x`
`sort(x, m)`                  |Returns the sorted elements of `x` using method `m`
`strand_sort(x)`              |Returns the sorted elements of `x` using strand sort
`tournament_sort(x)`          |Returns the sorted elements of `x` using tournament sort

## Functions to be developed for The Big Project

 * At days 'Data structures' and 'Optimisation'

These are barely (sometimes purposefully vague!) suggestions:

 * if you do not need all, that is OK
 * if you know better, that is OK

Name                          |Purpose
------------------------------|--------------------------------------------------------
`align_dna_seqs(a, b, m)`     |Returns the aligned sequences of DNA sequences `a` and `b` with alignment method `m`
`align_dna_seqs_nw(a, b)`     |Returns the aligned sequences of DNA sequences `a` and `b` with the Needleman-Wunch alignment method
`align_dna_seqs_nw(a, b, p)`  |Returns the aligned sequences of DNA sequences `a` and `b` with the Needleman-Wunch alignment method with parameters `p`
`align_dna_seqs(a, b)`        |Returns the aligned sequences of DNA sequences `a` and `b`
`align_dna_seqs(s)`           |Returns the aligned sequences of the zero, one or more DNA sequences `s`
`align_dna_seqs(s, m)`        |Returns the aligned sequences of the zero, one or more DNA sequences `s` with alignment method `m`
`are_dna_seqs(a)`             |Returns `True` if `a` is zero, one or more DNA sequences
`are_dna_seqs(a, b)`          |Returns `True` if both `a` and `b` are DNA sequences
`check_are_dna_seqs(a, b)`    |Throws a helpful error if either `a` or `b` is not a DNA sequence
`check_are_dna_seqs(s)`       |Throws a helpful error if `s` are not DNA sequences
`check_different(a, b)`       |Throws a helpful error if `a` and `b` are not different
`check_equal(a, b)`           |Throws a helpful error if `a` and `b` are different
`check_is_alignment_method(m)`|Throws a helpful error if `m` is not an alignment method
`check_is_dna_seq(a)`         |Throws a helpful error if `a` is not a DNA sequence
`check_is_nw_params(p)`       |Throws a helpful error if `p` is not a valid Needleman-Wunch parameter data structure
`get_all_alignment_methods()` |Returns the descriptions of all implemented alignment methods
`is_alignment_method(m)`      |Returns `True` if `m` is an alignment method
`is_alignment_score_param(p)` |Returns `True` if `p` a parameter set to score how good an alignment is
`is_dna_seq(s)`               |Returns `True` if `s` is a DNA sequence
`is_nw_params(p)`             |Returns `True` if `p` is a valid Needleman-Wunch parameter data structure
`score_alignment(a)`          |Returns a score for how good an alignment is
`score_alignment(a, p)`       |Returns a score for how good an alignment is, based on parameter set `p`

## Projects overview

Day|Description    |Group size  |Branch model                |CI |Code review |Code
---|---------------|------------|----------------------------|---|------------|----------------------------------------
1  |Introduction   |            | `master`                   |No |No          |.
2  |TDD            |1           | `master`                   |No |No          |[programming_formalisms_tdd](https://github.com/richelbilderbeek/programming_formalisms_tdd)
3  |Testing        |2           | `master`, `develop`        |Yes|No          |[programming_formalisms_testing](https://github.com/richelbilderbeek/programming_formalisms_testing)
4-1|Algorithms     |4           | `master`, `develop`, topic |Yes|No          |[programming_formalisms_algorithms](https://github.com/richelbilderbeek/programming_formalisms_algorithms)
4-2|Data structures|all         | `master`, `develop`, topic |Yes|Pull Request|[programming_formalisms_data_structures](https://github.com/richelbilderbeek/programming_formalisms_data_structures)
5  |Optimisation   |all         | `master`, `develop`, topic |Yes|Pull Request|[programming_formalisms_optimisation](https://github.com/richelbilderbeek/programming_formalisms_optimisation)
