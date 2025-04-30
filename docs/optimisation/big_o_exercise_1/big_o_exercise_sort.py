import numpy

def builtin_sort(values):
    sorted(values)

def bubble_sort(values):
    pass

def shuffle_sort(values):
    pass

def create_values(n_elements):
    return numpy.random.rand(n_elements)


if __name__ == '__main__':
    import timeit
    # Go through the first Mersenne primes, from https://en.wikipedia.org/wiki/Mersenne_prime
    for size_exponents in range(2, 6):
        n_elements = 10 ** size_exponents
        values = create_values(n_elements)
        assert values.size == n_elements
        print("builtin_sort", n_elements, timeit.timeit("builtin_sort(values)", number = 1, globals = locals()))
    