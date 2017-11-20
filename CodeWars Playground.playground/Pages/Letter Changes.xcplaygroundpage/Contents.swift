//: [Previous](@previous)
// Have the function LetterChanges(str) take the str parameter being passed and modify
// it using the following algorithm. Replace every letter in the string with the letter
// following it in the alphabet (ie. c becomes d, z becomes a). Then capitalize every
// vowel in this new string (a, e, i, o, u) and finally return this modified string.

import Foundation

func LetterChanges(_ str: String) -> String {
    let vowels: [Character] = ["a", "e", "i", "o", "u"]
    
    return String(str.map {
        var char: Character
        switch $0 {
        case "a" ... "y",
             "A" ... "Y":
            let scalars = String($0).unicodeScalars
            let val = scalars[scalars.startIndex].value
            char = Character(UnicodeScalar(val + 1)!)
            
        case "z",
             "Z":
            char = "a"
            
        default:
            char = $0
        }
        
        if vowels.contains(char) {
            return Character(String(char).uppercased())
        }else {
            return char
        }
    })
}

assert(LetterChanges("hello*3") == "Ifmmp*3", "\(LetterChanges("hello*3")) does not equal Ifmmp*3")
assert(LetterChanges("fun times!") == "gvO Ujnft!", "\(LetterChanges("fun times!")) does not equal gvO Ujnft!")
assert(LetterChanges("z") == "A", "Cyclical Alphabet error")
assert(LetterChanges("Z") == "A", "Cyclical Alphabet error")
print("All Tests Passed!")

LetterChanges("B")

//: [Next](@next)
