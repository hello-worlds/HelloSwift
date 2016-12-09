//: Playground - noun: a place where people can play

extension Int {
    subscript(var multtable: Int) -> Int {
        var no1 = 1
        while multtable > 0 {
            no1 *= 10
            --multtable
        }
        return (self / no1) % 10
    }
}

print(12[0])
print(7869[1])
print(786543[2])