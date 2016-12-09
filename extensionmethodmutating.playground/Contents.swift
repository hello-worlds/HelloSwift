//: Playground - noun: a place where people can play

extension Double {
    mutating func square() {
        let pi = 3.1415
        self = pi * self * self
    }
}

var Trial1 = 3.3
Trial1.square()
print("Area of circle is: \(Trial1)")


var Trial2 = 5.8
Trial2.square()
print("Area of circle is: \(Trial2)")


var Trial3 = 120.3
Trial3.square()
print("Area of circle is: \(Trial3)")