# Given an array X of N integers and an array W with N respective weights of X's elements,
# this function calculates the weighted mean for these elements.
def weightedMean (arr, weights):
    total = 0
    totalWeight = 0
    for i in range(len(weights)):
        total = total + arr[i] * weights[i]
        totalWeight = totalWeight + weights[i]
    return total/totalWeight