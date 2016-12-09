//: Playground - noun: a place where people can play

public struct TOS<T> {
    var items = [T]()
    private mutating func push(item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
}

var tos = TOS<String>()
tos.push("Swift")
print(tos.items)

tos.push("Generics")
print(tos.items)

tos.push("Type Parameters")
print(tos.items)

tos.push("Naming Type Parameters")
print(tos.items)
let deletetos = tos.pop()
