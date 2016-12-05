//: Playground - noun: a place where people can play

//ARC Strong Reference Cycles Class Instances
class studmarks {
    let name: String
    var stud1: student?
    
    init (name: String) {
        //        print("Initializing: \(name)")
        self.name = name
    }
    
    deinit {
        //        print("Deallocating: \(self.name)")
    }
}

class student {
    let name: String
    var strname: studmarks?
    
    init (name: String) {
        //        print("Initializing: \(name)")
        self.name = name
    }
    
    deinit {
        //        print("Deallocating: \(self.name)")
    }
}

var shiba: studmarks?
var mari: student?

shiba = studmarks(name: "Swift")
mari = student(name: "ARC")

shiba!.stud1 = mari
mari!.strname = shiba



//Weak Reference Program
class module {
    let name: String
    init(name: String) { self.name = name }
    var sub: submodule?
    deinit {
        //        print("\(name) Is The Main Module")
    }
}

class submodule {
    let number: Int
    
    init(number: Int) { self.number = number }
    
    weak var topic: module?
    
    deinit {
        //        print("Sub Module with its topic number is \(number)")
    }
}

var toc: module?
var list: submodule?
toc = module(name: "ARC")
list = submodule(number: 4)
toc!.sub = list
list!.topic = toc

toc = nil
list = nil


//Unowned Reference Program
class students {
    let name: String
    var section: marks?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        //        print("\(name)")
    }
}
class marks {
    let marks: Int
    unowned let stname: students
    
    init(marks: Int, stname: students) {
        self.marks = marks
        self.stname = stname
    }
    
    deinit {
        //        print("Marks Obtained by the student is \(marks)")
    }
}

var modules: students?
modules = students(name: "ARC")
modules!.section = marks(marks: 98, stname: modules!)
modules = nil


//Strong Reference Cycles for Closures
class HTMLElement {
    let samplename: String
    let text: String?
    
    lazy var asHTML: () -> String = {
        if let text = self.text {
            return "<\(self.samplename)>\(text)</\(self.samplename)>"
        }else {
            return "<\(self.samplename) />"
        }
    }
    
    init(samplename: String, text: String? = nil) {
        self.samplename = samplename
        self.text = text
    }
    
    deinit {
        //        print("\(samplename) is being deinitialized")
    }
}

var paragraph: HTMLElement? = HTMLElement(samplename: "p", text: "Welcome to Closure SRC")
//print(paragraph!.asHTML())


//Weak and Unowned References
class HTMLElements {
    let module: String
    let text: String?
    
    lazy var asHTML: () -> String = {
        [unowned self] in
        if let text = self.text {
            return "<\(self.module)>\(text)</\(self.module)>"
        }else {
            return "<\(self.module) />"
        }
    }
    
    init(module: String, text: String? = nil) {
        self.module = module
        self.text = text
    }
    
    deinit {
        //        print("\(module) the deinit()")
    }
}

var paragraphs: HTMLElements? = HTMLElements(module: "Inside", text: "ARC Weak References")
//print(paragraphs!.asHTML())
paragraph = nil