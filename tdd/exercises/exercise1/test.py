from reverse_string import reverse_string


def test_reverse():
    # Arrange - set up the test case
    s = 'paris'

    # Act - perform the action we are testing
    result = reverse_string(s)

    # Assert - check that the action performed correctly
    assert result == 'sirap'
