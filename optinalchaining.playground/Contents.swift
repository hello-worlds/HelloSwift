//: Playground - noun: a place where people can play

class ElectionPoll {
    var candidate: Pollbooth?
}
class Pollbooth {
    var name = "MP"
}

let cand = ElectionPoll()

// make an error
//let candname = cand.candidate!.name

if let candname = cand.candidate?.name {
    print("Candidate name is \(candname)")
}else {
    print("Candidate name cannot be retreived")
}



//Defining Model Classes for Optional Chaining & Accessing Properties
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
    var street: String?
    
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

let rectname = rectangle()

if let rectarea = rectname.print?.cprint {
    print("Area of rectangle is \(rectarea)")
}  else {
    print("Rectangle Area is not specified")
}