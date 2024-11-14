# Extra refactoring exercise: tennis

The file `tennis.py` contains a class `TennisGame`
which is used to keep track of the score in a tennis game.
Tennis has a quite peculiar scoring system
(see [wikipedia](https://en.wikipedia.org/wiki/Tennis#Scoring)
for a description).

The `TennisGame` has a method `player_1_won()` to be called
when player one wins a ball
and a second method `player_2_won()` to be called when player
two wins a ball.
Both these methods return the current score.

There are two sets of unit test for this class:
- `testsA.py`
- `testsB.py`.

- Get acquainted with the code - both the production code (`tennis.py`)
  and the two test files.
- Run the two different test files and make sure all tests pass
  (run `pytest testsA.py` in the `exercise2` directory)
- Looking at the test code, which of the two sets
  (`testsA.py` and `testsB.py`) is better?
- The `TennisGame` class seems to work as intended, but has a some issues.
  For example, it allows a state where both player have _advantage_,
  something that is impossible in real life.
  Refactor the class to keep the number of balls won instead of the point score.
  That is, change the class definition
  to something like:

```python
class TennisGame:

    def __init__(self):
        self.__numberOfBallsWon1 = 0
        self.__numberOfBallsWon2 = 0
```

and its methods accordingly. What happens to the tests if you do this?
