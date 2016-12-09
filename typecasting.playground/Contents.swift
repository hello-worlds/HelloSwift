//: Playground - noun: a place where people can play

class Subjects {
    var physics: String
    init(physics: String) {
        self.physics = physics
    }
}

class Chemistry: Subjects {
    var equations: String
    init(physics: String, equations: String) {
        self.equations = equations
        super.init(physics: physics)
    }
}

class Maths: Subjects {
    var formulae: String
    init(physics: String, formulae: String) {
        self.formulae = formulae
        super.init(physics: physics)
    }
}

let sa = [
    Chemistry(physics: "solid physics", equations: "Hertz"),
    Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz")]


let samplechem = Chemistry(physics: "solid physics", equations: "Hertz")
print("Instance physics is: \(samplechem.physics)")
print("Instance equation is: \(samplechem.equations)")


let samplemaths = Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz")
print("Instance physics is: \(samplemaths.physics)")
print("Instance formulae is: \(samplemaths.formulae)")



// type checking
var chemCount = 0
var mathsCount = 0
for item in sa {
    if item is Chemistry {
        ++chemCount
    }else if item is Maths {
        ++mathsCount
    }
}

print("Subjects in chemistry contains \(chemCount) topics and maths contains \(mathsCount) topics")

