# Given an array X of N integers and an array F with the
# respective ocurrencies for X's elements, construct a dataset S
# with the fi ocurrencies for each xi element. Then, calculate
# the interquartile range of S.

def median (arr):
    arrSorted = sorted(arr)
    if len(arrSorted) % 2 == 1:
        return arrSorted[int((len(arrSorted)/2) - 0.5)]
    return (arrSorted[int(len(arrSorted)/2-1)] + arrSorted[int(len(arrSorted)/2)])/2

def quartiles (arr):
    quartiles = [0, 0, 0]
    quartiles[1] = median(arr)
    arrSorted = sorted(arr)
    if len(arr) % 2 == 0:
        quartiles[0] = median(arrSorted[:int(len(arr)/2)])
        quartiles[2] = median(arrSorted[int(len(arr)/2):])
    else:
        quartiles[0] = median(arrSorted[:int((len(arr)-1)/2)])
        quartiles[2] = median(arrSorted[int((len(arr)+1)/2):])
    
    return quartiles

def construct_dataset (X, F):
    S = []
    for i in range(len(X)):
        for j in range(F[i]):
            S.append(X[i])
    return S.sort()

quartiles = quartiles(construct_dataset(X, F))
interquartile_range = quartiles[2] - quartiles[0]