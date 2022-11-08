// More at: https://www.hackerrank.com/interview/preparation-kits/one-week-preparation-kit/one-week-day-two/challenges

/*
    Given an array of integers, where all elements but one occur twice, find the unique element.
*/
func lonelyinteger(a: [Int]) -> Int {
    var integerDictionary: [Int:Int] = [:]
    
    a.forEach({ integerDictionary[$0, default: 0] += 1 })
    
    let lonelyInteger = integerDictionary.keys.sorted(by: { integerDictionary[$0] ?? 0 < integerDictionary[$1] ?? 0})[0]
    
    return lonelyInteger
}

/*
    Given a square matrix, calculate the absolute difference between the sums of its diagonals.
*/
func diagonalDifference(arr: [[Int]]) -> Int {
    var i = 0
    var mainDiagonal: Int = 0
    var antidiagonal: Int = 0
    
    while i < arr.count {
        mainDiagonal += arr[i][i]
        antidiagonal += arr[i][arr.count-1-i]
        i += 1
    }
    
    return abs(mainDiagonal-antidiagonal)
}

/*
    Given an array 0 <= arr[i] < 100 count how many times each value in the range 0 <= n < 100 occur.
    Return an array of those frequencies sorted by the values in the range (0, 1, 2,..., 99).
*/
func countingSort(arr: [Int]) -> [Int] {
    var frequencyDictionary: [Int:Int] = [:]
    
    for i in 0..<100 {
        frequencyDictionary[i] = 0 
    }
    
    arr.forEach({ frequencyDictionary[$0, default: 0] += 1 })

    let sortedKeys = frequencyDictionary.keys.sorted()
    var frequencyArray: [Int] = []
    
    sortedKeys.forEach { frequencyArray.append(frequencyDictionary[$0] ?? 0) }
    
    return frequencyArray
}