//Write a program to take two key like - Colors, digits and value should be an array then get that specific value from array.
func getValue(colors: String, digits: String, array: [String: [String: String]]) -> String? {
    if let pack = array[colors], let showValue = pack[digits] {
        return showValue
    } else {
        return nil
    }
}
var strarray: [String: [String: String]] = [
    "red": [
        "1": "Cranberry",
        "2": "Lingonberry",
        "3": "Strawberry"
    ],
    "blue": [
        "1": "Blueberry",
        "2": "Jostaberry",
        "3": "Elderberry"
    ]
]
print("Choose the one color from red and blue :")
if let color = readLine() {
    print("Choose the one key from 1,2 and 3 :")
    if let digit = readLine() {
        if let result = getValue(colors: color, digits: digit, array: strarray) {
            print("The value of color \(color) and digit \(digit) is: \(result)")
        } else {
            print("No value found of color \(color) and digit \(digit)")
        }
    }
}
