//: Playground - noun: a place where people can play

//Accessing Subscripts of Optional Type

class rectangle {
    var print: circle?
}

class circle {
    var area = [radius]()
    var cprint: Int {
        return area.count
    }
    
    subscript(i: Int) -> radius {
        get {
            return area[i]
        }set {
            area[i] = newValue
        }
    }
    
    func circleprint() {
        print("The number of rooms is \(cprint)")
    }
    var rectarea: circumference?
}


class radius {
    let radiusname: String
    init(radiusname: String) { self.radiusname = radiusname }
}

class circumference {
    var circumName: String?
    var circumNumber: String?
    var circumarea: String?
    
    func buildingIdentifier() -> String? {
        if circumName != nil {
            return circumName
        }else if circumNumber != nil {
            return circumNumber
        }else {
            return nil
        }
    }
}

let circname = rectangle()
circname.print?[0] = radius(radiusname: "Diameter")

let printing = circle()
printing.area.append(radius(radiusname: "Units"))
printing.area.append(radius(radiusname: "Meter"))
circname.print = printing

var area = ["Radius": [35, 45, 78, 101], "Circle": [90, 45, 56]]
area["Radius"]?[1] = 78
area["Circle"]?[1]--

print(area["Radius"]?[0])
print(area["Radius"]?[1])
print(area["Radius"]?[2])
print(area["Radius"]?[3])


print(area["Circle"]?[0])
print(area["Circle"]?[1])
print(area["Circle"]?[2])
