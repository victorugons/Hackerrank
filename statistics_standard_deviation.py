# Function to calculate standard deviation. For this, I used the mean function I implemented before.

def mean (arr):
    total = 0
    for i in arr:
        total = total + i
    return total/len(arr)

def std_deviation (arr):
    meanArr = mean(arr)
    total = 0
    for num in arr:
        total = total + (num - meanArr)**2
    return (total/len(arr))**(0.5)