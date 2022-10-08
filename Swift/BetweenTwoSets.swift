/*
    There will be two arrays of integers. Determine all integers that satisfy the following two conditions:
    - The elements of the first array are all factors of the integer being considered;
    - The integer being considered is a factor of all elements of the second array.
    These numbers are referred to as being between the two arrays. Determine how many such numbers exist.

    Example:
        a = [2, 6]
        b = [24, 36]

    There are two numbers between the arrays: 6 and 12.
    6%2 = 0, 6%6 = 0 , 24%6 = 0 and 26%6 = 0 for the first value.
    12%2 = 0, 12%6 = 0, 24%12 = 0  and 36%12 = 0 for the second value. Return 12.

    This one was really hard for me but then i realised I had to use least common multiple. I got the function that
    calculates it from the internet, lines 27 to 37, cause I was about to give up lol, I adaptated it from C to Swift
    and everything finally worked out well.
*/

func getTotalX(a: [Int], b: [Int]) -> Int {
    guard let smallestNumberOfA: Int = a.sorted().first else { return 0 }
    guard let smallestNumberOfB: Int = b.sorted().first else { return 0 } 
    
    var leastCommonMultipleOfA: Int = smallestNumberOfA
    var greatestCommonDivisorOfA: Int = smallestNumberOfA
    
    func findGCD(_ firstNum: Int, _ secondNum: Int) -> Int {
        if(secondNum == 0) {
           return firstNum 
        }
    return findGCD(secondNum, firstNum%secondNum);
    }

    for number in a {
        greatestCommonDivisorOfA = findGCD(number, leastCommonMultipleOfA);
        leastCommonMultipleOfA = (leastCommonMultipleOfA*number)/greatestCommonDivisorOfA;
    }
    
    var totalX: Int = 0
    var multiplier: Int = 1
    var shouldIncreaseTotalX: Bool = true
    
    if(smallestNumberOfB < leastCommonMultipleOfA) {
        return 0
    }
    
    while(leastCommonMultipleOfA*multiplier <= smallestNumberOfB) {
        for number in b {
            if(number%(leastCommonMultipleOfA*multiplier) != 0) {
                shouldIncreaseTotalX = false
                break
            }
        }
        if(shouldIncreaseTotalX) {
            totalX += 1
        }
        shouldIncreaseTotalX = true
        multiplier += 1
    }
    return totalX
}