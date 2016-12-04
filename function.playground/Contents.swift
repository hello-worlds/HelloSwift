//: Playground - noun: a place where people can play

func student(name: String) -> String {
    return name
}

print(student("First Program"))
print(student("About Functions"))


func display(no1: Int) -> Int {
    let a = no1
    return a
}

print(display(100))
print(display(200))


// Functions with Parameters
func mult(no1: Int, no2: Int) -> Int {
    return no1*no2
}

// error
//mult(1,2)

print(mult(2,no2: 20))
print(mult(3,no2: 15))
print(mult(4,no2: 30))

//Functions without Parameters
func votersname() -> String {
    return "Alice"
}
print(votersname())

// Functions with Return Values
func ls(array: [Int]) -> (large: Int, small: Int) {
    var lar = array[0]
    var sma = array[0]
    for i in array[1..<array.count] {
        if i < sma {
            sma = i
        }else if i > lar {
            lar = i
        }
    }
    return (lar, sma)
}
let num = ls([40,12,-5,78,98])
print("Largest number is: \(num.large) and smallest number is: \(num.small)")


// Functions Without Return Values
func sum(a: Int, b: Int) {
    let a = a + b
    let b = a - b
    print(a, b)
}
sum(20, b: 10)
sum(40, b: 10)
sum(24, b: 6)



//Functions with Optional Return Types
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        }else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
if let bounds = minMax([8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}


// External Parameter Names
func pow(firstArg a: Int, secondArg b: Int) -> Int {
    var res = a
    for _ in 1..<b {
        res = res * a
    }
    print(res)
    return res
}

pow(firstArg: 5, secondArg: 3)


// Variadic Parameters
func vari<N>(members: N...) {
    for i in members {
        print(i)
    }
}
vari(4,3,5)
vari(4.5, 3.1, 5.6)
vari("Swift", "Enumerations", "Closures")


// values passing
func temp(inout a1: Int, inout b1: Int) {
    let t = a1
    a1 = b1
    b1 = t
}
var no = 2
var co = 10
temp(&no, b1: &co)
print("Swapped values are \(no), \(co)")


// Using Function Types
func suma(a: Int, b: Int) -> Int {
    return a + b
}
var addition: (Int, Int) -> Int = suma
print("Result: \(addition(40, 89))")

// Function Types as Parameter Types & Return Types
func another(addition: (Int, Int) -> Int, a: Int, b: Int) {
    print("Result: \(addition(a, b))")
}
another(suma, a: 10, b: 20)

//Nested Functions
func calcDecrement(forDecrement total: Int) -> () -> Int {
    var overallDecrement = 0
    func decrementer() -> Int {
        overallDecrement -= total
        return overallDecrement
    }
    return decrementer
}
let decrem = calcDecrement(forDecrement: 30)
print(decrem())
