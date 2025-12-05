class Individual:
    def __init__(self, phenotype):
        """Genotype, a value from 0 to and including 9"""
        assert isinstance(phenotype, int)
        assert phenotype >= 0
        assert phenotype <= 9
        self._phenotype = phenotype
    def get_phenotype(self):
        """Genotype, a value from 0 to and including 9"""
        return self._phenotype

def calc_fitness(phenotype):
    """Complex calculation."""
    assert isinstance(phenotype, int)
    assert phenotype >= 0
    assert phenotype <= 9
    return (phenotype + 5) % 10 # Imagine something complex here

def create_phenotype_fitness_lookup_table():
    lut = dict()
    for phenotype in range(10):
        assert phenotype >= 0
        assert phenotype <= 9
        lut[phenotype] = calc_fitness(phenotype)
    return lut


n_individuals = 1000
population = []
for i in range(n_individuals):
    population.append(Individual(i % 10))
assert len(population) == n_individuals

# Calculate the fitness each time
for i in range(n_individuals):
    phenotype = population[i].get_phenotype()
    fitness = calc_fitness(phenotype) # Complex calculation
    # Do something with the fitness

# Use a lookup table
phenotype_fitness_lookup_table = create_phenotype_fitness_lookup_table()
for i in range(n_individuals):
    phenotype = population[i].get_phenotype()
    fitness = phenotype_fitness_lookup_table[phenotype] # Look up the value
    # Do something with the fitness

assert 1 == 2
