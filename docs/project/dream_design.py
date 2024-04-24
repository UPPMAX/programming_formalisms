
def create_parameters():
    return []

def read_parameters_from_file(filename):
    return []

def create_experiment(parameters = []):
    return parameters

def run(experiment):
    return 42

def save(results, filename):
    pass

parameters = create_parameters()
experiment = create_experiment()
experiment = create_experiment(parameters)

results = run(experiment)
save(results, "my_results.csv")
