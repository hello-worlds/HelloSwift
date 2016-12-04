//: Playground - noun: a place where people can play

enum names {
    case Swift
    case Closures
}


var lang = names.Closures
lang = .Closures
switch lang {
case .Swift:
    print("Welcome to Swift")
case .Closures:
    print("Welcome to Closures")
default:
    print("Introduction")
}

enum Climate {
    case India
    case America
    case Africa
    case Australia
}

var season = Climate.America
season = .America
switch season {
case .India:
    print("Climate is Hot")
case .America:
    print("Climate is Cold")
case .Africa:
    print("Climate is Moderate")
case .Australia:
    print("Climate is Rainy")
default:
    print("Climate is not predictable")
}


//Enum with Associated Values
enum Student {
    case Name(String)
    case Mark(Int,Int,Int)
}
var studDetails = Student.Name("Swift")
var studMarks = Student.Mark(98,97,95)
switch studMarks {
case .Name(let studName):
    print("Student name is: \(studName).")
case .Mark(let Mark1, let Mark2, let Mark3):
    print("Student Marks are: \(Mark1),\(Mark2),\(Mark3).")
default:
    print("Nothing")
}


//Enum with Raw Values
enum Month: Int {
    case January = 1, February, March, April, May, June, July, August, September, October, November, December
}

let yearMonth = Month.May.rawValue
print("Value of the Month is: \(yearMonth).")