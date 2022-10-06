/*
    There are an apple tree and an orange tree located at a and b respectively, and a house located on the space
     from s to t inclusive. Apples and trees fall from those trees at a d distance, where a negative d means that
     the fruit fell at the left side of the tree while a positive d means the fruit fell at its right side.
    The distances are on the apples and oranges arrays.
    Count how many apples and oranges fell on the house.
    More at: https://www.hackerrank.com/challenges/apple-and-orange/problem
*/

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    var appleCount: Int = 0
    var orangeCount: Int = 0
    
    for apple in apples {
        if a+apple>=s && a+apple<=t {
            appleCount += 1
        }
    }
    
    for orange in oranges {
        if b+orange>=s && b+orange<=t {
            orangeCount += 1
        }
    }
    
    print(appleCount)
    print(orangeCount)
}