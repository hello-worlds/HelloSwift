//: Playground - noun: a place where people can play

var someIntsInitial:[Int] = [10, 20, 30]

var someInts = [Int](count: 3, repeatedValue: 10)

var someVar = someInts[0]

print( "Value of first element is \(someVar)" )
print( "Value of second element is \(someInts[1])" )
print( "Value of third element is \(someInts[2])" )


//Modifying Arrays
var someIntsArray = [Int]()

someIntsArray.append(20)
someIntsArray.append(30)
someIntsArray += [40]

var someVarArray = someIntsArray[0]

print( "Value of first element is \(someVarArray)" )
print( "Value of second element is \(someIntsArray[1])" )
print( "Value of third element is \(someIntsArray[2])" )



//Iterating Over an Array
var someStrs = [String]()

someStrs.append("Apple")
someStrs.append("Amazon")
someStrs += ["Google"]

for item in someStrs {
    print(item)
}

for (index, item) in EnumerateSequence(someStrs) {
    print("Value at index = \(index) is \(item)")
}


// Adding Two Arrays
var intsA = [Int](count:2, repeatedValue: 2)
var intsB = [Int](count:3, repeatedValue: 1)

var intsC = intsA + intsB

for item in intsC {
    print(item)
}


// The count Property
var intsACount = [Int](count:2, repeatedValue: 2)
var intsBCount = [Int](count:3, repeatedValue: 1)

var intsCCount = intsA + intsB

print("Total items in intsA = \(intsACount.count)")
print("Total items in intsB = \(intsBCount.count)")
print("Total items in intsC = \(intsCCount.count)")


// empty property
var intsAEmpty = [Int](count:2, repeatedValue: 2)
var intsBEmpty = [Int](count:3, repeatedValue: 1)
var intsCEmpty = [Int]()

print("intsA.isEmpty = \(intsAEmpty.isEmpty)")
print("intsB.isEmpty = \(intsBEmpty.isEmpty)")
print("intsC.isEmpty = \(intsCEmpty.isEmpty)")
