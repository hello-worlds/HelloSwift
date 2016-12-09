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
    Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz"),
    Chemistry(physics: "Thermo physics", equations: "Decibels"),
    Maths(physics: "Astro Physics", formulae: "MegaHertz"),
    Maths(physics: "Differential Equations", formulae: "Cosine Series")]


let samplechem = Chemistry(physics: "solid physics", equations: "Hertz")
print("Instance physics is: \(samplechem.physics)")
print("Instance equation is: \(samplechem.equations)")


let samplemaths = Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz")
print("Instance physics is: \(samplemaths.physics)")
print("Instance formulae is: \(samplemaths.formulae)")

var chemCount = 0
var mathsCount = 0

for item in sa {
    if let print = item as? Chemistry {
        print("Chemistry topics are: '\(print.physics)', \(print.equations)")
    }else if let example = item as? Maths {
        print("Maths topics are: '\(example.physics)',  \(example.formulae)")
    }
}