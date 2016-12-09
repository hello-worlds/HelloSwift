//: Playground - noun: a place where people can play

class classA {
    required init() {
        var a = 10
        print(a)
    }
}

class classB: classA {
    required init() {
        var b = 30
        print(b)
    }
}

let res = classA()
let print = classB()