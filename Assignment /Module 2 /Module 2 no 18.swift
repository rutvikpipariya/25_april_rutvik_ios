import Foundation
var ingredient: Set<String> = ["flour", "sugar", "eggs", "milk", "butter"]
let seva = "sugar"
if ingredient.contains(seva) {
    print("\(seva) is an ingredient.")
} else {
    print("\(seva) is not an ingredient.")
}
