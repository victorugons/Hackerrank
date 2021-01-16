# "A manufacturer of metal pistons finds that, on average, 12% of the
# pistons they manufacture are rejected because they are incorrectly sized.
# What is the probability that a batch of 10 pistons will contain:
# 1 - No more than 2 rejects?
# 2 - At least 2 rejects?"

from math import factorial

def binomial_dist(successes, trials, s_prob):
    return factorial(trials)/(factorial(successes) * factorial(trials-successes)) * s_prob**successes * (1-s_prob)**(trials-successes)

def two_or_less_pistons_wrong_sized(rjctd_pct, batch_s):
    cumulative_prob = 0
    for i in range(3):
        cumulative_prob = cumulative_prob + binomial_dist(batch_s - i, batch_s, (1-(rjctd_pct/100)))
    return cumulative_prob

def two_or_more_pistons_wrong_sized(rjctd_pct, batch_s):
    cumulative_prob = 0
    for i in range(2, batch_s+1):
        cumulative_prob = cumulative_prob + binomial_dist(batch_s - i, batch_s, (1-(rjctd_pct/100)))
    return cumulative_prob
