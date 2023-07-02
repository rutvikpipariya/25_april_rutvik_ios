import Foundation 
class Class1 {
    func sameFunction() {
        print("This is 1st class out of 3 class")
    }
}
class Class2: Class1 {
    override func sameFunction() {
        print("This is 2nd class out of 3 class")
    }
}
class Class3: Class1 {
    override func sameFunction() {
        print("This is 3rd class out of 3 class")
    }
}
let class1 = Class1()
let class2 = Class2()
let class3 = Class3()
class1.sameFunction()
class2.sameFunction()
class3.sameFunction()
