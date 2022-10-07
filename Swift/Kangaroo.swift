/*
    There are two kangaroos at x1 and x2 positions respectively, jumping in the positive direction of a number line.
    They move v1 and v2 meters per jump respectively.
    Considering x2 > x1, verify if it's possible that after a certain number of jumps the kangaroos can be at the same position.
    More at: https://www.hackerrank.com/challenges/kangaroo/problem
*/
func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    var firstKangaroo: Int = x1
    var secondKangaroo: Int = x2
    
    if (v1 <= v2) {
        return "NO"
    }
    while(firstKangaroo < secondKangaroo) {
        firstKangaroo += v1
        secondKangaroo += v2
    }
    if (firstKangaroo == secondKangaroo) {
        return "YES"
    }
    else {
        return "NO"
    }
}
