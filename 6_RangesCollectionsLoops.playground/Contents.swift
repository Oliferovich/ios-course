//: # Repeat

// Constants, Variables
// Scope

import UIKit

class President {
    func inauguration() {

    }
}

var president: President? = President()
// optional chaining
president?.inauguration()



//: # Lecture 6
//: # Ranges, Collections, Loops
//: ## Ranges
//: ### ClosedRange
let doubleClosedRange = 1...111.1 // 1.0<= value <=111.1
let intClosedRange = 1...111 // 1 <= value <= 111
//: ### Range (Half-closed)
let doubleHalfClosedRange: Range<Double> = -10..<10
-10...10

if doubleHalfClosedRange.contains(0.0) {

}

//: ### One-sided (PartialRangeThrough)
let intOneSidedRangeTo = ...10

//: ### One-sided (PartialRangeFrom)
let intOneSidedRangeFrom = 10...

intOneSidedRangeFrom.contains(10)

//: ## Collections
//: Mutable versus immutable collections
//: ### Array
//: [Documentation](https://developer.apple.com/documentation/swift/array)

var intArray1: Array<Int> = []
var arrayOfinteger: Array<Int> = []//Array<Int>()
var limitedArray = [1, 2, 3, 1, 2, 1111]

func getElement(of index: Int) -> Int? {
    if limitedArray.count > index {
        let element = limitedArray[index]
        return element
    } else {
        return nil
    }
}


var intArray2 = Array<Int>()
var intArray: [Int] = []
// [:] - dict

//: Creating
// Declaration
// The full type name
var emptyInts: Array<Int> = Array()

// Shortened forms are preferred
var emptyDoubles: [Double] = []
var polyArray: [[Int]] = []

//: Modifying arrays
//: Accessing Array Values

let constArray = [1, 3, 5, 7, 10]
var varArray = [1, 3, 5, 7, 10]
//varArray.sorted {
//    <
//}
var item = constArray[1]
print(item)
let count = constArray.count
var nextElement = constArray[count-1]
var iterator = 1
//for item in constArray {
////    print(item)
//    print(constArray[iterator])
//    iterator += 1
//}
constArray.first
constArray.last

let aaa: [Int] = []
aaa.last
//: Updating elements

//constArray[1] = 0 //- warning
varArray[1] = 0
varArray
//varArray.map(<#T##transform: (Int) throws -> T##(Int) throws -> T#>)
//varArray.sort()
let nArray = varArray.sorted()

//: Adding and Removing Elements

var newArray = [Int]()//[1, 2, 3]
//newArray[0] = 1
//newArray[1] = 100
newArray.append(1)
newArray.append(2)
newArray.insert(3, at: 1)

newArray.capacity
newArray.remove(at: 1)
newArray.capacity
newArray.removeAll()


//: Iterating through an array

//for item in constArray {
//    <#code#>
//}

//constArray.forEach { item in
//    print(item)
//}

for element in nArray {
    print(element)
}

//: Important:
//:* Arrays are ordered collections of values of the same type.
//:* Use subscripting or one of the many properties and methods to access and update elements.
//:* Be wary of accessing an index that’s out of bounds.

//: Advanced:
//: Cost of operations: access, insert, delete, insert, search
//: Bridging to ObjC

//: ### Dictionary
//: [Documentation](https://developer.apple.com/documentation/swift/dictionary)

//: Creating

let constDictionary: Dictionary<String,Int> = [:]

var carProperties = [
    "color" : 123,
    "doors" : 4,
    "type" : 1
]

let dictElement = carProperties["color"]

var car = [String:Int]()
//var car2 = Dictionary<String,Int>()
//var nndict = [String:[String:Int]]()

//: Modifying

var dictItem = carProperties["color"]
if let nonNiliItem = carProperties["color"] {

} else {

}

for (key, el) in carProperties {
    print(key)
}
print(carProperties.keys)


carProperties["maxSpeed"] = 1000000
carProperties
carProperties.removeValue(forKey: "maxSpeed2")
carProperties

//: Iterating through

carProperties.forEach { (key, value) in
    print(value)
}
carProperties.count


//: Advanced
//: Cost of operations: access, insert, delete, insert, search
//: Bridging to ObjC

