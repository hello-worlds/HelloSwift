//: Playground - noun: a place where people can play

extension Int {
    enum calc {
        case add
        case sub
        case mult
        case div
        case anything
    }
    
    var print: calc {
        switch self {
        case 0:
            return .add
        case 1:
            return .sub
        case 2:
            return .mult
        case 3:
            return .div
        default:
            return .anything
        }
    }
}

func result(numb: [Int]) {
    for i in numb {
        switch i.print {
        case .add:
            print(" 10 ")
        case .sub:
            print(" 20 ")
        case .mult:
            print(" 30 ")
        case .div:
            print(" 40 ")
        default:
            print(" 50 ")
            
        }
    }
}

result([0, 1, 2, 3, 4, 7])