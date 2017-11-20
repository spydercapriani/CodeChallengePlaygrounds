//: [Previous](@previous)
// Using the Swift language, have the function LongestWord(sen) take the sen
// parameter being passed and return the largest word in the string. If there
// are two or more words that are the same length, return the first word from
// the string with that length. Ignore punctuation and assume sen will not be empty.

import Foundation

func LongestWord(_ sen: String) -> String {
    return sen.components(separatedBy: .punctuationCharacters)
        .joined()
        .components(separatedBy: .whitespaces)
        .max()!
}

assert(LongestWord("fun&!! time") == "time", "Test 1 Failed!")
assert(LongestWord("I love dogs") == "love", "Test 2 Failed!")
print("All Tests Passed!")
//: [Next](@next)
