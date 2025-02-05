# Scripts

Scripts that are used by the continuous integration services,
or general-purpose ones.

## [check_schedule.R](check_schedule.R)

Checks if [the schedule](https://uppmax.github.io/programming_formalisms/schedule/)
is correct, i.e. all topics follow the right order.

It works on the file [constraints.csv](constraints.csv),
which looks similar to this:

```text
topic,prerequisite
TDD,assert
[more rows]
```

This means it will look for the lines with 'TDD' and 'assert'
and tests that the prerequisite ('assert') is earlier in the schedule
than the topic ('TDD').

