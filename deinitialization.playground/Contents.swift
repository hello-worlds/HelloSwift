//: Playground - noun: a place where people can play

var counter = 0;  // for reference counting
class baseclass {
    init() {
        counter++;
    }
    deinit {
        counter--;
    }
}

var print: baseclass? = baseclass()

//print(counter)
print = nil
//print(counter)



class StudDetails {
    var stname: String!
    var mark1: Int!
    init(stname: String, mark1: Int) {
        self.stname = stname
        self.mark1 = mark1
    }
    
    deinit {
//        print("Deinitialized \(self.stname)")
//        print("Deinitialized \(self.mark1)")
    }
}

let stname = "swift"
let mark1 = 98

//print(stname)
//print(mark1)

