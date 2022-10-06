# Given an array of N elements, this function calculates the first, second and third quartiles.
# It is guaranteed that the quartiles values will be integers.
# For this, I used the median function I implemented before.
def median (arr):
    arrSorted = sorted(arr)
    if len(arrSorted) % 2 == 1:
        return int(arrSorted[int((len(arrSorted)/2) - 0.5)])
    return int((arrSorted[int(len(arrSorted)/2-1)] + arrSorted[int(len(arrSorted)/2)])/2)

def quartiles (arr):
    # Because I'm passing only parts of the list to the median function I have to sort here,
    # otherwise it wouldn't consider all the elements of the original array 
    # when sorting there. Also, I don't think it's good to change the median function
    # nor to make the user pass only sorted lists to this function. :)
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