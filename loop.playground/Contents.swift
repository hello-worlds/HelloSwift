//: Playground - noun: a place where people can play

var someInts:[Int] = [10, 20, 30]

for index in someInts {
    print( "Value of  index is \(index)")
}


var someOtherInts:[Int] = [10, 20, 30]

for var index = 0; index < 3; ++index {
    print( "Value of someInts[\(index)] is \(someOtherInts[index])")
}


var index = 10

while index < 20 {
    print( "Value of index is \(index)")
    index = index + 1
}


var indexDo = 10

// do-while is not allowed
repeat {
    print( "Value of index is \(indexDo)")
    indexDo = indexDo + 1
}while indexDo < 20


// continue
var indexContinue = 10

repeat{
    indexContinue = indexContinue + 1
    
    if( indexContinue == 15 ){
        continue
    }
    print( "Value of index is \(indexContinue)")
}while indexContinue < 20


// break
var indexBreak = 10

repeat{
    indexBreak = indexBreak + 1
    
    if( indexBreak == 15 ){
        break
    }
    print( "Value of index is \(indexBreak)")
}while indexBreak < 20
