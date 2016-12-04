//: Playground - noun: a place where people can play

struct studentMarks {
    var mark1 = 100
    var mark2 = 200
    var mark3 = 300
}

let marks = studentMarks()
print("Mark1 is \(marks.mark1)")
print("Mark2 is \(marks.mark2)")
print("Mark3 is \(marks.mark3)")


struct MarksStruct {
    var mark: Int
    
    init(mark: Int) {
        self.mark = mark
    }
}
var aStruct = MarksStruct(mark: 98)
var bStruct = aStruct // aStruct and bStruct are two structs with the same value!
bStruct.mark = 97
print(aStruct.mark) // 98
print(bStruct.mark) // 97



struct markStructs {
    var mark1: Int
    var mark2: Int
    var mark3: Int
    
    init(mark1: Int, mark2: Int, mark3: Int) {
        self.mark1 = mark1
        self.mark2 = mark2
        self.mark3 = mark3
    }
}

var markse = markStructs(mark1: 98, mark2: 96, mark3:100)
print(markse.mark1)
print(markse.mark2)
print(markse.mark3)


var fail = markStructs(mark1: 34, mark2: 42, mark3: 13)
print(fail.mark1)
print(fail.mark2)
print(fail.mark3)