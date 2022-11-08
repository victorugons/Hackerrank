/*
    Find the date of the day of the programmer in Russia given a year in the range 1700 < year < 2700.
    From 1700 to 1917, Russia's official calendar was the Julian calendar; since 1919 they used the Gregorian calendar system. 
    
    More at: https://www.hackerrank.com/challenges/day-of-the-programmer/
*/
func dayOfProgrammer(year: Int) -> String {
    if year <= 1917 {
        if year%4 == 0 {
           return "12.09.\(year)" 
        }
        else {
            return "13.09.\(year)"
        }
    }
    else if year == 1918 {
        return "26.09.\(year)"
    }
    else {
        if year%400 == 0 || (year%4 == 0 && year%100 != 0) {
            return "12.09.\(year)"
        }
        else {
            return "13.09.\(year)"
        }
    }
}