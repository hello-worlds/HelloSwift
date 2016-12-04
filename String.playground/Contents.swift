//: Playground - noun: a place where people can play


// String creation using String literal
var stringA = "Hello, Swift!"
print( stringA )

// String creation using String instance
var stringB = String("Hello, Swift!")
print( stringB )



// Empty string
// Empty string creation using String literal
var stringAEmpty = ""

if stringAEmpty.isEmpty {
    print( "stringA is empty" )
}else {
    print( "stringA is not empty" )
}

// Empty string creation using String instance
let stringBEmpty = String()

if stringBEmpty.isEmpty {
    print( "stringB is empty" )
}else {
    print( "stringB is not empty" )
}


// string interpolation
var varA   = 20
let constA = 100
var varC:Float = 20.0

var stringAInterpolation = "\(varA) times \(constA) is equal to \(varC * 100)"
print( stringAInterpolation )


// String Concatenation
let constAConcatenation = "Hello,"
let constBConcatenation = "World!"

var stringAConcatenation = constAConcatenation + constBConcatenation

print( stringAConcatenation )



// String Length
var varALength   = "Hello, Swift!"
//print( "\(varALength), length is \(count(varALength))" )


// srting comparison
var varAcomparison   = "Hello, Swift!"
var varBcomparison   = "Hello, World!"

if varAcomparison == varBcomparison {
    print( "\(varAcomparison) and \(varBcomparison) are equal" )
}else {
    print( "\(varAcomparison) and \(varBcomparison) are not equal" )
}



// Unicode Strings
var unicodeString   = "Dog‼🐶"

print("UTF-8 Codes: ")
for code in unicodeString.utf8 {
    print("\(code) ")
}

print("\n")

print("UTF-16 Codes: ")
for code in unicodeString.utf16 {
    print("\(code) ")
}
