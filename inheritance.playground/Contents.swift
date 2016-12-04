//: Playground - noun: a place where people can play

//Base Class
class StudDetail {
    var stname: String!
    var mark1: Int!
    var mark2: Int!
    var mark3: Int!
    init(stname: String, mark1: Int, mark2: Int, mark3: Int) {
        self.stname = stname
        self.mark1 = mark1
        self.mark2 = mark2
        self.mark3 = mark3
    }
}

let stname = "swift"
let mark1 = 98
let mark2 = 89
let mark3 = 76

print(stname)
print(mark1)
print(mark2)
print(mark3)


//Subclass
class StudDetails {
    var mark1: Int;
    var mark2: Int;
    
    init(stm1:Int, results stm2:Int) {
        mark1 = stm1;
        mark2 = stm2;
    }
    
    func print(){
//        print("Mark1:\(mark1), Mark2:\(mark2)")
    }
}

class display : StudDetails {
    init() {
        super.init(stm1: 93, results: 89)
    }
}

let marksobtained = display()
marksobtained.print()


//Methods Overriding
class cricket {
    func print() {
//        print ("Welcome to Swift Super Class")
    }
}

class tennis: cricket {
    override func print() {
//        print ("Welcome to Swift Sub Class")
    }
}

let cricinstance = cricket()
cricinstance.print()

let tennisinstance = tennis()
tennisinstance.print()



//Overriding Property Getters and Setters
class Circle {
    var radius = 12.5
    var area: String {
        return "of rectangle for \(radius) "
    }
}

class Rectangle: Circle {
    var print = 7
    override var area: String {
        return super.area + " is now overridden as \(print)"
    }
}

let rect = Rectangle()
rect.radius = 25.0
rect.print = 3
print("Radius \(rect.area)")




//Overriding Property Observers
class Square: Rectangle {
    override var radius: Double {
        didSet {
            print = Int(radius/5.0)+1
        }
    }
}


let sq = Square()
sq.radius = 100.0
print("Radius \(sq.area)")

//Final Property to prevent Overriding
