#Given an array of integers, this function calculates the ratios of its elements
# that are positive, negative, and zero, and return an array with the ratios.

def plusMinus(arr):
    ratios = [0 , 0, 0] # [positive, negative, zero]
          
    for num in arr:
        if num > 0:
            ratios[0] = ratios[0] + 1
        elif num < 0:
            ratios[1] = ratios[1] + 1
        else:
            ratios[2] = ratios[2] + 1
            
    for i in range(3):
        ratios[i] = ratios[i]/len(arr)
    
    return ratios