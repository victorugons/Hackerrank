# This function drwas a n-sized '#' staircase on the output. :)

def staircase(n):
    steps = []
    for i in range(n):
        steps.append(' ')
    for j in range(n):
        steps[n-j-1] = '#'
        print(*steps, sep='')