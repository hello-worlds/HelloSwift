//: Playground - noun: a place where people can play

//Methods

extension Int {
    func topics(summation: () -> ()) {
        for _ in 0..<self {
            summation()
        }
    }
}

4.topics({
    print("Inside Extensions Block")
})

3.topics({
    print("Inside Type Casting Block")
})