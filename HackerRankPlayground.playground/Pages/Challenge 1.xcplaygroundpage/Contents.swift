/*:
 # Challenge 1: Are the letters unique?
 Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.
 */
import Foundation

//: Solution 1
func challenge1a(input: String) -> Bool {
    var usedLetters = [Character]()
    for letter in input {
        if usedLetters.contains(letter) {
            return false
        }
        usedLetters.append(letter)
    }
    return true
}

//: Test Cases - Solution 1
assert(challenge1a(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1a(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1a(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1a(input: "Hello, world") == false, "Challenge 1 failed")
print("Challenge 1 completed! - solution 2")

//: Solution 2
func challenge1b(input: String) -> Bool {
    return Set(input).count == input.count
}

//: Test Cases - Solution 2
assert(challenge1b(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1b(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1b(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1b(input: "Hello, world") == false, "Challenge 1 failed")
print("Challenge 1 completed! - solution 2")

//: [Next](@next)
