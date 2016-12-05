//: Playground - noun: a place where people can play

struct studrecord {
    let stname: String
    
    init?(stname: String) {
        if stname.isEmpty {return nil }
        self.stname = stname
    }
}

let stmark = studrecord(stname: "Swing")
if let name = stmark {
    print("Student name is specified")
}

let blankname = studrecord(stname: "")
if blankname == nil {
    print("Student name is left blank")
}


//Failable Initializers for Enumerations
enum functions {
    case a, b, c, d
    init?(funct: String) {
        switch funct {
        case "one":
            self = .a
        case "two":
            self = .b
        case "three":
            self = .c
        case "four":
            self = .d
        default:
            return nil
        }
    }
}

let result = functions(funct: "two")
if result != nil {
    print("With In Block Two")
}

let badresult = functions(funct: "five")
if badresult == nil {
    print("Block Does Not Exist")
}



//Failable Initializers for Classes
class studrecords {
    let studname: String!
    init?(studname: String) {
        self.studname = studname
        if studname.isEmpty { return nil }
    }
}
if let stname = studrecords(studname: "Failable Initializers") {
    print("Module is \(stname.studname)")
}



//Overriding a Failable Initializer
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
print("Planet name is: \(plName.name)")

let noplName = Planet()
print("No Planets like that: \(noplName.name)")

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

//The init! Failable Initializer
struct studrecordy {
    let stname: String
    
    init!(stname: String) {
        if stname.isEmpty {return nil }
        self.stname = stname
    }
}

let stmarky = studrecordy(stname: "Swing")
if let name = stmarky {
    print("Student name is specified")
}

let blanknamey = studrecordy(stname: "")
if blanknamey == nil {
    print("Student name is left blank")
}