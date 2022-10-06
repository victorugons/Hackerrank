/* Given an array of n integers student grades, 1<=n<=60, define the final grade for each student considering:
    - Every student receives a grade in the inclusive range from 0 to 100.
    - Any grade less than 40 is a failing grade.
    - If the difference between the grade and the next multiple of 5 is less than 3, round grade up to the next multiple of 5.
    - If the value of grade is less than 38, no rounding occurs as the result will still be a failing grade.
More at https://www.hackerrank.com/challenges/grading/problem
*/

func gradingStudents(grades: [Int]) -> [Int] {
    var finalGrades: [Int] = []
    var remainder: Int
    
    for grade in grades {
        if grade < 38 {
            finalGrades.append(grade)
        }
        else { 
            remainder = ((grade+5)/5)*5-grade
            
            if remainder < 3 {
                finalGrades.append(grade+remainder)
            }
            else {
                finalGrades.append(grade)
            }
        }
    }
    return finalGrades
}