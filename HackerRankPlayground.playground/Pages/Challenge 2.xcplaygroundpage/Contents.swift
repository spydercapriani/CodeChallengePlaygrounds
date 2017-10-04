//: [Previous](@previous)
/*:
 # Challenge 2: Is a string a palindrom?
 Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case.
 */
import Foundation

func challenge2(input: String) -> Bool {
    let lowercase = input.lowercased()
    return lowercase.reversed() == Array(lowercase)
}

//: Test Cases
assert(challenge2(input: "rotator") == true, "Challenge 2 failed!")
assert(challenge2(input: "Rats live on no evil star") == true, "Challenge 2 failed!")
assert(challenge2(input: "Never odd or even") == false, "Challenge 2 failed!")
assert(challenge2(input: "Hello, world") == false, "Challenge 2 failed!")
print("Challenge 2 completed!")

//: [Next](@next)
