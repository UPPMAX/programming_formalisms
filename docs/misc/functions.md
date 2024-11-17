---
tags:
  - example functions
  - functions
  - examples
---

# Functions

Here are function descriptions, from simple to more complex, to be used in
practicing TDD.


!!! note "`is_zero`"

    - Returns `True` if the input is zero
    - Returns `False` if the input is not zero
    - If the input is not one number, a `TypeError` is raised.

???- question "`is_zero` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

    ```python
    def is_zero(x):
        """Determine if `x` is zero.

        If `x` is not a number, a `TypeError` is raised.

        Returns `True` if `x` is zero
        """
        if not isinstance(x, (int, float)):
            msg = "'number' must be a number. "
            raise TypeError(
                msg,
                "Actual type of 'number': ", type(x),
            )
        return x == 0
    ```

!!! note "`is_even(x)`"

    - Returns `True` if the input is even
    - Returns `False` if the input is not even
    - If the input is not one integer, a `TypeError` is raised.

???- question "`is_even` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

    ```python
    def is_even(x):
        """Determine if `x` is even.

        If `x` is not an integer number, a `TypeError` is raised.

        Returns `True` if `x` is even
        """
        if not isinstance(x, int):
            msg = "'number' must be a number. Actual type of 'number': "
            raise TypeError(
                msg, type(x),
            )
        return x % 2 == 0
    ```

!!! note "`is_odd(x)`"

    - Returns `True` if the input is odd
    - Returns `False` if the input is not odd
    - If the input is not one integer, a `TypeError` is raised.

???- question "`is_odd` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

    ```python
    def is_odd(x):
        """Determine if `x` is odd.

        If `x` is not an integer number, a `TypeError` is raised.

        Returns `True` if `x` is odd
        """
        return not is_even(x)
    ```

    If the function `is_even` is absent, here is a stand-alone implementation:

    ```python
    def is_odd(x):
        """Determine if `x` is odd.

        If `x` is not an integer number, a `TypeError` is raised.

        Returns `True` if `x` is odd
        """
        if not isinstance(x, int):
            msg = "'number' must be a number. Actual type of 'number': "
            raise TypeError(
                msg, type(x),
            )
        return not x % 2 == 0
    ```

!!! note "`is_probability(p)`"

    - Returns `True` if the input is in the range [0.0, 1.0],
      that is from and including zero to and including one
    - Returns `False` if the input is not in that range
    - If the input is not one floating point number, a `TypeError` is raised.

???- question "`is_probability` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

    ```python
    def is_probability(x):
        """Determine if `x` is a probability.

        Determine if `x` is a probability,
        i.e. a value between 0.0 and 1.0, including both 0.0 and 1.0.
        If `x` is not a floating point number, a `TypeError` is raised.

        Returns `True` if `x` is a probability
        """
        if not isinstance(x, float):
            msg = "'number' must be a floating point number. "
            raise TypeError(
                msg,
                "Actual type of 'number': ", type(x),
            )
        min_probability = 0.0
        max_probability = 1.0
        return x >= min_probability and x <= max_probability
    ```

!!! note "`is_number(x)`"

    - Returns `True` if the input is a number
    - Returns `False` if the input is not a number
    - If the input is not one element, a `TypeError` is raised.

???- question "`is_number` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

    ```python
    def is_number(x):
        """Determine if `x` is one number.

        Determine if `x` is one number,
        for example, '42' or '3.14.

        Returns `True` if `x` is one number
        """
        return isinstance(x, (int, float) )
    ```

!!! note "`are_numbers(x)`"

    - Returns `True` if the input is a list of numbers number
    - Returns `False` if the input is not a list of numbers
    - If the input is an empty list, a `TypeError` is raised.

???- question "`are_numbers` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

    ```python
    def are_numbers(x):
        """Determine if `x` is one or more numbers.

        Numbers can be integer or floating point.

        Returns `True` if `x` is one or more numbers.
        """
        if not isinstance(x, list):
            return False
        if len(x) == 0:
            return False
        return all(is_number(e) for e in x)
    ```

!!! note "`get_digits(x)`"

    - Returns the number split into a list of digits, e.g. `314` become `[3, 1, 4]`
    - If the input is not one integer, or is negative, a `TypeError` is raised.

???- question "`get_digits` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/testing.py).

    ```python
    def get_digits(x):
        """Get the digits of an integer number.

        Get the digits of an integer number,
        for example, '123' becomes '[1, 2, 3]'
        and '0' becomes '[0]'.
        Negative numbers have only their digits collected,
        for example, '-123' becomes '[1, 2, 3]'.

        Will raise TypeError if `x` is not an integer.
        """
        if not isinstance(x, int):
            message = "'x' must be an integer"
            raise TypeError(message)
        zero = 0
        if x < zero:
            return get_digits(-x)
        digits = []
        digits_in_numbering_system = 10
        while True:
            digits.insert(0, x % digits_in_numbering_system)
            if x < digits_in_numbering_system:
                return digits
            x = x // digits_in_numbering_system
    ```

