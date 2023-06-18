import Foundation
func PN(fName: String?, lName: String?) {
    if let fName = fName, let lName = lName {
        print("Full Name: \(fName) \(lName)")
    } else {
        print("Please provide both first name and last name.")
    }
}
PN(fName: "RUTVIK", lName: "PIPALIYA")
