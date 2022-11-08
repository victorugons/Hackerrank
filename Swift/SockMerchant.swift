/*
    There is a large pile of socks that must be paired by color. Given an array of integers representing the color of each sock,
    determine how many pairs of socks with matching colors there are.
    
    More at: https://www.hackerrank.com/challenges/sock-merchant/
*/
func sockMerchant(n: Int, ar: [Int]) -> Int {
    let sortedSocks: [Int] = ar.sorted()
    var pairs: Int = 0
    var i: Int = 0
    
    while i <= n-2 {
        if sortedSocks[i] == sortedSocks[i+1] {
            pairs += 1
            i += 1
        }
        i += 1
    }
    
    return pairs
}