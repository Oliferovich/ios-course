import UIKit




// Returns true if two rectangles (l1, r1) and (l2, r2) overlap
func doOverlap(l1x: Double, l2x: Double, r1x: Double, r2x: Double, l1y: Double, l2y: Double, r1y: Double, r2y: Double)
{
    // If one rectangle is on left side of other
    if (l1x >= r2x || l2x >= r1x){
        print ("do not overlap")
    } else if (l1y <= r2y || l2y <= r1y) {
        print ("do not overlap")
    } else {
        print ("do overlap")
    }
        
}

doOverlap(l1x: 2, l2x: 6, r1x: 5, r2x: 8, l1y: 5, l2y: 8, r1y: 2, r2y: 6)

var numbers = [Int]()
for i in 1...100 {
    numbers.append(i)
}

// Линейный поиск
func lineSearchForSearchVAlues(searchValue:Int, array: [Int]) -> Bool {
    for num in array {
        print("Произошла итерация №\(num)")
        if num == searchValue {
            return true
        }
    }
    return false
}
print(lineSearchForSearchVAlues(searchValue: 87, array: numbers))

