//enum Move {
//    case go(Int)
//    case turn(Direction)
//
//    enum Direction {
//        case left, right, turnBack
//    }
//}
//
//let movement = Move.go(3)
//
//switch movement {
//    case .go(let numberOfSteps):
//        for _ in 0...numberOfSteps {
//            //move()
//        }
//    case .turn(let direction):
//
//}

/*:
 # Lecture 7
 # Functions, Closures

 * Введение в функции и замыкания
*/

//: ## Functions
// Define
func functionName (id index: Int, param2: Double) -> Int {
  //body of the function
    return index
}

var function = functionName
var result = functionName(id: 1, param2: 12.1)
function(1, 1.2)

functionName(id: 1, param2: 1)


func printOnScreen(_ value: Int = 1) {
    print(value)
}
printOnScreen(11)

func fullTank(amount: Double = 100.0) {

}

fullTank()

class CustomType {}

func configureInterface(config: CustomType? = nil) {

}

configureInterface()
configureInterface(config: CustomType())


func color (_ red: Int? = 1, _ green: Int? = 1, _ blue: Int? = 1) -> (Int, Int, Int) {
    guard let red = red,
        let green = green,
        let blue = blue else {
            return (0, 0, 0)
    }

//    return red + green + blue
    return (red, green, blue)
}
var colorComponent: Int? = nil
let variable = functionName(id: 1, param2: 1.5)
color()


struct CustomStruct {
//    var
//    let
    func shortAction() {

    }
    static func internalFunc() {
//        shortAction()
    }
}

var customStructVar = CustomStruct()
customStructVar.shortAction()
CustomStruct().shortAction()
CustomStruct.internalFunc()

// Parameters

// Default value

// Return value

// inout

func multiplyOnTen(value: inout Int) {
    value *= 10
}

var givenValue = 5
multiplyOnTen(value: &givenValue)
givenValue
import Foundation

func resolveString(text: inout String) {
    let placeholder = "{APP_VERSION}"
    let version = "v0.0.1"
    text = text.replacingOccurrences(of: placeholder, with: version)
}

var givenText = "Jan 23, 2019 - In Swift 2 the use of split becomes a bit more complicated due to the ... componentsSeparatedByString() // And then to access the individual words: {APP_VERSION} Jan 23, 2019 - In Swift 2 the use of split becomes a bit more complicated due to the ... componentsSeparatedByString() // And then to access the individual words: v"
resolveString(text: &givenText)
givenText

//var multiplyResult = multiplyOnTen(value: 5)

//: ## Closures
//: [Documentation](https://docs.swift.org/swift-book/LanguageGuide/Closures.html)
var customClosure: (Int, Double) -> Int = { (intValue, doubleValue) -> Int in
    print(intValue)
    print(doubleValue)
    return intValue + Int(doubleValue)
}
//func functionName (id index: Int, param2: Double) -> Int {
//    return index
//}
var customClosureShort: () -> Void = {
    print("Hello world!")
}
customClosureShort()
let constantClosure = customClosureShort
constantClosure()

var cCShortening: (Int, Double) -> Int = { $0 + Int($1) }


//{ (parameters) -> return type in
//    statements
//}
//typealias MyClosure = (Int, String) -> Void
//var customClosure: (Int, String, Double) -> Void = {
//    print("closure is called")
//    print($0)
//    print($1)
//    print($2)
//}
//var newClosure = customClosure
//newClosure(1, "Hello", 1.0)
//
//var oneMoreClosure: MyClosure = { myInteger, myString in
//
//}

func operation(arg1: Int, arg2: Int, closure: (Int, Int) -> Void) {
    closure(arg1, arg2)
}

let handler1: (Int, Int) -> Void = {
    print($0 * $1)
}

operation(arg1: 5, arg2: 5, closure: handler1)

operation(arg1: 7, arg2: 7, closure: { (arg1, arg2) in
    print(arg1 + arg2)
})

operation(arg1: 12, arg2: 12) {
    print($0 * $1)
}

var array = [1, 2, 3]
array.reduce(0) { (result, intValue) -> Int in
    result + intValue
}

// Same implementation:

let handler3: (Int, Int) -> Int = {
    $0 + $1
}
var result1 = 0

for element in array {
    result1 = handler3(result1, element)
}

array.reduce(0, +)

