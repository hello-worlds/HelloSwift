//: Playground - noun: a place where people can play

protocol classa {
    var no1: Int { get set }
    func calc(sum: Int)
}

protocol result {
    func print(target: classa)
}

class student2: result {
    func print(target: classa) {
        target.calc(1)
    }
}

class classb: result {
    func print(target: classa) {
        target.calc(5)
    }
}

class student: classa {
    var no1: Int = 10
    
    func calc(sum: Int) {
        no1 -= sum
        print("Student attempted \(sum) times to pass")
        
        if no1 <= 0 {
            print("Student is absent for exam")
        }
    }
}

class Player {
    var stmark: result!
    
    init(stmark: result) {
        self.stmark = stmark
    }
    
    func print(target: classa) {
        stmark.print(target)
    }
}

var marks = Player(stmark: student2())
var marksec = student()

marks.print(marksec)
marks.print(marksec)
marks.print(marksec)
marks.stmark = classb()
marks.print(marksec)
marks.print(marksec)
marks.print(marksec)