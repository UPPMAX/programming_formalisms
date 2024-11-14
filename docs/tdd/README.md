# TDD

!!!- info "Learning objectives"

    - Understand what TDD is
    - Understand why TDD is important
    - Practice TDD

???- question "For teachers"

    Prerequisites are:

    - Learners have practiced pair programming
    - Learners can do the git basic workflow on `master`

    Teaching goals are:

    - Learners understand what TDD is
    - Learners understand why TDD is important
    - Learners have done multiple TDD cycles

    Teaching form used:

    - Pair programming
    - `master` branch

    Prior knowledge questions:

    - How do you grow/develop your code?
    - How do others grow/develop their code?
    - Why would it be important to have a formal way to grow/develop your code?

    Lesson plan:

    ```mermaid
    gantt
      title Lesson plan TDD 1
      dateFormat X
      axisFormat %s
      Pair programming: done, 0, 30
      Theory: extra, 30, 45
    ```

    ```mermaid
    gantt
      title Lesson plan TDD 2
      dateFormat X
      axisFormat %s
      Exercise 1: crit, exercise_1, 0, 20s
      Feedback 1: feedback_1, after exercise_1, 10s
      Retrospect: crit, 30, 15s
    ```

## Introduction

Test-driven development (TDD) is a systematic way to grow code,
used in academia and industry. It works `[Martin, 2011]`!

![A TDD developer](tdd_hat_2.jpg)

> A TDD developer

![The TDD cycle](tdd_cycle_2.jpg)

> The TDD cycle

The TDD cycles end when you cannot break your function anymore `[Beck, 2022][Langr, 2013]`.

Advantages of TDD are:

- TDD makes developers more productive `[Erdogmus & Morisio, 2005]`
- TDD increases quality of the code 
  `[Erdogmus & Morisio, 2005][Alkaoud & Walcott, 2018][Janzen & Saiedian, 2006]`
    - There are plenty of costly programming mistakes documented!
- TDD helps shape the project architecture `[Mayr, 2005]`
- TDD helps better modularisation `[Madeyski et al., 2010]`

Developers do really do this `[Beck, 2022][Langr, 2013]`, even
though TDD takes longer (but note `[study I cannot find]`):

Study                     | Extra time | Effect
--------------------------|------------|-------------------------------
`[George & Williams, 2004]` | 16%        | 18% more black-box tests pass
`[Bhat & Nagappan, 2006]`   | 15%        | 2x higher code quality
`[Nagappan et al., 2008]`   | 15-35%     | 40%-90% less defects

We will discuss formal testing later, but now note that
testing is not about finding bugs [Thomas & Hunt, 2019, tip 66],
instead a test is the first user of your code [Thomas & Hunt, 2019, tip 67].

## Exercises

!!! note "Technical rules"

    - Use the GitHub repository for the learners of this course, 
    - Work on the main branch
    - Work in a file called `learners/[your_name]/[class_name].py`,
        where `[your_name]` is the person with first name first in alphabet
    - Errors should never pass silently `[Zen Of Python]`

!!! note "Social rules"

    - Ping-Pong Pair programming
    - Discuss how and when to switch roles first!
    - Person with first name first in alphabet starts
    - Try to be **an exemplary duo**

### Exercise 0: `is_zero`

???- note "Learning objectives"

    - First practice of TDD by re-doing a function that has been developed

Develop the function `is_zero` with the technical and social rules
showed at 'Exercises'.

!!! note "`is_zero`"

    - Function name: `is_zero`
    - Output:
      - Returns `True` if the input is zero
      - Returns `False` if the input is not zero
      - :warning: Gives an error when the input is not a number

???- info "Answer"

    Note that the practice of TDD is the goal of the exercise,
    not the exact outcome. 

    Here is a possible solution:

    ```python
    def is_zero(x):
        """Determines if the input is one integer that is zero"""
        if not isinstance(x, int):
            raise TypeError("'x' must be of type int")
        if x == 0:
            return True
        return False

    assert is_zero.__doc__
    assert is_zero(0)
    assert not is_zero(1)

    has_thrown = False
    try:
        is_zero("nonsense")
    except TypeError:
        has_thrown = True
    assert has_thrown
    ```

