// More at: https://www.hackerrank.com/interview/preparation-kits/one-week-preparation-kit/one-week-day-one/challenges

/*
    Plus Minus

    Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero.
    Print the decimal value of each fraction on a new line with 6 places after the decimal.
*/
func plusMinus(arr: [Int]) -> Void {
    var positiveNumbers: Double = 0
    var negativeNumbers: Double = 0
    var numberOfZeros: Double = 0
    let arraySize = Double(arr.count)
    
    for num in arr {
        if (num > 0) {
            positiveNumbers += 1
        }
        else if (num < 0) {
            negativeNumbers += 1
        }
        else {
            numberOfZeros += 1
        }
    }
    
    print(String(format: "%.6f", positiveNumbers/arraySize))
    print(String(format: "%.6f", negativeNumbers/arraySize))
    print(String(format: "%.6f", numberOfZeros/arraySize))
}

/*
    Mini-Max Sum

    Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the
    five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.
*/
func miniMaxSum(arr: [Int]) -> Void {
    let sortedArr = arr.sorted()
    let miniSum = sortedArr[0] + sortedArr[1] + sortedArr[2] + sortedArr[3]
    let maxSum = sortedArr[4] + sortedArr[3] + sortedArr[2] + sortedArr[1]
    
    print(miniSum, maxSum)
}

/*
    Time Conversion

    Given a time in -hour AM/PM format, convert it to military (24-hour) time.
*/
func timeConversion(s: String) -> String {
    var hours: Int = 0
    var resultString = ""
    
    let start = s.index(s.startIndex, offsetBy: 2)
    let end = s.index(s.endIndex, offsetBy: -2)
    var range = start..<end
        
    if(s.contains("PM")) {
        if (s.contains("12")) {
            resultString = "12" + s[range]
        }
        else {
            hours = (Int(s[..<start]) ?? 0) + 12
            resultString = String(hours) + s[range]
        }
    }
    else if (s.contains("12")) {
        resultString = "00" + s[range]
    }
    else {
        range = s.startIndex..<end
        resultString += s[range]
    }
    return resultString
}

/*
    Mock Test: Find the Median
    
    The median of a list of numbers is essentially its middle element after sorting.
    Given a list of numbers with an odd number of elements, find the median.
*/
func findMedian(arr: [Int]) -> Int {
    let arrSorted = arr.sorted()
    return arrSorted[arr.count/2]
}