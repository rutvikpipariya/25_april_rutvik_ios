import Foundation
var AD = [
    ["name": "mihir", "age": 25],
    ["name": "smit", "age": 30],
    ["name": "dhruv", "age": 35]
]
if let dictionary = AD.first(where: { $0["name"] as? String == "smit" }),
   let age = dictionary["age"] as? Int {
    print("smit's age is \(age)")
} else {
    print("Information of smit not found")
}
