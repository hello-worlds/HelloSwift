//: Playground - noun: a place where people can play

protocol Container {
    typealias ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

struct TOS<T>: Container {
    // original Stack<T> implementation
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
    
    // conformance to the Container protocol
    mutating func append(item: T) {
        self.push(item)
    }
    
    var count: Int {
        return items.count
    }
    
    subscript(i: Int) -> T {
        return items[i]
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