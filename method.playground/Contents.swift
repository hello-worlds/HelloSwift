//: Playground - noun: a place where people can play

//Self property in Methods
class calculations {
    let a: Int
    let b: Int
    let res: Int
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
        res = a + b
        print("Inside Self Block: \(res)")
    }
    
    func tot(c: Int) -> Int {
        return res - c
    }
    
    func result() {
        print("Result is: \(tot(20))")
        print("Result is: \(tot(50))")
    }
}

let pri = calculations(a: 600, b: 300)
let sum = calculations(a: 1200, b: 300)
pri.result()
sum.result()

print(pri.tot(3))

//Local and External Parameter Names
//Here 'no1' is declared by swift methods as local parameter names.
//'no2' is used for global declarations and accessed through out the program.
class division {
    var count: Int = 0
    func incrementBy(no1: Int, no2: Int) {
        count = no1 / no2
        print(count)
    }
}

let counter = division()
counter.incrementBy(1800, no2: 3)
counter.incrementBy(1600, no2: 5)
counter.incrementBy(11000, no2: 3)


//External Parameter Name with # and _ Symbol
class multiplication {
    var count: Int = 0
//    func incrementBy(#no1: Int, no2: Int)
    func incrementBy(no1 no1: Int, no2: Int) {
        count = no1 * no2
        print(count)
    }
}

let counters = multiplication()
counters.incrementBy(no1: 800, no2: 3)
counters.incrementBy(no1: 100, no2: 5)
counters.incrementBy(no1: 15000, no2: 3)


//Modifying Value Types from Instance Methods
struct area {
    var length = 1
    var breadth = 1
    
    func area() -> Int {
        return length * breadth
    }
    
    mutating func scaleBy(res: Int) {
        length *= res
        breadth *= res
        
        print(length)
        print(breadth)
    }
}

var val = area(length: 3, breadth: 5)
val.area()
val.scaleBy(3)
val.area()
val.scaleBy(30)
val.area()
val.scaleBy(300)
val.area()

//Self Property for Mutating Method
struct arean {
    var length = 1
    var breadth = 1
    
    func area() -> Int {
        return length * breadth
    }
    
    mutating func scaleBy(res: Int) {
        self.length *= res
        self.breadth *= res
        print(length)
        print(breadth)
    }
}
var valn = arean(length: 3, breadth: 5)
valn.scaleBy(13)


//Type Methods
class Math {
    class func abs(number: Int) -> Int {
        if number < 0 {
            return (-number)
        }else {
            return number
        }
    }
}

struct absno {
    static func abs(number: Int) -> Int {
        if number < 0 {
            return (-number)
        }else {
            return number
        }
    }
}

let no = Math.abs(-35)
let num = absno.abs(-5)

print(no)
print(num)

