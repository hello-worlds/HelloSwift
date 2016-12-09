//: Playground - noun: a place where people can play

func exchange<T>(inout a: T, inout b: T) {
    let temp = a
    a = b
    b = temp
}

var numb1 = 100
var numb2 = 200

print("Before Swapping Int values are: \(numb1) and \(numb2)")
exchange(&numb1, b: &numb2)
print("After Swapping Int values are: \(numb1) and \(numb2)")


var str1 = "Generics"
var str2 = "Functions"

print("Before Swapping String values are: \(str1) and \(str2)")
exchange(&str1, b: &str2)
print("After Swapping String values are: \(str1) and \(str2)")