/*
    Two friends Anna and Brian, are deciding how to split the bill at a dinner. Each will only pay for the items they consume.
    Brian gets the check and calculates Anna's portion. 
    Verify if the calculation is correct. If it is, print "Bon Appetit", if not, print the value Brian should refund to Anna.
    
    More at: https://www.hackerrank.com/challenges/bon-appetit/
*/
func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    let anna: Int = (bill.reduce(0, +) - bill[k])/2
    
    if(anna == b) {
        print("Bon Appetit")
    }
    else {
        print(b-anna)
    }
}