???- question "Need a video?"

    Here are two videos that show how to develop `is_zero` for Python and R:

    - [**Python video for 'is_zero'**](https://youtu.be/VddlrNOeodg), from 3:02
    - [R video for 'is_one'](https://youtu.be/IPGfW4lrxOc)

### Exercise 1: `is_even`

???- note "Learning objectives"

    - Practice of TDD by developing a slightly more complicated function

Develop a function called `is_even`:

???- note "`is_even`"

    - Function name: `is_even`
    - Output:
      - Returns `True` if the input is even
      - Returns `False` if the input is not even
      - :warning: Gives an error when the input is not a number

???- info "Answer"

    Note that the practice of TDD is the goal of the exercise,
    not the exact outcome. 

    Here is a possible solution:

    ```python
    def is_even(x):
        if not isinstance(x, int):
            raise TypeError("'x' must be of type int")
        """Determine if the input is one integer that is even"""
        return x % 2 == 0

    assert is_even.__doc__
    assert is_even(2)
    assert not is_even(1)

    # 'is_even("nonsense")' throws a TypeError 
    # because of the modulo operator

    has_thrown = False
    try:
        is_even(0.0)
    except TypeError:
        has_thrown = True
    assert has_thrown
    
    ```

???- question "Need a video?"

    Here are a videos that show how to develop `is_even`:

    - [Python](https://youtu.be/ZcgJEdaRRpc)
    - [R](https://youtu.be/4NBsCis584U?si=A7k5w9fLAwAJc3ta)

### Exercise 2: `is_odd`

???- note "Learning objectives"

    - Practice of TDD by developing a slightly more complicated function

Develop a function called `is_odd`:

???- note "`is_odd`"

    - Function name: `is_odd`
    - Output:
      - Returns `True` if the input is odd
      - Returns `False` if the input is not odd
      - :warning: Gives an error when the input is not a number

Consider using the `is_even` function.

???- info "Answer"

    Note that the practice of TDD is the goal of the exercise,
    not the exact outcome. 

    Here is a possible solution:

    ```python
    def is_even(x):
        """Determine if the input is one integer that is even"""
        if not isinstance(x, int):
            raise TypeError("'x' must be of type int")
        return x % 2 == 0

    assert is_even.__doc__
    assert is_even(2)
    assert not is_even(1)

    # 'is_even("nonsense")' throws a TypeError 
    # because of the modulo operator

    has_thrown = False
    try:
        is_even(0.0)
    except TypeError:
        has_thrown = True
    assert has_thrown

    def is_odd(x):
        """Determine if the input is one integer that is odd"""
        return not is_even(x)

    assert is_odd.__doc__
    assert is_odd(1)

    # Already passes, consider not putting it in
    # assert not is_odd(2)

    # Already passes, consider not putting it in
    # has_thrown = False
    # try:
    #     is_odd(0.0)
    # except TypeError:
    #     has_thrown = True
    # assert has_thrown
    ```

???- question "Need a video?"

    Here is a videos that show how to develop `is_odd`:

    - [Python](https://youtu.be/BxyIsJw3E14)
    - [R](https://youtu.be/Lah3fm3lUiA?si=40JdVJAO3oBcjrkH)

### Exercise 3: `is_probability`

???- note "Learning objectives"

    - Practice of TDD by developing a slightly more complicated function

Develop a function called `is_probability`.

!!! note "`is_probability`"

    - Function name: `is_probability`
    - Output:
      - Returns `True` if the input is in the range [0.0, 1.0],
        that is from (and including) zero to (and including) one.
      - Returns `False` if the input is not a probability
      - :warning: Gives an error when the input is not one number

???- info "Answer"

    Note that the practice of TDD is the goal of the exercise,
    not the exact outcome. 

    Here is a possible solution:

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

### Exercise 4: `is_prime`

???- note "Learning objectives"

    - Practice of TDD by developing a slightly more complicated function

Develop a function called `is_prime`.

!!! note "`is_prime`"

    - Function name: `is_prime`
    - Output:
      - Returns `True` if the input is a prime number.
      - Returns `False` if the input is not a prime number.
      - :warning: Gives an error when the input is not one number

???- question "Need a video?"

    Here is a videos that show how to develop `is_prime`:

    - [Python](https://youtu.be/qVtHieuwM1M)
    - [R](https://youtu.be/JtM_YSrbiek?si=KgumBG-S0e_3daUU)

### Exercise 5: practice

???- note "Learning objectives"

    - Practice of TDD

Go to [the Programming Formalisms page 'functions to practice TDD'](../misc/functions.md).
Pick a function at your level.

!!! note "Technical rules"

    - Use the shared GitHub repository for the learners of this course
    - Pick a branching model. When unsure, work on `main`
    - Use no testing framework or `unittest`. When unsure, use no testing frameworks
      - No testing framework: work in a file called `learners/[your_names]/[function_name].py`, e.g. `learners/anna_and_bertil/is_zero.py`
      - `unittest` framework: work in a file in the `src` folder (e.g. `src/anna_and_bertil_utils.py`), write the tests in the `tests` folder, e.g. `tests/test_anna_and_bertil_utils.py` 

!!! note "Social rules"

    - Ping-Pong Pair programming
    - Discuss how and when to switch roles first
    - Person with first name first in alphabet starts
    - Try to be **an exemplary duo**

!!! note "Signs you are doing great"

    In an online course:

    - A good pair has the driver sharing his/her screen
    - In a good pair, both people talk a lot
    - A good pair switches roles regularly
    - A good pair has a lot of commits

## Conclusion

- This session, we wrote **unit tests**
- It is only those your boss may read
- The literature assumes a responsible programmer writes tests,
    in C++ `[Stroustrup & Sutter, 2017]`,
    R `[Wickham, 2019]` and Python `[PEP 8]`

## Discussion

- We only test manually
- We only test on our own computer
- We are not sure if our functions are tested completely
- We do not test the code for style
- We should consider using a testing framework

## Videos

Title                        |Length   | YouTube
-----------------------------|---------|----------------------------------------
TDD 1/3: TDD                 |  5 mins | [Python](https://youtu.be/gw_4jVrkDok)
TDD 2/3: `is_zero`           | 16 mins | [Python](https://youtu.be/VddlrNOeodg)
TDD 3/3: Introduce `is_even` |  3 mins | [Python](https://youtu.be/7V-zE__S6M8)
Solution `is_even`           | 12 mins | [Python](https://youtu.be/ZcgJEdaRRpc)
.                            | 12 mins | [R](https://youtu.be/4NBsCis584U?si=OI0wJKVyw92mpSh-)
TDD 2: introduce `is_odd`    |  7 mins | [Python](https://youtu.be/f4MCy9f8oAM)
Solution `is_odd`            |  7 mins | [Python](https://youtu.be/BxyIsJw3E14)
.                            | 12 mins | [R](https://youtu.be/Lah3fm3lUiA?si=VzYum9nmkDPCQEzf)
TDD 3: TDD bottom line       |  4 mins | [Python](https://youtu.be/633qwj2DUNc)
Solution `is_prime`          |  9 mins | [Python](https://youtu.be/qVtHieuwM1M)
.                            |       . | [R](https://youtu.be/JtM_YSrbiek?si=KgumBG-S0e_3daUU)

## References

- `[Alkaoud & Walcott, 2018]` Alkaoud, Hessah, and Kristen R. Walcott. "Quality metrics of test suites in test-driven designed applications." International Journal of Software Engineering Applications (IJSEA) 2018 (2018).

![](beck_tdd_by_example.jpg)

- `[Beck, 2022]` Beck, Kent. Test driven development: By example. Addison-Wesley Professional, 2022.
- `[Bhat & Nagappan, 2006]` Bhat, Thirumalesh, and Nachiappan Nagappan. "Evaluating the efficacy of test-driven development: industrial case studies." Proceedings of the 2006 ACM/IEEE international symposium on Empirical software engineering. 2006.
- `[Erdogmus & Morisio, 2005]` Erdogmus, Hakan, Maurizio Morisio, and Marco Torchiano. "On the effectiveness of the test-first approach to programming." IEEE Transactions on software Engineering 31.3 (2005): 226-237.
- `[George & Williams, 2004]` George, Boby, and Laurie Williams. "A structured experiment of test-driven development." Information and software Technology 46.5 (2004): 337-342.
- `[Janzen & Saiedian, 2006]` Janzen, David S., and Hossein Saiedian. "Test-driven learning: intrinsic integration of testing into the CS/SE curriculum." Acm Sigcse Bulletin 38.1 (2006): 254-258.

![](book_langr.jpg)

- `[Langr, 2013]` Langr, Jeff. Better, Code, and Sleep Better. "Modern C++ Programming with Test-Driven Development." (2013).
- `[Madeyski et al., 2010]` Madeyski, Lech, and Gestión de sistemas de información. Test-driven development: An empirical evaluation of agile practice. Heidelberg: Springer, 2010.

![](martin_the_clean_coder.jpg)

- `[Martin, 2011]` Martin, Robert C. The clean coder: a code of conduct for professional programmers. Pearson Education, 2011.
- `[Mayr, 2005]` Mayr, Herwig. Projekt Engineering: Ingenieurmäßige Softwareentwicklung in Projektgruppen. Hanser Verlag, 2005.
- `[Nagappan et al., 2008]` Nagappan, Nachiappan, et al. "Realizing quality improvement through test driven development: results and experiences of four industrial teams." Empirical Software Engineering 13 (2008): 289-302.
- `[PEP 8]` Van Rossum, Guido, Barry Warsaw, and Nick Coghlan. "PEP 8–style guide for python code." Python. org 1565 (2001): 28.
- `[Stroustrup & Sutter, 2017]` Stroustrup, Bjarne, and Herb Sutter. "C++ Core Guidelines (2017)." [http://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines](http://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines). (Cited on pages 100 and 103) (2015).
- `[study I cannot find]` in one of the classics, there was a bar chart that
  showed developers write functions such as `is_prime` with and without TDD
  and showed that TDD was twice as fast. TODO: find this reference

![](thomas_and_hunt_the_pragmatic_programmer.jpg)

- `[Thomas & Hunt, 2019]` Thomas, David, and Andrew Hunt. The Pragmatic Programmer: your journey to mastery. Addison-Wesley Professional, 2019.
- `[Wickham, 2019]` Wickham, Hadley. Advanced R. Chapman and Hall/CRC, 2019.

![](python_logo.png)

- `[Zen of Python]` [Zen Of Python: 'Errors should never pass silently'](https://peps.python.org/pep-0020/#the-zen-of-python)

