import Foundation
var n = [10, 20, 30, 40, 50]
let NValue = 100
let place = 3
if place >= 0 && place <= n.count {
    n.insert(NValue, at: place)
    print("Array after adding \(NValue) at position \(place): \(n)")
} else {
    print("Invalid position")
}
