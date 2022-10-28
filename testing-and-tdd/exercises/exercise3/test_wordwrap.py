
from word_wrapper import wrap_words

def test_lgth():
    teststr = "A"*30
    output = wrap_words(teststr, 60)
    assert output == teststr, "ERROR"
