//WAP to check whether a string contains specific characters or not
import Foundation
func char(string: String, characters: String) -> Bool
    {
    let charSet = CharacterSet(charactersIn: characters)
    return string.rangeOfCharacter(from: charSet) != nil
    }
let str1 = "Swift,,,,,,"
let charstr = "....."
if char(string: str1, characters: charstr)
    {
    print("The string contains the specified characters.")
    } else
    {
    print("The string does not contain the specified characters.")
    }
