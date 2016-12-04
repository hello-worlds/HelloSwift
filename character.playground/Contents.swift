//: Playground - noun: a place where people can play

let char1: Character = "A"
let char2: Character = "B"

print("Value of char1 \(char1)")
print("Value of char2 \(char2)")


// Empty Character Variables

// Following is wrong in Swift
let char1Empty: Character = " "
var char2Empty: Character = " "

print("Value of char1 \(char1Empty)")
print("Value of char2 \(char2Empty)")


// Accessing Characters from Strings
//for ch in "Hello" {
//    print(ch)
//}


// Concatenating Strings with Characters
var varA:String = "Hello "
let varB:Character = "G"

varA.append( varB )

print("Value of varC  =  \(varA)")