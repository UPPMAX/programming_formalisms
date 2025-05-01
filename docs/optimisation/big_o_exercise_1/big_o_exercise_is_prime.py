def is_prime(num):
    return is_prime_1(num)

def is_prime_1(num):
    if num > 1:
        for n in range(2, num):
            if (num % n) == 0:
                return False
        return True
    else:
        return False

def is_prime_2(num):
    for n in range(2, int(num**0.5) + 1):
        if num % n == 0:
            return False
    return True

def get_test_prime():
    return 15485863

def get_t_is_prime_1_impl():
    is_prime_1(get_test_prime())

def get_t_is_prime_2_impl():
    is_prime_2(get_test_prime())

def get_t_is_prime_1():
    import timeit
    return timeit.timeit(get_t_is_prime_1_impl, number = 1)
    
def get_t_is_prime_2():
    import timeit
    return timeit.timeit(get_t_is_prime_2_impl, number = 1)


assert get_t_is_prime_2() * 10 < get_t_is_prime_1()

print(get_test_prime(), get_t_is_prime_1(), ", ", get_t_is_prime_2())
    