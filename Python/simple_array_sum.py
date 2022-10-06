# Function that must return the sum of the array elements as an integer.
def simple_array_sum(ar):
    count = 0
    if len(ar) > 1000:
        return -1
    for i in range(len(ar)):
        count = count+ar[i]
    return count