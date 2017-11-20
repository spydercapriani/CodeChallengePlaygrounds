//: [Previous](@previous)

/*: Simple Symbols Challenge
 Using the Swift language, have the function SimpleSymbols(str) take the str parameter
 being passed and determine if it is an acceptable sequence by either returning the
 string true or false. The str parameter will be composed of + and = symbols with several
 letters between them (ie. ++d+===+c++==a) and for the string to be true each letter must
 be surrounded by a + symbol. So the string to the left would be false. The string will
 not be empty and will have at least one letter.
 */

import Foundation

func SimpleSymbols(_ str: String) -> Bool {
    let str = "=" + str + "="
    
    let letters = CharacterSet.letters
    for (index, char) in str.unicodeScalars.enumerated() {
        if letters.contains(char) {
            let previousChar = str.index(str.startIndex, offsetBy: index-1)
            let nextChar = str.index(str.startIndex, offsetBy: index+1)
            if str[previousChar] != "+" || str[nextChar] != "+" {
                return false
            }
        }
    }
    
    return true
}

assert(SimpleSymbols("+d+=3=+s+") == true, "Test Case Failed!")
assert(SimpleSymbols("f++d+") == false, "Test Case Failed!")
assert(SimpleSymbols("+d===+a+") == false, "Test Case Failed!")
assert(SimpleSymbols("aaaa") == false, "Test Case Failed!")
assert(SimpleSymbols("+z+z+z+") == true, "Test Case Failed!")
print("All Tests Passed!")

//: [Next](@next)
