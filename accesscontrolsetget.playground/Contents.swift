//: Playground - noun: a place where people can play

class Samplepgm {
    private var counter: Int = 0 {
        willSet(newTotal) {
            print("Total Counter is: \(newTotal)")
        }
        didSet{
            if counter > oldValue {
                print("Newly Added Counter \(counter - oldValue)")
            }
        }
    }
}

let NewCounter = Samplepgm()
NewCounter.counter = 100
NewCounter.counter = 800
