//: Playground - noun: a place where people can play

struct subexample {
    let decrementer: Int
    subscript(index: Int) -> Int {
        return decrementer / index
    }
}
let division = subexample(decrementer: 100)

print("The number is divisible by \(division[9]) times")
print("The number is divisible by \(division[2]) times")
print("The number is divisible by \(division[3]) times")
print("The number is divisible by \(division[5]) times")
print("The number is divisible by \(division[7]) times")


class daysofaweek {
    private var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "saturday"]
    subscript(index: Int) -> String {
        get {
            return days[index]
        }
        
        set(newValue) {
            self.days[index] = newValue
        }
    }
}
var p = daysofaweek()

print(p[0])
print(p[1])
print(p[2])
print(p[3])

//Options in Subscript
struct Matrix {
    let rows: Int, columns: Int
    var print: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        print = Array(count: rows * columns, repeatedValue: 0.0)
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            return print[(row * columns) + column]
        }
        
        set {
            print[(row * columns) + column] = newValue
        }
    }
}
var mat = Matrix(rows: 3, columns: 3)

mat[0,0] = 1.0
mat[0,1] = 2.0
mat[1,0] = 3.0
mat[1,1] = 5.0

print("\(mat[0,0])")
print("\(mat[0,1])")
print("\(mat[1,0])")
print("\(mat[1,1])")