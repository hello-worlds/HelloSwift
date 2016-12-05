//: Playground - noun: a place where people can play

//Memberwise Initializers for Structure Types
struct Rectangle {
    var length = 100.0, breadth = 200.0
}
let area = Rectangle(length: 24.0, breadth: 32.0)

print("Area of rectangle is: \(area.length)")
print("Area of rectangle is: \(area.breadth)")



//Initializer Delegation for Value Types
struct Stmark {
    var mark1 = 0.0, mark2 = 0.0
}
struct stdb {
    var m1 = 0.0, m2 = 0.0
}

struct block {
    var average = stdb()
    var result = Stmark()
    
    init() {}
    
    init(average: stdb, result: Stmark) {
        self.average = average
        self.result = result
    }
    
    init(avg: stdb, result: Stmark) {
        let tot = avg.m1 - (result.mark1 / 2)
        let tot1 = avg.m2 - (result.mark2 / 2)
        self.init(average: stdb(m1: tot, m2: tot1), result: result)
    }
}

let set1 = block()
print("student result is: \(set1.average.m1, set1.average.m2) \(set1.result.mark1, set1.result.mark2)")

let set2 = block(average: stdb(m1: 2.0, m2: 2.0),
    result: Stmark(mark1: 5.0, mark2: 5.0))
print("student result is: \(set2.average.m1, set2.average.m2) \(set2.result.mark1, set2.result.mark2)")

let set3 = block(avg: stdb(m1: 4.0, m2: 4.0),
    result: Stmark(mark1: 3.0, mark2: 3.0))
print("student result is: \(set3.average.m1, set3.average.m2) \(set3.result.mark1, set3.result.mark2)")


