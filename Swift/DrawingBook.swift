/*
    A teacher asks the class to open their books to a page number. A student can either start turning pages from the front of
    the book or from the back of the book. They always turn pages one at a time. When they open the book, page 1 is always on
    the right side.
    When they flip page 1, they see pages 2 and 3. Each page except the last page will always be printed on both sides.
    The last page may only be printed on the front, given the length of the book. 
    Given the book is n pages long, and a student wants to turn to page p, return the minimum number of pages to turn.
    They can start at the beginning or the end of the book.

    More at: https://www.hackerrank.com/challenges/drawing-book/
*/
func pageCount(n: Int, p: Int) -> Int {
    
    if p == 1 || p == n || (n%2 == 1 && p == n-1) {
        return 0
    }
    
    if n%2 == 0 {
        if n - p == n/2 {
            return (n-p)/2
        }
        if n - p < n/2 {
            if p%2 == 0 {
                return (n-p)/2
            }
            
            return ((n-p)/2) + 1
        }
    }
    
    if n - p <= n/2 {
        return (n-p)/2
    }
    
    return p/2
}