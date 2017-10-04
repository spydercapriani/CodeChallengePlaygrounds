//: [Previous](@previous)
/*:
 # Challenge 7: Condense whitespace
 Write a function that returns a string with any consecutive spaces replaced with a single space.
 
 ## Hints:
 * You might think it a good idea to use components(separatedBy:) then joined(), but that will struggle with leading and trailing spaces.
 * You could loop over each character, keeping track of a seenSpace boolean that gets set to true when the previous character was a space.
 * You could use regular expressions.
 * Try using replacingOccurrences(of:)
 */
import Foundation

extension String {
    func challenge7() -> String {
        return self.replacingOccurrences(of: " +", with: " ", options: .regularExpression)
    }
}

//: Test Cases
assert("a   b   c".challenge7() == "a b c", "Challenge 7 failed!")
assert("    a".challenge7() == " a", "Challenge 7 failed!")
assert("abc".challenge7() == "abc", "Challenge 7 failed!")
print("Challenge 7 completed!")

//: [Next](@next)
