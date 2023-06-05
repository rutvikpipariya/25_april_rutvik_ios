import Foundation
func data()
{
    print("Enter Your Data(string):")
    var x = readLine()!
    value.append(x)
}
var value = Array<Any>()
print("Enter Number of data:")
var n = Int(readLine()!)!
for i in 0..<n
{
    data()
}
print(value)
