import Foundation
protocol MyProtocol {}
extension MyProtocol {
    func optMethod() {
        print("Optional method not implemented.")
    }
}
class MyClass: MyProtocol {
    func reqMethod() {
        print("Required method called.")
    }
}
let myObject = MyClass()
myObject.reqMethod()
myObject.optMethod()
