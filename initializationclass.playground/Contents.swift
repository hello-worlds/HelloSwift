//: Playground - noun: a place where people can play

//Parameters without External Names
struct Rectangle {
    var length: Double
    
    init(frombreadth breadth: Double) {
        length = breadth * 10
    }
    
    init(frombre bre: Double) {
        length = bre * 30
    }
    
    init(_ area: Double) {
        length = area
    }
}

let rectarea = Rectangle(180.0)
print("area is: \(rectarea.length)")

let rearea = Rectangle(370.0)
print("area is: \(rearea.length)")

let recarea = Rectangle(110.0)
print("area is: \(recarea.length)")

let are = Rectangle(frombreadth: 10)
print("area is: \(are.length)")



//Optional Property Types
struct Rectangled {
    var length: Double?
    
    init(frombreadth breadth: Double) {
        length = breadth * 10
    }
    
    init(frombre bre: Double) {
        length = bre * 30
    }
    
    init(_ area: Double) {
        length = area
    }
}

let rectaread = Rectangled(180.0)
print("area is: \(rectaread.length)")

let rearead = Rectangled(370.0)
print("area is: \(rearead.length)")

let recaread = Rectangled(110.0)
print("area is: \(recaread.length)")



//Default Initializers
class defaultexample {
    var studname: String?
    var stmark = 98
    var pass = true
}
var result = defaultexample()

print("result is: \(result.studname)")
print("result is: \(result.stmark)")
print("result is: \(result.pass)")


