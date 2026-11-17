import cProfile

def do_it():
    print('Hello world')

cProfile.run('do_it()')
