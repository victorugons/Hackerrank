# Given a square matrix, this function calculates the absolute difference between the sums of its diagonals.
def diagonalDifference(arr):
    main, sec = 0, 0
    for i in range(len(arr)):
        main = main + arr[i][i]
        sec = sec + arr[i][len(arr)-i-1]
    return abs(main-sec)