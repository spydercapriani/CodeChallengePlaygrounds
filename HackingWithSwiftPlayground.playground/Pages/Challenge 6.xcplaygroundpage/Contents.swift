//: [Previous](@previous)
/*:
 # Challenge 6: Remove duplicate letters from a string.
 Write a function that accepts a string as its input, and returns the same string just with duplicate letters removed.
 
 Tip: If you can solve this challenge without a for-in loop, you can consider it “tricky” rather than “easy”.
 
 ## Hints:
 * Sets are great at removing duplicates, but bad at retaining order.
 * Foundation does have a way of forcing sets to retain their order, but you need to handle the typecasting.
 * You can create strings out of character arrays.
 * You can solve this functionally using filter().
 */
import Foundation

//: Solution 1
func challenge6a(_ input: String) -> String {
    let array = input.map { String($0) }
    let set = NSOrderedSet(array: array)
    let letters = Array(set) as! Array<String>
    return letters.joined()
}

//: Test Cases - Solution 1
assert(challenge6a("wombat") == "wombat", "Challenge 6 failed!")
assert(challenge6a("hello") == "helo", "Challenge 6 failed!")
assert(challenge6a("Mississippi") == "Misp", "Challenge 6 failed!")
print("Challenge 6 completed! - Solution 1")

//: Solution 2
func challenge6b(_ input: String) -> String {
    var used = [Character: Bool]()
    
    let result = input.filter {
        used.updateValue(true, forKey: $0) == nil
    }
    
    return String(result)
}

//: Test Cases - Solution 2
assert(challenge6b("wombat") == "wombat", "Challenge 6 failed!")
assert(challenge6b("hello") == "helo", "Challenge 6 failed!")
assert(challenge6b("Mississippi") == "Misp", "Challenge 6 failed!")
print("Challenge 6 completed! - Solution 2")

//: [Next](@next)
