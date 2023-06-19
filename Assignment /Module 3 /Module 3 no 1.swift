var value = [1, 2, 9, 4, 5]
func kaiknavu(at jagya: Int, with navukaik: Int, in array: inout [Int]) 
{
    guard jagya >= 0 && jagya < array.count else 
    {
        print("Invalid position")
        return
    }
    array[jagya] = navukaik
}
print("Before modification: \(value)")
kaiknavu(at: 2, with: 3, in: &value)
print("After modification: \(value)")
