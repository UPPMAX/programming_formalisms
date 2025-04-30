def isprime_1(num):
    for n in range(2, int(num**0.5) + 1):
        if num % n == 0:
            return False
    return True

def isprime_2(num):
    if num > 1:
        for n in range(2, num):
            if (num % n) == 0:
                return False
        return True
    else:
        return False

if __name__ == '__main__':
    import timeit
    # Go through the first Mersenne primes, from https://en.wikipedia.org/wiki/Mersenne_prime
    for i in (3, 7, 31, 127, 8191, 131071, 524287, 2147483647):
        print("isprime_1", i, timeit.timeit("isprime_1(i)", number = 1, globals = locals()))
        print("isprime_2", i, timeit.timeit("isprime_2(i)", number = 1, globals = locals()))
    