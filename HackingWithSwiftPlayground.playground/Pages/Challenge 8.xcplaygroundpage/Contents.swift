//: [Previous](@previous)
/*:
 # Challenge 8: String is rotated
 Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
 
 Tip: A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.
 
 ## Hints:
 * This is easier than you think.
 * A string is only considered a rotation if is identical to the original once you factor in the letter movement. That is, “tswi” is not a rotation of “swift” because it is missing the F.
 * If you write a string twice, it must encapsulate all possible rotations, e.g. “catcat” contains “cat”, “tca”, and “atc”.
 */
import Foundation

func challenge8(input: String, rotated: String) -> Bool {
    guard input.count == rotated.count else {
        return false
    }
    let combined = input + input
    return combined.contains(rotated)
}

//: Test Cases
assert(challenge8(input: "abcde", rotated: "eabcd") == true, "Challenge 8 failed!")
assert(challenge8(input: "abcde", rotated: "cdeab") == true, "Challenge 8 failed!")
assert(challenge8(input: "abcde", rotated: "abced") == false, "Challenge 8 failed!")
assert(challenge8(input: "abc", rotated: "a") == false, "Challenge 8 failed!")
print("Challenge 8 completed!")

//: [Next](@next)
