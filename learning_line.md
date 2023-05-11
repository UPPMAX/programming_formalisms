# Learning line

> See bottom for the functions to-be-developed for The Big Project

## Tuesday part 1: Paradigms, Introduction to formalised development

## Tuesday part 2: TDD

> Goal: students have done multiple TDD cycles

 * [x] Why is TDD important?
 * [x] What is TDD?
 * [x] What is the TDD cycle?
 * [x] How the git history of TDD cycle looks like
 * [ ] Why TDD gives better software architecture
 * [ ] Why helpful error messages are important
 * [ ] How TDD allows for more helpful error messages
 * [ ] Why tests are valuable: they are what you discuss with your boss
 * [ ] Different types of tests: unit tests, etc.
 * [ ] [Hamcrest notation](https://en.wikipedia.org/wiki/Hamcrest)
 * [ ] Writing functions for tests
 * [ ] Testing frameworks (and why not in course)

Other activities:

 * Collect GitHub usernames
 * Big project: individual repo with design

> Evaluation: git history on students's repositories

## Wednesday part 1: social coding, pair programming as a tool for rapid development

## Wednesday part 2: TDD

> Goal: students have done multiple TDD cycles socially

 * [ ] Add CI to TDD development
 * [ ] Add build badge
 * [ ] Add linter CI script
 * [ ] Add Markdown spellcheck
 * [ ] Add broken links checker
 * [ ] Measure codecov
 * [ ] Do PR to demonstrate a bug

Other activities:

 * Rotate pairs
 * Big project: shared repo with simple tests

> Evaluation: Code on multiple GitHub tested thoroughly by GHA, developed by groups

## Thursday part 1: algorithms

> Goal: students have created multiple different types of algorithms

 * [ ] What is a good algorithm
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
 * [ ] Using data structures to simplify algorithsm, e.g. use an ordered set to sort
 * [ ] Big O
 * [ ] Data structure: `dict`, for NW parameters

> Evaluation: Code on multiple GitHub tested thoroughly by GHA, developed by groups

## Thursday part 2: TDD

> Goal: students have develop tested code together

 * Recursive tests
 * Beyoncé principle
 * YAGNI
 * DRY

> Evaluation: Code on multiple GitHub tested by GHA, 100% codecov, developed by groups

## Friday part 1: Modular programming

## Friday part 2: Optimization

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

Name                          |Purpose
------------------------------|-----------------------------------------------------------------------
`are_numbers(x)`              |Returns `True` if `x` is zero, one or more numbers
`check_are_numbers(x)`        |Throws a helpful error if `x` is not zero, one or more numbers
`check_different(a, b)`       |Throws a helpful error if `a` and `b` are not different
`check_equal(a, b)`           |Throws a helpful error if `a` and `b` are different
`check_is_number(x)`          |Throws a helpful error if `x` is not a number
`check_is_probability(p)`     |Throws a helpful error if `p` is not a probability (i.e. a chance of something happening)
`check_is_string(x)`          |Throws a helpful error if `s` is not a string
`divide(a, b)`                |Divide `a` by `b`, throws a helpful error if `b` is zero
`is_dividable_by_three(x)`    |Returns `True` if `x` is dividable by 3
`is_even(x)`                  |Returns `True` if `x` is even
`is_number(x)`                |Returns `True` if `x` is a number
`is_odd(x)`                   |Returns `True` if `x` is odd
`is_probability(p)`           |Returns `True` if `p` is a probability (i.e. a chance of something happening)
`is_string(x)`                |Returns `True` if `s` is a string
`is_zero(x)`                  |Returns `True` if `x` is zero
`sum_digits(x)`               |Returns the sum of the digits of number `x`

### Medium

Name                          |Purpose
------------------------------|-----------------------------------------------------------------------
`are_primes(x)`               |Returns `True`/`False` for each element in `x` being prime yes/no
`are_primes(x, m)`            |Returns `True`/`False` for each element in `x` being prime yes/no using method `m`
`calc_p_is_prime(x, m)`       |Returns the change that number `x` is prime using method `m`
`can_use_prime_method(x, m)`  |Returns `True` if `m` is a prime finding method that can be used on `x`
`get_all_prime_methods()`     |Returns all prime finding methods
`get_digits(n)`               |Returns all the digits of number `n`
`get_proper_divisors(n)`      |Returns all proper divisors of number `n`
`is_palindrome(n)`            |Returns `True` if the number `n` is a palindrome
`is_palindrome(s)`            |Returns `True` if the string `s` is a palindrome
`is_perfect(x)`               |Returns `True` if `x` is a perfect number
`is_prime(x)`                 |Returns `True` if `x` is prime
`is_prime(x, m)`              |Returns `True` if `x` is prime using method `m`
`is_prime_td(x)`              |Returns `True` if `x` is prime using the Trial Division method
`is_prime_ss(x)`              |Returns `True` if `x` is likely to be prime using the Solovay-Strassen method
`is_prime_ss(x, p)`           |Returns `True` if `x` is likelier than probability `p` to be prime using the Solovay-Strassen method
`is_prime_method(m)`          |Returns `True` if `m` is a prime finding method
`is_roman_number(s)`          |Returns `True` if `s` is a string that is a roman number
`to_roman_number(s)`          |Returns a number equivalent to the roman number that is string `s`

### Hard

Name                          |Purpose
------------------------------|-----------------------------------------------------------------------
`calc_p_is_prime_ss(x)`       |Returns the change that number `x` is prime using the Solovay-Strassen primality method
`is_coprime(a, b)`            |Returns `True` is `a` is coprime to `b`
`is_mersenne_prime(x)`        |Returns `True` if `x` is a Mersenne prime
`is_proth_prime(x)`           |Returns `True` if `x` is a Proth prime
`is_factorial_prime(x)`       |Returns `True` if `x` is a factorial prime
`is_primorial_prime(x)`       |Returns `True` if `x` is a primorial prime
`is_twin_prime(x)`            |Returns `True` if `x` is a twin prime
`is_perfect_power(x)`         |Returns `True` if `x` is a perfect power
`is_prime_aks(x)`             |Returns `True` if `x` is prime using the Agrawal-Kayal-Saxena primality test
`is_prime_bsw(x)`             |Returns `True` if `x` is likely to be prime using the Baillie-PSW primality test
`is_prime_mr(x)`              |Returns `True` if `x` is likely to be prime using the Miller-Rabin primality test
`is_prime_ec(x)`              |Returns `True` if `x` is prime using an elliptic curve primality test
`is_prime_ec(x, m)`           |Returns `True` if `x` is prime using the elliptic curve primality test `m`
`is_prime_eccm(x)`            |Returns `True` if `x` is prime using the complex multiplication elliptic curve primality test
`is_prime_ecpp(x)`            |Returns `True` if `x` is prime using the Atkin-Morain elliptic curve primality test
`is_prime_ecgk(x)`            |Returns `True` if `x` is prime using the Goldwasser-Kilian elliptic curve primality test

## Functions to be developed for The Big Project

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
`is_dna_seq(s)`               |Returns `True` if `s` is a DNA sequence
`is_nw_params(p)`             |Returns `True` if `p` is a valid Needleman-Wunch parameter data structure






