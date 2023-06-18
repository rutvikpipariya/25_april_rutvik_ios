import Foundation
func value(in tuples: [(Int, Int)]) -> [Int] {
    var disvalue = Set<Int>()
    for i in tuple {
        disvalue.insert(i.0)
        disvalue.insert(i.1)
    }
    return Array(disvalue)
}
let tuple = [(1, 2), (2, 3), (3, 4), (2, 4), (4, 5)]
let disvalue = value(in: tuple)
print(disvalue)
