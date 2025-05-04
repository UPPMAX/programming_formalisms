def divide_by_1(numerator, denominator):
    # Numerator is a floating point number
    # Denominator is a floating point number
    # Numerator is not zero
    return (numerator / denominator)

def divide_by_2(numerator, denominator):
    assert isinstance(numerator, float)
    assert isinstance(denominator, float)
    assert(denominator != 0.0)
    return (numerator / denominator)

def divide_by_3(numerator, denominator):
    assert isinstance(numerator, (float, int))
    assert isinstance(denominator, (float, int))
    assert type(numerator) == type(denominator)
    assert(denominator != 0.0)
    return (numerator / denominator)

print(divide_by_3(3, 4))

def read_file_1(filename):
    file = open(filename, "r")
    content = file.read()
    file.close()
    return content

def read_file_2(filename):
    # The path to the filename exists
    # The file is readable
    file = open(filename, "r")
    content = file.read()
    file.close()
    return content

def read_file_3(filename):
    import os
    assert os.path.isfile(filename)
    assert os.access(filename, os.R_OK)

    file = open(filename, "r")
    content = file.read()
    file.close()
    return content

print(read_file_3("Desktop"))