//: Important:
//:* A dictionary is an unordered collection of key-value pairs.
//:* The keys of a dictionary are all of the same type, and the values are all of the same type.
//:* Use subscripting to get values and to add, update or remove pairs.
//:* If a key is not in a dictionary, lookup returns nil.
//:* The key of a dictionary must be a type that conforms to the Hashable protocol.
//:* Basic Swift types such as String, Int, Double are Hashable out of the box.

//: ### Set
//: [Documentation](https://developer.apple.com/documentation/swift/set)

//: Creating
var customSet: Set<Int> = [1, 2, 3, 4, 5]
customSet.count
var subSet: Set<Int> = [2, 3, 4, 7]
var isSubset = subSet.isSubset(of: customSet)
subSet.intersection(customSet)
var filtered = customSet.filter { (argument) -> Bool in
    if argument < 4 {
        return true
    } else {
        return false
    }
}
let newset = filtered.map {
    $0 * 2
}
newset
filtered

//: Modifying
let result = customSet.insert(10)
result.inserted
let removedObject = customSet.remove(4)
//: Iterating through


//: Advanced
//: Cost of operations: access, insert, delete, insert, search
//: Bridging to ObjC

//: Important:
//:* Sets are unordered collections of unique values of the same type.
//:* Sets are most useful when you need to know whether something is included in the collection or not.

//: ## Loops

// Recursion
//let arrayArray = [1, 2, 1, 2]
//func iterate(array: Array<Int>) {
//
//}

//: ### FOR
//: ### in Range
let arr = [1, 2, 3, 4]

for element in arr {
    print(element)
}

for _ in -10...5 {
//    print(index)
    print("!")
}

//: ### in Collection
let autoArray = Array(repeating: 1, count: 20)

for element in autoArray {
    print(element)
}

for value in autoArray.enumerated() {
//    value.element
//    value.offset
    print(value.element, value.offset)
    guard value.offset == 10 else { continue } //break
    print("Number 10:\(value.element)")
}

var names = Array(repeating: "Vadim", count: 10)

for name in names[..<5] { //here is range used in subscript
    print(name)
}

//for index in 0...5.1 { //ERROR - cant use double range in for-loop
//
//}

for item in names.enumerated() {
    item // let item: (offset: Int, element: String)
}

for pair in ["key1": 1] {
    pair // let pair: (key: String, value: Int)
}


for letter in "Vadim" {
    letter // let letter: String.Element - Character (typealias Element = Character)
}

//: ### WHILE
var whileIndex = 0
while whileIndex < 5 {
    print(whileIndex)
    whileIndex += 1
}

//alternative:
//repeat {
//
//} while true

//continue  - loops
//break - loops

//fallthrough - switch

//return - function
//throw
struct Person {
    let age: Int
}

var people = Array(repeating: Person(age: 19), count: 11)
people.insert(Person(age: 17), at: 7)

for person in people {
  if person.age < 18 {
    print("continued")
    continue
  }
}

//: # Задание:

// 1. Описать фцнкцию принимающую 2 аргумента String (word, line), которая с помощью цикла FOR считает сколько раз данное слово встречается в строке line

func wordCheck (word: String?, line: String?) {
    var quantity = 0
    if let word = word, let line = line {
        let words = line.split(separator: " ")
        for sameWord in words {
            if sameWord == word{
                quantity += 1
            }
        }
        print (quantity)
    } else {
        print("ERROR")
    }
}
  
print (wordCheck(word: "swift", line: "swift swift"))

// 2. Написать алгоритм с помощью цикла DO-WHILE который добавляет в массив [Int] элементы (можно одинаковые, можно рандомные) до тех пор, пока сумма элементов массива меньше 100

var mass: [Int] = [2,4,6,2,6,]

print(mass.reduce(0, +))

repeat {
    
    var number = Int.random(in: 1..<10)

    mass.append(number)

} while
mass.reduce(0,+) < 100

print(mass)
print(mass.count)

// 3. Написать 1 алгоритм сортировки элементов массива [Int]

for i in 0 ..< mass.count {
    for j in 0..<mass.count-i-1 {
        if mass[j]>mass[j + 1] {
            mass.swapAt(j + 1, j)
        }
    }
}
print(mass)
