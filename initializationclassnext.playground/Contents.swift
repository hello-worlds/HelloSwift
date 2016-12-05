//: Playground - noun: a place where people can play

//Program for Designated Initializers
class mainClass {
    var no1 : Int // local storage
    init(no1 : Int) {
        self.no1 = no1 // initialization
    }
}

class subClass : mainClass {
    var no2 : Int // new subclass storage
    init(no1 : Int, no2 : Int) {
        self.no2 = no2 // initialization
        super.init(no1:no1) // redirect to superclass
    }
}

let res = mainClass(no1: 10)
let print = subClass(no1: 10, no2: 20)

//print("res is: \(res.no1)")
//print("res is: \(print.no1)")
//print("res is: \(print.no2)")

//Program for Convenience Initializers
class mainClassy {
    var no1 : Int // local storage
    init(no1 : Int) {
        self.no1 = no1 // initialization
    }
}

class subClassy : mainClassy {
    var no2 : Int
    init(no1 : Int, no2 : Int) {
        self.no2 = no2
        super.init(no1:no1)
    }
    // Requires only one parameter for convenient method
    override convenience init(no1: Int)  {
        self.init(no1:no1, no2:0)
    }
}
let resy = mainClassy(no1: 20)
let printy = subClassy(no1: 30, no2: 50)

//print("res is: \(res.no1)")
//print("res is: \(print.no1)")
//print("res is: \(print.no2)")






//Initializer Inheritance and Overriding
class sides {
    var corners = 4
    var description: String {
        return "\(corners) sides"
    }
}
let rectangle = sides()
//print("Rectangle: \(rectangle.description)")

class pentagon: sides {
    override init() {
        super.init()
        corners = 5
    }
}

let bicycle = pentagon()
//print("Pentagon: \(bicycle.description)")


//Designated and Convenience Initializers in Action
class Planet {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "[No Planets]")
    }
}
let plName = Planet(name: "Mercury")
//print("Planet name is: \(plName.name)")

let noplName = Planet()
//print("No Planets like that: \(noplName.name)")

class planets: Planet {
    var count: Int
    init(name: String, count: Int) {
        self.count = count
        super.init(name: name)
    }
    
    override convenience init(name: String) {
        self.init(name: name, count: 1)
    }
}