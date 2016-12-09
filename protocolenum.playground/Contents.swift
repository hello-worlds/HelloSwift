//: Playground - noun: a place where people can play

protocol daysofaweek {
    mutating func print()
}

enum days: daysofaweek {
    case sun, mon, tue, wed, thurs, fri, sat
    mutating func print() {
        switch self {
        case sun:
            self = sun
            print("Sunday")
        case mon:
            self = mon
            print("Monday")
        case tue:
            self = tue
            print("Tuesday")
        case wed:
            self = wed
            print("Wednesday")
        case mon:
            self = thurs
            print("Thursday")
        case tue:
            self = fri
            print("Friday")
        case sat:
            self = sat
            print("Saturday")
        default:
            print("NO Such Day")
        }
    }
}

var res = days.wed
res.print()
