# Exercise 3 - Word-wrapping

Exercises taken from the now removed website 'the TDD Community of Practice

Let's pretend that you work with a word editor and there is need for a function which wraps lines which does
not fit the screen horizontally into several shorter lines. Your task is to use implement this function using TDD.

In the `word_wrapper.py` file there is a stub implementation `wrap_words(s, row_length)` you can call in your first
unit test.

## Inputs

1. A string to be wrapped
2. A row length, specifying how many characters a row can take

## Output

A list of word-wrapped rows (strings)

## Examples of behaviour

* If the row-length is 60, and the input string is 30, the result is just the input string
* If the row-length is 3, and the input string is "abc def" the result is ["abc", "def"]
* If the row-length is 3, and the input string is "abcdef" the result is ["abc", "def"]
* If the row-length is 3, and the input string is "abcdef abc" the result is ["abc", "def", "abc"]
* With row length 3 and "a b c d e f" the result is ["a b", "c d", "e f"]
