//: [Previous](@previous)
/*:
 # Challenge 9: Find pangrams
 Write a function that returns true if it is given a string that is an English pangram, ignoring letter case.
 
 Tip: A pangram is a string that contains every letter of the alphabet at least once.
 
 ## Hints:
 * Make sure you start by collapsing case using something like lowercased().
 * You can compare letters using >, >=, and so on.
 * If you remove duplicates and non-alphabetic characters, the remaining string should add up to 26 letters.
 */
import Foundation

func challenge9(input: String) -> Bool {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    
    let (alphabetSet, phraseSet) = (Set(alphabet.characters), Set(input.lowercased().characters))
    let resultSet = alphabetSet.subtracting(phraseSet)
    
    return resultSet.count == 0 ? true : false
}

//: Test Cases
assert(challenge9(input: "The quick brown fox jumps over the lazy dog") == true, "Challenge 9 failed!")
assert(challenge9(input: "The quick brown fox jumped over the lazy dog") == false, "Challenge 9 failed!")
print("Challenge 9 completed!")

//: [Next](@next)
