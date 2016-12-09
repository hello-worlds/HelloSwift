//: Playground - noun: a place where people can play

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
        print("Area of Circle is: \(cprint)")
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
if circname.print?.circleprint() != nil {
    print("Area of circle is specified)")
}else {
    print("Area of circle is not specified")
}