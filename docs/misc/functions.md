# Functions

Here are function descriptions, from simple to more complex, to be used in
practicing TDD.

???- question "Need an example implementation?"

    Example implementations can be found [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

!!! note "`is_zero`"

    - Returns `True` if the input is zero
    - Returns `False` if the input is not zero
    - If the input is not one number, a `TypeError` is raised.

!!! note "`is_even(x)`"

    - Returns `True` if the input is even
    - Returns `False` if the input is not even
    - If the input is not one integer, a `TypeError` is raised.

!!! note "`is_odd(x)`"

    - Returns `True` if the input is odd
    - Returns `False` if the input is not odd
    - If the input is not one integer, a `TypeError` is raised.

!!! note "`is_probability(p)`"

    - Returns `True` if the input is in the range [0.0, 1.0],
      that is from and including zero to and including one
    - Returns `False` if the input is not in that range
    - If the input is not one floating point number, a `TypeError` is raised.

!!! note "`is_number(x)`"

    - Returns `True` if the input is a number
    - Returns `False` if the input is not a number
    - If the input is not one element, a `TypeError` is raised.

!!! note "`are_numbers(x)`"

    - Returns `True` if the input is a list of numbers number
    - Returns `False` if the input is not a list of numbers
    - If the input is an empty list, a `TypeError` is raised.

!!! note "`get_digits(x)`"

    - Returns the number split into a list of digits, e.g. `314` become `[3, 1, 4]`
    - If the input is not one integer, or is negative, a `TypeError` is raised.

    - [YouTube video showing how to develop it using TDD](https://youtu.be/vmRuSWhdA7c)

!!! note "`is_roman_numeral(x)`"

    - Returns `True` if the input is a roman numeral, 
      e.g. 'I', 'II', 'IV', 'XI', etc.
    - Returns `False` if the input is not a roman numeral
    - If the input is not one String, a `TypeError` is raised.

!!! note "`sum_divisors(x)`"

    - Returns the sum of [the proper divisors](https://en.wikipedia.org/wiki/Divisor#proper_divisor) 
      of the input. For example, the proper divisors of 4 are 1 and 2,
      as 4 can be divided by both 1 and 2.

      Input|Expected output
      -----|---------------
      1    |0
      2    |1
      3    |1
      4    |1+2=3
      5    |1
      6    |1+2+3=6
      7    |1
      8    |1+2+4=7

    - If the input is not one integer that is at least one, a `TypeError` is raised.

!!! note "`is_prime`"

    - Function name: `is_prime`
    - Output:
      - Returns `True` if the input is a prime number.
      - Returns `False` if the input is not a prime number.
      - :warning: Gives an error when the input is not one number

???- question "Too easy?"

    Go ahead and write a function to solve
    a question at [Project Euler](https://projecteuler.net/archives).
