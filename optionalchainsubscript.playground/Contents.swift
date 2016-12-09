//: Playground - noun: a place where people can play

//Accessing Subscripts through Optional Chaining

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


let circnames = rectangle()

if let radiusName = circnames.print?[0].radiusname {
    print("The first room name is \(radiusName).")
} else {
    print("Radius is not specified.")
}


let circname = rectangle()
circname.print?[0] = radius(radiusname: "Diameter")

let printing = circle()
printing.area.append(radius(radiusname: "Units"))
printing.area.append(radius(radiusname: "Meter"))
circname.print = printing

if let radiusName = circname.print?[0].radiusname {
    print("Radius is measured in \(radiusName).")
}else {
    print("Radius is not specified.")
}