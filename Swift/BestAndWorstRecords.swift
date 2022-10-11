/*
    Maria plays college basketball and wants to go pro. Each season she maintains a record of her play.
    She tabulates the number of times she breaks her season record for most points and least points in a game.
    Points scored in the first game establish her record for the season, and she begins counting from there.
    Given the scores for a season, return the number of times she breaks her records for most and least points on the season.
    More at: https://www.hackerrank.com/challenges/breaking-best-and-worst-records
*/

func breakingRecords(scores: [Int]) -> [Int] {
    var minScore: Int = scores[0]
    var maxScore: Int = scores[0]
    var minScoreRecords: Int = 0
    var maxScoreRecords: Int = 0
    
    for score in scores {
        if(score < minScore) {
            minScore = score
            minScoreRecords += 1
            
        }
        else if(score > maxScore){
            maxScore = score
            maxScoreRecords += 1
        }
    }
    
    return [maxScoreRecords, minScoreRecords]
}