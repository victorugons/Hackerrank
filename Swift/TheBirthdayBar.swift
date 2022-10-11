/*
    Two children, Lily and Ron, want to share a chocolate bar. Each of the squares has an integer on it.
    Lily decides to share a contiguous segment of the bar selected such that:
    - The length of the segment matches Ron's birth month, and,
    - The sum of the integers on the squares is equal to his birth day.
    s = bar squares, d = Ron's birth day, m = Ron'birth month.
    Return how many ways she can divide the chocolate.
    More at: https://www.hackerrank.com/challenges/the-birthday-bar/problem
*/

func birthday(s: [Int], d: Int, m: Int) -> Int {
    var possibilities: Int = 0
    var sumOfSquares: Int = 0
    
    for i in 0...s.count-1 {
        if (m > s.count-i) {
            return possibilities
        }
        else {
            for j in 0...m-1 {
                sumOfSquares += s[i+j]
            }
            if (sumOfSquares == d) {
                possibilities += 1
            }
            sumOfSquares = 0
        }
    }
    return possibilities
}