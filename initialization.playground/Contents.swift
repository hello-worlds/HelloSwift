//: Playground - noun: a place where people can play

//Initializer Role for Stored Properties
struct rectangle {
    var length: Double
    var breadth: Double
    init() {
        length = 6
        breadth = 12
    }
}
var area = rectangle()
print("area of rectangle is \(area.length*area.breadth)")


//Setting Property Values by Default
struct rectangles {
    var length = 6
    var breadth = 12
}
var areas = rectangles()
print("area of rectangle is \(areas.length*areas.breadth)")

//Parameters Initialization
struct Rectangled {
    var length: Double
    var breadth: Double
    var area: Double
    
    init(fromLength length: Double, fromBreadth breadth: Double) {
        self.length = length
        self.breadth = breadth
        area = length * breadth
    }
    
    init(fromLeng leng: Double, fromBread bread: Double) {
        self.length = leng
        self.breadth = bread
        area = leng * bread
    }
}

let ar = Rectangled(fromLength: 6, fromBreadth: 12)
print("area is: \(ar.area)")

let are = Rectangled(fromLeng: 36, fromBread: 12)
print("area is: \(are.area)")


//Local & External Parameters
struct Days {
    let sunday, monday, tuesday: Int
    init(sunday: Int, monday: Int, tuesday: Int) {
        self.sunday = sunday
        self.monday = monday
        self.tuesday = tuesday
    }
    
    init(daysofaweek: Int) {
        sunday = daysofaweek
        monday = daysofaweek
        tuesday = daysofaweek
    }
}

let week = Days(sunday: 1, monday: 2, tuesday: 3)
print("Days of a Week is: \(week.sunday)")
print("Days of a Week is: \(week.monday)")
print("Days of a Week is: \(week.tuesday)")

let weekdays = Days(daysofaweek: 4)
print("Days of a Week is: \(weekdays.sunday)")
print("Days of a Week is: \(weekdays.monday)")
print("Days of a Week is: \(weekdays.tuesday)")