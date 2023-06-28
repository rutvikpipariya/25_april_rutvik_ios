//WAP to swap of two number using in-out parameters within function.
func swapNo(a: inout Int, b: inout Int) {
    let temp = a
    a = b
    b = temp
}
var num1 = 5
var num2 = 10
print("Before swapping: num1 = \(num1), num2 = \(num2)")
swapNo(a:&num1,b:&num2)
print("After swapping: num1 = \(num1), num2 = \(num2)")
