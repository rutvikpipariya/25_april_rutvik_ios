import Foundation
/*func swap<T>( a: inout T, b: inout T)
{
    let temp = a
    a = b
    b = temp
}
var x = 10
var y = 20
print("Before swapping: x = \(x), y = \(y)")
swap(&x, &y)
print("After swapping: x = \(x), y = \(y)")*/
func swapInt( a: inout Int,  b: inout Int) {
    let temp = a
    a = b
    b = temp
}
var x = 10
var y = 20
print("Before swapping: x = \(x), y = \(y)")
swapInt(a: &x, b: &y)
print("After swapping: x = \(x), y = \(y)")
