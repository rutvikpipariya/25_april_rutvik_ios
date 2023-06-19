import Foundation
var ar = [1, 2, 3, 4, 5]
let delete = 4
if delete < ar.count {
    ar.remove(at: delete)
    print("Updated array: \(ar)")
} else {
    print("Invalid index")
}