//array.map(<#T##transform: (Int) throws -> T##(Int) throws -> T#>)
//array.filter(<#T##isIncluded: (Int) throws -> Bool##(Int) throws -> Bool#>)

//: ### Homework:

//1. Write a Swift program to check if two given arrays of integers have 0 as their first element.
//произвести проверку двух массивов(Int) являются ли их первые элементы нулями и вывести соответствующее сообщение в консоль.
let array1 = [4,13,234,1,34,3,14,]
let array2 = [0,2,23,4,12,42,53]

if array1[0] == 0 && array2[0] == 0 {
    print(" массивы начинаются с 0")
}
else if array1[0] == 0 || array2[0] == 0 {
    print("в одном из массивов первый элемент 0")
}
else{
    print("ни в одном из массивов первый элемент не 0")
}

//2. Write a Swift program to test if an array of integers does not contain a 3 or a 5.
//произвести проверку двух массивов(Int) на отсутствие в них элементов 3 и 5 и вывести соответствующее сообщение в консоль


if (array1.contains(5) && array1.contains(5)) && (array2.contains(5) && array2.contains(3)) {
    print ("array of integers contain a 3 and a 5")
}
else if (array1.contains(5) && array1.contains(3)) || (array2.contains(5) && array2.contains(5)) {
    print ("one of arrays contains a 3 and a 5")
}
else {
    print ("none of arrays contains a 3 and a 5")
}


//3. Write a Swift program to check whether the first element and the last element of a given array of integers are equal.
//произвести проверку одинаковы ли первый и последний элементы данного массива(Int) и вывести соответствующее сообщение в консоль


if array1.first == array1.last {
    print("first and last elements of array are equal")
}


//4. Write a Swift program that creates Array, adds an item, remove item, modify item and then prints size of the array.
//проинициализировать массив, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер массива(количество элементов)
var emptyArray: Array<Int> = []

// Добавил элемент в конец массива
emptyArray.append(6)
// Добавил элемент по заданному индексу массива
emptyArray.insert(3, at: 0)
// Добавил к массиву массив идентичного типа
//?????????????????
// Удаляю первый и последний элементы массива
emptyArray.removeFirst() // dropFirst() аналогичный метод
emptyArray.removeLast()  // dropLast() аналогичный метод
// Удаляю необходимый элемент по его индексу
emptyArray.remove(at: 0)
//
emptyArray.removeAll()
//размер массива(количество элементов)
print("Элементов в массиве: \(emptyArray.count)")


//5. Write a Swift program that creates Dictionary, adds an item, remove item, modify item and then prints size of the Dictionary.
//проинициализировать словарь, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер словаря(количество элементов)
var Dictionary1: Dictionary<Int, String> = [:]

// Добавляем элемент в словарь
if Dictionary1.isEmpty {
    Dictionary1[1] = "slovo"
    print("Количество элементов словаяр: \(Dictionary1.count)")
}

// Удаляем элемент из словаря
if Dictionary1.isEmpty == false { // if просто для конструкции сделан
    Dictionary1.removeValue(forKey: 1)
}

//6. Write a Swift program that creates Set, adds an item and then prints size of the Set.
//проинициализировать Сет, добавить в него элемент и вывести в консоль размер Сета(количество элементов)
var set1: Set<Int> = [23,43,54,23]

// Вывожу в консоль количество элементов набора
print("Количество элементов в наборе: \(set1.count)")

set1.insert(11)

//7. Create 2 arrays, and merge them.
//проинициализировать 2 массива и объединить(можно в новом массиве)
var arr1 = [1, 3, 5]
var arr2 = [2, 4, 6]
var result = arr1 + arr2
result.sort()


//8. Write a closure to sum 2 integers, pass closure as argument to function, where return the result of calling that closure.
//Написать замыкание(closure), задача которого складывать 2 полученных аргумента типа Int и вернуть его и вывести в консоль.
func summa(firstChislo: Int, secondChislo: Int, closure: (Int, Int) -> Int) {
    closure(firstChislo, secondChislo)
}
let handler: (Int, Int) -> Int = {
    print("Сумма чисел  \($0 + $1)")
}



//9. Подготовить примеры:
// array.map(<#T##transform: (Int) throws -> T##(Int) throws -> T#>)
// array.filter(<#T##isIncluded: (Int) throws -> Bool##(Int) throws -> Bool#>)
