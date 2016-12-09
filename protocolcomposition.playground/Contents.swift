//: Playground - noun: a place where people can play

protocol stname {
    var name: String { get }
}

protocol stage {
    var age: Int { get }
}

struct Person: stname, stage {
    var name: String
    var age: Int
}

func print(celebrator: protocol<stname, stage>) {
    print("\(celebrator.name) is \(celebrator.age) years old")
}

let studname = Person(name: "Priya", age: 21)
print(studname)

let stud = Person(name: "Rehan", age: 29)
print(stud)

let student = Person(name: "Roshan", age: 19)
print(student)