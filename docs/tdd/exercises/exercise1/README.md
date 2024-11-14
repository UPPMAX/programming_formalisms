# Exercise 1 - Running a unit test

The file `test.py` contains a unit test.

- Inspect the code and see if you understand what it does
- Run the test
    - Move to the `exercise1` directory
    - Install pytest: `pip install -U pytest`
    - Run the test: `pytest test.py`
- Wreck the code that is tested
  (the function `reverse_string` in `reverse_string_py`),
  for example by letting it return `None`
- Run the test again. What happens?
- Restore the test and make sure the test passes again
- (optional) If you normally use an IDE (such as VS Code, PyCharm or similar)
  open the code there and try to run the test from within the IDE.
