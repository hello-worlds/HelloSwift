//: Playground - noun: a place where people can play

public protocol Container {
    typealias ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

struct Stack<T>: Container {
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

func allItemsMatch<
    C1: Container, C2: Container
    where C1.ItemType == C2.ItemType, C1.ItemType: Equatable>
    (someContainer: C1, anotherContainer: C2) -> Bool {
        // check that both containers contain the same number of items
        if someContainer.count != anotherContainer.count {
            return false
        }
        
        // check each pair of items to see if they are equivalent
        for i in 0..<someContainer.count {
            if someContainer[i] != anotherContainer[i] {
                return false
            }
        }
        
        // all items match, so return true
        return true
}

var tos = Stack<String>()
tos.push("Swift")
print(tos.items)

tos.push("Generics")
print(tos.items)

tos.push("Where Clause")
print(tos.items)

var eos = ["Swift", "Generics", "Where Clause"]
print(eos)