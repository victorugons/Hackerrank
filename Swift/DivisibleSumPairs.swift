/*
    Given an array of n integers and a positive integer k, determine the number of (i, j) pairs where i < j and ar[i] + ar[j] is divisible by k.
    Example:
        ar = [1, 2, 3, 4, 5, 6]
        k = 5
        Three pairs meet the criteria: [1, 4], [2, 3] and [4, 6].
    More at: https://www.hackerrank.com/challenges/divisible-sum-pairs/problem
*/
func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var pairs: Int = 0
    
    for i in 0...n-2 {
        for j in i+1...n-1 {
            if ((ar[i]+ar[j])%k == 0) {
                pairs += 1
            }
        }
    }
    return pairs
}