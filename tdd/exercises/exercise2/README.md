# Exercise 2 - Refactoring 

The file `research.py` contains a class `ResearchSubjects` which has methods to `add`, `find`, `update` and `remove` subjects. 

There are two sets of unit test for this class - `testsA.py` and `testsB.py`.

1. Get acquainted with the code - both the production code (`research.py`) and the two test files.
2. Run the two different test files and make sure all tests pass (run `pytest testsA.py` in the `exercise2` directory)
3. Looking at the test code, which of the two sets (`testsA.py` and `testsB.py`) is better?
4. The `ResearchSubjects` keeps a list to store the research subjects internally. 
Refactor the class the store the subjects in a dictionary (`Dict`) with the subject identifiers as keys instead. 
What happens to the tests? 
