# Exercise 1 - Running a unit test

The file `test.py` contains a unit test. 

1. Inspect the code and see if you understand what it does 
2. Run the test
    1. Make sure you have [python](https://wiki.python.org/moin/BeginnersGuide/Download) and [pip](https://pip.pypa.io/en/stable/installation/) on your computer  
   2. Move to the `exercise1` directory 
   3. Install pytest: `pip install -U pytest`
   4. Run the test: `pytest test.py` 
3. Wreck the code that is tested (the function `reverse_string` in `reverse_string_py`), for example by letting it return `None`
4. Run the test again. What happens?
5. Restore the test and make sure the test passes again
6. (optional) If you normally use an IDE (such as VS Code, PyCharm or similar) open the code there and try to run the test from within the IDE.  