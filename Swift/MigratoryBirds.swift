/*
    Given an array of bird sightings where every element represents a bird type id, determine the id of the most
    frequently sighted type. If more than 1 type has been spotted that maximum amount, return the smallest of their ids.

    Example:
        arr = [1, 1, 2, 2, 3]
        There are two each of types 1 and 2, and one sighting of type 3. Pick the lower of the two types seen twice: type 1.
    More at: https://www.hackerrank.com/challenges/migratory-birds/problem
*/
func migratoryBirds(arr: [Int]) -> Int {
    var timesSighted: [Int: Int] = [:]
    
    arr.forEach({ timesSighted[$0, default: 0] += 1 })
    
    var sortedIds: [Int] = timesSighted.keys.sorted(by: { timesSighted[$0]! < timesSighted[$1]! || (timesSighted[$0]! == timesSighted[$1]! && $0 >= $1) })
    
    return sortedIds.last ?? 0
}