???- question "`get_digits` example implementation in a video?"

    - [YouTube video showing how to develop `get_digits` using TDD](https://youtu.be/vmRuSWhdA7c)

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

!!! note "`int_to_roman(x)`"

    - Input: an integer
    - Returns The [a Roman numeral](https://en.wikipedia.org/wiki/Roman_numerals)
      of the same value as a string, e.g. 'IV'

      Input|Expected output
      -----|---------------
      0    |[an empty string]
      1    |I
      2    |II
      3    |III
      4    |IV
      5    |V
      6    |VI
      7    |IX

    - If the input is not one integer that is at least zero, a `TypeError` is raised.

!!! note "`roman_to_int(x)`"

    - Input: [a Roman numeral](https://en.wikipedia.org/wiki/Roman_numerals),
      e.g. `IV`
    - Returns: the integer value of this Roman numeral

      Input|Expected output
      -----|---------------
      I    |1
      II   |2
      III  |3
      IV   |4
      V    |5
      VI   |6
      IX   |9

    - If the input is not one valid roman numeral, a `TypeError` is raised.

???- question "Too easy?"

    Go ahead and write a function to solve
    a question at [Project Euler](https://projecteuler.net/archives).


## Other example implementations

!!! note "TODO: merge"

???- question "`are_strings` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

    ```python
    def are_strings(x):
        """Determine if `x` is one or more strings.

        Returns `True` if `x` is one or more strings.
        """
        if not isinstance(x, list):
            return False
        if len(x) == 0:
            return False
        return all(is_string(e) for e in x)
    ```

???- question "`check_are_strings` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

    ```python
    def check_are_numbers(x):
        """Determine if `x` is one or more numbers.

        If `x` is not one or more numbers, a `RuntimeError` is raised.

        Returns nothing.
        """
        if not are_numbers(x):
            msg = "'x' must be numbers. "
            raise RuntimeError(
                msg,
                "Actual value of 'x': ", x,
            )
    ```


???- question "`check_different` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

    ```python
    def check_different(a, b):
        """Determine if `a` and `b` are different.

        Raises `RuntimeError` when not.

        Returns nothing.
        """
        if a == b:
            msg = "'a' and 'b' must be different. "
            raise RuntimeError(
                msg,
                "Value of 'a': ", a,
            )
    ```

???- question "`check_equal` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

    ```python
    def check_equal(a, b):
        """Determine if `a` and `b` are equal.

        Raises `RuntimeError` when not.

        Returns nothing.
        """
        if a != b:
            msg = "'a' and 'b' must be equal. "
            raise RuntimeError(
                msg,
                "Value of 'a': ", a, ". ",
                "Value of 'b': ", b,
            )
    ```

???- question "`check_is_number` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

    ```python
    def check_is_number(x):
        """Determine if `x` is a number.

        If `x` is not a number, a `RuntimeError` is raised.

        Returns nothing.
        """
        if not is_number(x):
            msg = "'x' must be a number. "
            raise RuntimeError(
                msg,
                "Actual value of 'x': ", x,
            )
    ```

???- question "`check_is_probability` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

    ```python
    def check_is_probability(x):
        """Determine if `x` is a probability.

        If `x` is not a probability, a `RuntimeError` is raised.

        Returns nothing.
        """
        check_is_number(x)
        if not is_probability(x):
            msg = "'x' must be a probability. "
            raise RuntimeError(
                msg,
                "Actual value of 'x': ", x,
            )
    ```

???- question "`is_string` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

    ```python
    def check_is_string(x):
        """Determine if `x` is a string.

        If `x` is not a string, a `RuntimeError` is raised.

        Returns nothing.
        """
        if not is_string(x):
            msg = "'x' must be a string. "
            raise RuntimeError(
                msg,
                "Actual value of 'x': ", x,
            )
    ```

???- question "`divide_safely` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

    ```python
    def divide_safely(a, b):
        """Divide `a` by `b`.

        If `a` or `b` are not a floating point number, a `TypeError` is raised.
        If `b` is `0.0`, a `RuntimeError` is raised.

        Returns `a` divided by `b`
        """
        zero = 0.0
        if b == zero:
            msg = "'b' must not be zero"
            raise RuntimeError(
                msg,
            )
        return a / b
    ```

???- question "`is_dividable_by_three` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

    ```python
    def is_dividable_by_three(x):
        """Determine if `x` is dividable by three.

        If `x` is not an integer number, a `TypeError` is raised.

        Returns `True` if `x` is dividable by three
        """
        if not isinstance(x, int):
            msg = "'number' must be a number. Actual type of 'number': "
            raise TypeError(
                msg, type(x),
            )
        return x % 3 == 0
    ```


???- question "`is_string` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/tdd.py).

    ```python
    def is_string(x):
        """Determine if `x` is one string.

        Returns `True` if `x` one string
        """
        return isinstance(x, str)
    ```

???- question "`flip_coin` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/testing.py).

    ```python
    from random import randint

    def flip_coin():
        """Produce a random boolean."""
        return randint(0, 1) > 0 # noqa: S311
    ```

???- question "`roll_dice` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/testing.py).

    ```python
    from random import randint

    def roll_dice():
        """Produce a random integer, similar to a dice toll."""
        return randint(1, 6) # noqa: S311
    ```

???- question "`sum_primes` example implementation"

    Copied from [here](https://github.com/programming-formalisms/programming_formalisms_example_project/blob/main/src/pf_example/testing.py).

    ```python
    def sum_primes(num):
        """Calculate the sum of all primes up to the given number."""
        if not isinstance(num, int):
            message = "'num' must be an integer"
            raise TypeError(message)
        primes = []
        two = 2
        if num > two:
            primes.append(two)
        elif num == two:
            return(two)
        else:
            return(0)
        for i in range(3, num+1, 2):
            not_prime = False
            for j in range(1, i):
                if i%j == 0 and j != 1:
                    not_prime = True
                    break
            if not not_prime:
                primes.append(i)
        return sum(primes)
    ```
