//: [Previous](@previous)
/*:
 # Challenge 3: Do two strings contain the same characters?
 Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
 */
import Foundation

func challenge3(input1: String, input2: String) -> Bool {
    let array1 = Array(input1).sorted()
    let array2 = Array(input2).sorted()
    
    return array1 == array2
}

//: Test Cases
assert(challenge3(input1: "abca", input2: "abca") == true, "Challenge 3 failed!")
assert(challenge3(input1: "abc", input2: "cba") == true, "Challenge 3 failed!")
assert(challenge3(input1: "a1 b2", input2: "b1 a2") == true, "Challenge 3 failed!")
assert(challenge3(input1: "abc", input2: "abca") == false, "Challenge 3 failed!")
assert(challenge3(input1: "abc", input2: "Abc") == false, "Challenge 3 failed!")
assert(challenge3(input1: "abc", input2: "cbAa") == false, "Challenge 3 failed!")
print("Challenge 3 completed!")

//: [Next](@next)
