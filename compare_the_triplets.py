# Function that must compare the triplets a and b and return an array with the result of the comparison.
def compareTriplets(a, b):
    result = [0, 0]
    for i in range(3):
        if a[i] > b[i]:
            result[0]=result[0]+1
        elif a[i] < b[i]:
            result[1]=result[1]+1
    return result