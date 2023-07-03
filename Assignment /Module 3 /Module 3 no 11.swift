import Foundation
protocol MyClassProtocol 
    {
       var variable1: String { get set }
       var variable2: Int { get }
    }
class MyClass: MyClassProtocol 
    {
       var variable1: String = "Default value"
       let variable2: Int = 10
    }
let myObject = MyClass()
myObject.variable1 = "Updated value"
print(myObject.variable1)
print(myObject.variable2)
