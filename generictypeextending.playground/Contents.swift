//: Playground - noun: a place where people can play

struct TOS<T> {
    var items = [T]()
    mutating func push(item: T) {
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

extension TOS {
    var first: T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}

if let first = tos.first {
    print("The top item on the stack is \(first).")
}