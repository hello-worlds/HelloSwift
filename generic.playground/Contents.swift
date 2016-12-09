//: Playground - noun: a place where people can play

func exchange(inout a: Int, inout b: Int) {
    let temp = a
    a = b
    b = temp
}

var numb1 = 100
var numb2 = 200

print("Before Swapping values are: \(numb1) and \(numb2)")
exchange(&numb1, b: &numb2)
print("After Swapping values are: \(numb1) and \(numb2)")