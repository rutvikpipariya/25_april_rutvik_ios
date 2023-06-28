//WAP to perform all arithmetic operation using function which might be menu driven.
import Foundation
print("Enter first number :")
var a = Float(readLine()!)!
print("Enter second number :")
var b = Float(readLine()!)!
func add(){
let addition = a + b
print("Addition of A and B : \(addition)")
}
func minus(){
let subtraction = a - b
print("Subtraction of A and B :\(subtraction)")
}
func into(){
let multiplication = a * b
print("Multiplication of A and B : \(multiplication)")
}
func divide(){
let division = a / b
print("Division of A and B : \(division)")
}
func perform() {
    print("--- Arithmetic Operations ---")
    print("1. Addition")
    print("2. Subtraction")
    print("3. Multiplication")
    print("4. Division")
    print("5. Exit")
    if let choice = Int(readLine()!) {
        switch choice {
        case 1:
            add()
        case 2:
            minus()
        case 3:
            into()
        case 4:
            divide()
        case 5:
            print("Exiting...")
            return
        default:
            print("Invalid choice. Please try again.")
        }
    } else {
        print("Invalid choice. Please try again.")
    }
    print("\n")
    perform()
}
perform()

