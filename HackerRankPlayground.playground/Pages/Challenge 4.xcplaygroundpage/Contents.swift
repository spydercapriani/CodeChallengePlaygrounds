//: [Previous](@previous)
/*:
 # Challenge 4: Does one string contain another?
 Write your own version of the contains() method on String that ignores letter case, and without using the existing contains() method.
 
 ## Hints:
 * You should write this as an extension to String.
 * You can’t use contains(), but there are other methods that do similar things.
 * Try the range(of:) method.
 * To ignore case, you can either uppercase both strings, or try the second parameter to range(of:).
 */
import Foundation

extension String {
    func fuzzyContains(_ input: String) -> Bool {
        return range(of: input, options: .caseInsensitive) != nil
    }
}

//: Test Cases
assert("Hello, world".fuzzyContains("Hello") == true, "Challenge 4 failed!")
assert("Hello, world".fuzzyContains("WORLD") == true, "Challenge 4 failed!")
assert("Hello, world".fuzzyContains("Goodbye") == false, "Challenge 4 failed!")
print("Challenge 4 completed!")

//: [Next](@next)
