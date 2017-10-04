//: [Previous](@previous)
/*:
 # Challenge 5: Count the characters
 Write a function that accepts a string, and returns how many times a specific character appears, taking case into account.
 
 ## Tip: If you can solve this without using a for-in loop, you can consider it a Tricky challenge.
 
 ## Hints:
 * Remember that String and Character are different data types.
 * Don’t be afraid to go down the brute force route: looping over characters using a for-in loop.
 * You could solve this functionally using reduce(), but tread carefully.
 * You could solve this using NSCountedSet, but I’d be suspicious unless you could justify the extra overhead.
 */
import Foundation

//: Solution 1
func challenge5a(input: String, countInstancesOf: Character) -> Int {
    var numberOfOccurences = 0
    
    for letter in input {
        if letter == countInstancesOf {
            numberOfOccurences += 1
        }
    }
    
    return numberOfOccurences
}


//: Test Cases - Solution 1
assert(challenge5a(input: "The rain in Spain", countInstancesOf: "a") == 2, "Challenge 5 failed!")
assert(challenge5a(input: "Mississippi", countInstancesOf: "i") == 4, "Challenge 5 failed!")
assert(challenge5a(input: "Hacking with Swift", countInstancesOf: "i") == 3, "Challenge 5 failed!")
print("Challenge 5 complete! - Solution 1")

//: Solution 2
func challenge5b(input: String, countInstancesOf: String) -> Int {
    let modified = input.replacingOccurrences(of: countInstancesOf, with: "")
    return input.count - modified.count
}

//: Test Cases - Solution 2
assert(challenge5b(input: "The rain in Spain", countInstancesOf: "a") == 2, "Challenge 5 failed!")
assert(challenge5b(input: "Mississippi", countInstancesOf: "i") == 4, "Challenge 5 failed!")
assert(challenge5b(input: "Hacking with Swift", countInstancesOf: "i") == 3, "Challenge 5 failed!")
print("Challenge 5 complete! - Solution 2")

//: [Next](@next)
