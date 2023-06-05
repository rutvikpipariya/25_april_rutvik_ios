import Foundation
let setA: Set<Int> = [100,101,102,103]
let setB: Set<Int> = [102,103,104,105]
let AB = setA.union(setB)
print("Union: \(AB)")
let BA = setA.intersection(setB)
print("Intersection: \(BA)")
