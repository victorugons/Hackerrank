# Functions that calculate the mean, median and mode of an array of N integers.
def mean (arr):
    total = 0
    
    for i in arr:
        total = total + i
        
    return total/len(arr)

def median (arr):
    arrSorted = sorted(arr)
    
    if len(arrSorted) % 2 == 1:
        return arrSorted[int((len(arrSorted)/2) - 0.5)]
    
    return (arrSorted[int(len(arrSorted)/2)] + arrSorted[int(len(arrSorted)/2-1)])/2

def mode (arr):
    arrSorted = sorted(arr)
    mode = arrSorted[0]
    repeat = 1
    previousrepeat = 1
    previous = arrSorted[0]
    
    for num in arrSorted[1:]:
        if num == previous:
            repeat = repeat + 1
        else:
            if repeat > previousrepeat:
                mode = previous
                previousrepeat = repeat
            repeat = 1
        previous = num
        
    if repeat > previousrepeat:
        mode = previous

    return mode