//: Playground - noun: a place where people can play

var myString:String? = nil

if myString != nil {
    print(myString)
}else {
    print("myString has nil value")
}




//Forced Unwrapping
var forcedString:String?

forcedString = "Hello, Swift!"

if forcedString != nil {
    print(forcedString)
}else {
    print("otherString has nil value")
}

var anotherString:String?

anotherString = "Hello, Swift!"

if anotherString != nil {
    print( anotherString! )
}else {
    print("myString has nil value")
}


//Automatic Unwrapping
var automaticString:String!

automaticString = "Hello, Swift!"

if automaticString != nil {
    print(automaticString)
}else {
    print("myString has nil value")
}



//Optional Binding
var optionalString:String?

optionalString = "Hello, Swift!"

if let yourString = optionalString {
    print("Your string has - \(optionalString)")
}else {
    print("Your string does not have a value")
}