# "The ratio of boys to girls for babies born in Russia is 1.09 : 1.
# If there is 1 child born per birth, what proportion of Russian families
# with exactly 6 children will have at least 3 boys?"

from math import factorial

def binomial_dist(successes, trials, s_prob):
    return factorial(trials)/(factorial(successes) * factorial(trials-successes)) * s_prob**successes * (1-s_prob)**(trials-successes)

def six_children_family(ratio):
    s_prob = ratio[0]/(ratio[0]+ratio[1])
    cumulative_prob = 0
    for i in range(3, 7):
        cumulative_prob = cumulative_prob +  binomial_dist(i, 6, s_prob)
    return cumulative_prob
