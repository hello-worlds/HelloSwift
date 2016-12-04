//: Playground - noun: a place where people can play

var varA:Int = 10;	

varA < 20 ? print("varA is less than 20") : print("varA is more than 20");

/* Check the boolean condition using if statement */
if varA < 20 {
    /* If condition is true then print the following */
    print("varA is less than 20");
} else if varA == 50 {
    /* If condition is true then print the following */
    print("varA is equal to than 50");
} else {
    /* If condition is false then print the following */
    print("None of the values is matching");
}
print("Value of variable varA is \(varA)");


var index = 10

switch index {
case 100  :
    print( "Value of index is 100")
case 10,15  :
    print( "Value of index is either 10 or 15")
case 5  :
    print( "Value of index is 5")
default :
    print( "default case")
}

var otherIndex = 10

switch otherIndex {
case 100  :
    print( "Value of index is 100")
    fallthrough
case 10,15  :
    print( "Value of index is either 10 or 15")
    fallthrough
case 5  :
    print( "Value of index is 5")
default :
    print( "default case")
}