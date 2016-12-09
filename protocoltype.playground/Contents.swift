//: Playground - noun: a place where people can play

protocol Generator {
    typealias members
    func next() -> members?
}

var items = [10,20,30].generate()
while let x = items.next() {
    print(x)
}

for lists in map([1,2,3], {i in i*5}) {
    print(lists)
}

print([100,200,300])
print(map([1,2,3], {i in i*10}))
