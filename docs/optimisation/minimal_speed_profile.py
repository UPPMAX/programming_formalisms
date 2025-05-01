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

def do_it():
    number = 15485863
    isprime_1(number)
    isprime_2(number)

import cProfile
cProfile.run('do_it()')
