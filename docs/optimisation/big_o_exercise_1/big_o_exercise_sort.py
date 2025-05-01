import random
from random import seed, shuffle

def is_sorted(values):
    """Determine if `values` is sorted.

    Returns `True` if the values are sorted.
    """
    return values == sorted(values)

def builtin_sort(values):
    return sorted(values)

def bubble_sort(values):
    # Adapted from https://www.geeksforgeeks.org/python-program-for-bubble-sort/
    for n in range(len(values) - 1, 0, -1):
        swapped = False  
        for i in range(n):
            if values[i] > values[i + 1]:
                values[i], values[i + 1] = values[i + 1], values[i]
                swapped = True
        if not swapped:
            break
    return values

def shuffle_sort(values):
    while True:
        if (is_sorted(values)):
            return values
        shuffle(values)

def create_values(n_elements):
    return random.sample(range(100), n_elements)

def test():
    seed(42)
    n_values = 4
    values = create_values(n_values)
    assert len(values) == n_values
    assert not is_sorted(values)
    sorted_values_1 = builtin_sort(values[:])
    assert not is_sorted(values)
    sorted_values_2 = bubble_sort(values[:])
    assert not is_sorted(values)
    sorted_values_3 = shuffle_sort(values[:])
    assert not is_sorted(values)
    assert sorted_values_1 == sorted_values_2
    assert sorted_values_1 == sorted_values_3


if __name__ == '__main__':
    import timeit

    test()
    seed(42)

    for size_exponents in range(1, 4):
        n_elements = 2 ** size_exponents
        values = create_values(n_elements)
        print("builtin_sort", n_elements, timeit.timeit("builtin_sort(values[:])", number = 1, globals = locals()))
        print("bubble_sort", n_elements, timeit.timeit("bubble_sort(values[:])", number = 1, globals = locals()))
        print("shuffle_sort", n_elements, timeit.timeit("shuffle_sort(values[:])", number = 1, globals = locals()))
