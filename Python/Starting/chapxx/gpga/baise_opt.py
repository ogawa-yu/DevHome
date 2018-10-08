import random

from deap import base, creator, tools

creator.create("FitnessMax", base.Fitness, weights=(1.0,))
creator.create("Individual", list, fitness=creator.FitnessMax)

toolbox = base.Toolbox()

toolbox.register("attr_bool", random.randint, 0, 1)
toolbox.register(
    "individual",
    tools.initRepeat,
    creator.Individual,
    toolbox.attr_bool, 100)
toolbox.register(
    "population",
    tools.initRepeat,
    list, toolbox.individual)


def eval_onemax(individual):
    return sum(individual)


toolbox.register("evaluate", eval_onemax)
toolbox.register("mate", tools.cxTwoPoint)
toolbox.register("mutate", tools.mutFlipBit, indpb=0.05)
toolbox.register("select", tools.selTournament, tournsize=3)


def main():
    random.seed(64)
    pop = toolbox.population(n=300)
    crossover_prob, mutate_prob, ngen = 0.5, 0.2, 40

    fitnesses = list(map(toolbox.evaluate, pop))
    for individual, fit, in zip(pop, fitnesses):
        individual.fitness.values = fit
    
    for g in range(ngen):
        print("Generation - {}".format(g+1))

        selected = toolbox.select(pop, len(pop))
        selected = list(map(toolbox.clone, selected))

        for c1, c2 in zip(selected[::2], selected[1::2]):
            if random.random() < crossover_prob:
                toolbox.mate(c1, c2)
                del c1.fitness.values
                del c2.fitness.values

        for mutant in selected:
            if random.random() < mutate_prob:
                toolbox.mutate(mutant)
                del mutant.fitness.values
        invalid_ind = [ind for ind in selected if not ind.fitness.valid]
        fitnesses = list(map(toolbox.evaluate, invalid_ind))
        for ind, fit in zip(invalid_ind, fitnesses):
            ind.fitnesses.values = fit
        pop[:] = selected
        fits = [ind.fitness.values[0] for ind in pop]
        length = len(pop)
        mean = sum(fits) / length
        square = sum(x**2 for x in fits)
        std = abs(square / length - mean**2)**0.5
        print("  Min %s" % min(fits))
        print("  Max %s" % max(fits))
        print("  Avg %s" % mean)
        print("  Std %s" % std)

    print("-- End of (successful) evolution --")

    best_ind = tools.selBest(pop, 1)[0]
    print("Best individual is %s, %s" % (best_ind, best_ind.fitness.values))


if __name__ == "__main__":
    main()

