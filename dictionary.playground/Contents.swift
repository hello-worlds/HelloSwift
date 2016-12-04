//: Playground - noun: a place where people can play

var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]

var someVar = someDict[1]

print( "Value of key = 1 is \(someVar)" )
print( "Value of key = 2 is \(someDict[2])" )
print( "Value of key = 3 is \(someDict[3])" )


var oldVal = someDict.updateValue("New value of one", forKey: 1)
someVar = someDict[1]

print( "Old value of key = 1 is \(oldVal)" )
print( "Value of key = 1 is \(someVar)" )
print( "Value of key = 2 is \(someDict[2])" )
print( "Value of key = 3 is \(someDict[3])" )


var removedValue = someDict.removeValueForKey(2)
print( "Value of key = 1 is \(someDict[1])" )
print( "Value of key = 2 is \(someDict[2])" )
print( "Value of key = 3 is \(someDict[3])" )
print( "Removed value of key = 2 is \(removedValue)" )


someDict[2] = nil
print( "Value of key = 1 is \(someDict[1])" )
print( "Value of key = 2 is \(someDict[2])" )
print( "Value of key = 3 is \(someDict[3])" )
print( "Removed value of key = 2 is \(removedValue)" )

for (key, value) in someDict {
    print("Dictionary key \(key) -  Dictionary value \(value)")
}

for (key, value) in EnumerateSequence(someDict) {
    print("Dictionary key \(key) -  Dictionary value \(value)")
}


// Convert to Arrays
let dictKeys = [Int](someDict.keys)
let dictValues = [String](someDict.values)
print("Print Dictionary Keys")
for (key) in dictKeys {
    print("\(key)")
}

print("Print Dictionary Values")
for (value) in dictValues {
    print("\(value)")
}


// count property
var someDict1:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
var someDict2:[Int:String] = [4:"Four", 5:"Five"]


print("Total items in someDict1 = \(someDict1.count)")
print("Total items in someDict2 = \(someDict2.count)")

// empty property
var someDict3:[Int:String] = [Int:String]()
print("someDict1 = \(someDict1.isEmpty)")
print("someDict2 = \(someDict2.isEmpty)")
print("someDict3 = \(someDict3.isEmpty)")