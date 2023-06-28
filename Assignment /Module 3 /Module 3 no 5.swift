//WAP to sort an array element using closure
import Foundation
let nos = [45,18,16,94,16,19,12,-50,-8.44,-5.01]
let sortNo = nos.sorted
    { (a, b) -> Bool in
    return b > a
    }
print("Sorted Numbers: \(sortNo)")
