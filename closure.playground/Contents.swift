//: Playground - noun: a place where people can play

let studname = { print("Welcome to Swift Closures") }
studname()


let divide = {(val1: Int, val2: Int) -> Int in
    return val1 / val2
}
let result = divide(200, 20)
print (result)



func ascend(s1: String, s2: String) -> Bool {
    return s1 > s2
}
let stringcmp = ascend("swift", s2: "great")
print (stringcmp)


let sum = {(no1: Int, no2: Int) -> Int in
    return no1 + no2
}
let digits = sum(10, 20)
print(digits)


//Single Expression Implicit Returns

//let count = [5, 10, -6, 75, 20]
//var descending = sorted(count, { n1, n2 in n1 > n2 })
//var ascending = sorted(count, { n1, n2 in n1 < n2 })
//
//print(descending)
//print(ascending)


//Known Type Closures
//let sub = {(no1: Int, no2: Int) -> Int in
//    return no1 - no2
//}
//let digits = sub(10, 20)
//print(digits)


//Declaring Shorthand Argument Names as Closures
var shorthand: (String, String) -> String
shorthand = { $1 }
print(shorthand("100", "200"))



//Closures as Operator Functions
let numb = [98, -20, -30, 42, 18, 35]
var sortedNumbers = numb.sort({
    (left: Int, right: Int) -> Bool in
    return left < right
})
let asc = numb.sort(<)
print(asc)


//Closures as Trailers
var letters = ["North", "East", "West", "South"]

//let twoletters = letters.map({ (state: String) -> String in
//    return state.substringToIndex(advance(state.startIndex, 2)).uppercaseString
//})
//let stletters = letters.map() { $0.substringToIndex(advance($0.startIndex, 2)).uppercaseString }
//print(stletters)



//Capturing Values and Reference Types
//let decrem = calcDecrement(forDecrement: 18)
//decrem()

//Capturing Values and Reference Types
func calcDecrement(forDecrement total: Int) -> () -> Int {
    var overallDecrement = 100
    func decrementer() -> Int {
        overallDecrement -= total
        print(overallDecrement)
        return overallDecrement
    }
    return decrementer
}
let decrem = calcDecrement(forDecrement: 18)
decrem()
decrem()
decrem()