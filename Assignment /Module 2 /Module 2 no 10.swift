import Foundation
let a = 10
let b = 20
let c = 15
let d = 12
let max = (a > b) ? (a > c) ? (a > d) ? a : d : (c > d) ? c : d : (b > c) ? (b > d) ? b : d : (c > d) ? c : d
print("The maximum number is \(max).")
