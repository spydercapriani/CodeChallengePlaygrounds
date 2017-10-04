//: [Previous](@previous)
/*:
 # Challenge 10: Vowels and Consonants
 Given a string in English, return a tuple containing the number of vowels and consonants.
 
 ## Hints:
 * Just because a letter is not a vowel, it doesn’t mean it’s a consonant – think punctuation, for example.
 * You’ll need to differentiate carefully between the String and Character types.
 * You could use CharacterSet here, but is it really needed?
 * Your return type should be (vowels: Int, consonants: Int).
 * Watch out for uppercase and lowercase letters – an “A” is a vowel regardless of its case.
 */
import Foundation

func challenge10(input: String) -> (vowels: Int, consonants: Int) {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    
    var vowelCount = 0
    var consonantCount = 0
    
    for letter in input.lowercased() {
        if vowels.contains(letter) {
            vowelCount += 1
        }else if consonants.contains(letter) {
            consonantCount += 1
        }
    }
    
    return (vowels: vowelCount, consonants: consonantCount)
}

//: Test Cases
assert(challenge10(input: "Swift Coding Challenges") == (6, 15), "Challenge 10 failed!")
assert(challenge10(input: "Mississippi") == (4, 7), "Challenge 10 failed!")
print("Challenge 10 completed!")

//: [Next](@next)
