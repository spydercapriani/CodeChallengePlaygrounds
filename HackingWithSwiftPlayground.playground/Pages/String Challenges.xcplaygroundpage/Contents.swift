//: [Previous](@previous)

import Foundation

extension String {
    /*: # Challenge 1: Are the letters unique?
     Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.
     */
    func containsUniqueLetters() -> Bool {
        return Set(self).count == self.count
    }
    
    /*: # Challenge 2: Is a string a palindrome?
     Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case.
     */
    func isPalindrome() -> Bool {
        let lowercased = self.lowercased()
        return Array(lowercased.reversed()) == Array(lowercased)
    }
    
    /*: # Challenge 3: Do two strings contain the same characters?
     Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
     */
    func containsSameCharacters(comparison: String) -> Bool {
        let array1 = Array(self).sorted()
        let array2 = Array(comparison).sorted()
        return array1 == array2
    }
    
    /*: # Challenge 4: Does one string contain another?
     Write your own version of the contains() method on String that ignores letter case, and without using the existing contains() method.
     */
    func doesContain(_ word: String) -> Bool {
        return self.range(of: word, options: .caseInsensitive) != nil
    }
    
    /*: # Challenge 5: Count the characters
     Write a function that accepts a string, and returns how many times a specific character appears, taking case into account.
     */
    func getNumberOfSpecificCharacters(char: Character) -> Int {
        let modified = self.replacingOccurrences(of: String(char), with: "")
        return self.count - modified.count
    }
    
    /*: # Challenge 6: Remove duplicate letters from a string
     Write a function that accepts a string as its input, and returns the same string just with duplicate letters removed.
     */
    func removeDuplicateLetters() -> String {
        var usedChars: Array<Character> = []
        for letter in self {
            if !usedChars.contains(letter) {
                usedChars.append(letter)
            }
        }
        return String(usedChars)
    }
    
    /*: # Challenge 7: Condense whitespace
     Write a function that returns a string with any consecutive spaces replaced with a single space.
     */
    func condenseWhitespace() -> String {
        return self.replacingOccurrences(of: " +", with: " ", options: .regularExpression)
    }
    
    /*: # Challenge 8: String is rotated
     Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
     
     Tip: A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.
     */
    func isRotation(of rotated: String) -> Bool {
        guard self.count == rotated.count else {
            return false
        }
        // If you write a string twice, it must encapsulate all possible rotations
        let combined = self + self
        return combined.contains(rotated)
    }
    
    /*: # Challenge 9: Find pangrams
     Write a function that returns true if it is given a string that is an English pangram, ignoring letter case.
     
     Tip: A pangram is a string that contains every letter of the alphabet at least once.
     */
    func isPangram() -> Bool {
        let lowercase = Set(self.lowercased())
        let letters = lowercase.filter {
            $0 >= "a" && $0 <= "z"
        }
        return letters.count == 26
    }
    
    /*: # Challenge 10: Vowels and consonants
     Given a string in English, return a tuple containing the number of vowels and consonants.
     
     Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z.
     */
    func countVowelsAndConsonants() -> (vowels: Int, consonants: Int) {
        let vowels = "aeiou"
        let consonants = "bcdfghjklmnpqrstvwxyz"
        
        var vowelCount = 0
        var consonantCount = 0
        
        let lowercase = self.lowercased()
        for letter in lowercase {
            if vowels.contains(letter) {
                vowelCount += 1
            }else if consonants.contains(letter) {
                consonantCount += 1
            }
        }
        
        return (vowelCount, consonantCount)
    }
    
    /*: # Challenge 11: Three different letters
     Write a function that accepts two strings, and returns true if they are identical in length but have no more than three different letters, taking case and string order into account.
     */
    func onlyDifferentByThreeOrLess(comparison: String) -> Bool {
        guard self.count == comparison.count else {
            // Not identical in length
            return false
        }
        
        let string1 = Array(self)
        let string2 = Array(comparison)
        
        var differences = 0
        
        for (index, letter) in string1.enumerated() {
            if letter != string2[index] {
                if differences < 4 {
                    differences += 1
                }else {
                    return differences <= 3
                }
            }
        }
        
        return differences <= 3
    }
    
    /*: # Challenge 12: Find longest prefix
     Write a function that accepts a string of words with a similar prefix, separated by spaces, and returns the longest substring that prefixes all words.
     */
    func getLongestPrefix() -> String {
        // Get list of words
        let words = self.components(separatedBy: " ")
        // Ensure word list has at least one item
        guard let first = words.first else {
            return ""
        }
        
        var currentPrefix = ""
        var bestPrefix = ""
        
        // Iterate through letters of first word
        for letter in first {
            // Slowly generate a prefix
            currentPrefix.append(letter)
            // Iterate through word list
            for word in words {
                // Check if other words contain currently generated prefix
                if !word.hasPrefix(currentPrefix) {
                    // Return best prefix found as soon as currently generated prefix is no longer able to be found (breaking out of for loop)
                    return bestPrefix
                }
            }
            // Update the best prefix (this will only get updated as long as for loop hasn't already been broken out of)
            bestPrefix = currentPrefix
        }
        // Returns entire word in the event all words are alike
        return bestPrefix
    }
    
    /*: # Challenge 13: Run-length encoding
     Write a function that accepts a string as input, then returns how often each letter is repeated in a single run, taking case into account.
     
     Tip: This approach is used in a simple lossless compression technique called run-length encoding.
     */
    func runLengthEncoding() -> String {
        var currentLetter: Character?
        var runLengthString = ""
        var letterCounter = 0
        
        
        for letter in self {
            if letter == currentLetter {
                letterCounter += 1
            }else {
                if let current = currentLetter {
                    runLengthString.append("\(current)\(letterCounter)")
                }
                
                currentLetter = letter
                letterCounter = 1
            }
        }
        if let current = currentLetter {
            runLengthString.append("\(current)\(letterCounter)")
        }
        
        return runLengthString
    }
}

//: Challenge 1 Test Cases
assert("No duplicates".containsUniqueLetters() == true, "Challenge 1 failed")
assert("abcdefghijklmnopqrstuvwxyz".containsUniqueLetters() == true, "Challenge 1 failed")
assert("AaBbCc".containsUniqueLetters() == true, "Challenge 1 failed")
assert("Hello, world".containsUniqueLetters() == false, "Challenge 1 failed")
print("Challenge 1 completed")

//: Challenge 2 Test Cases
assert("rotator".isPalindrome() == true, "Challenge 2 failed!")
assert("Rats live on no evil star".isPalindrome() == true, "Challenge 2 failed!")
assert("Never odd or even".isPalindrome() == false, "Challenge 2 failed!")
assert("Hello, world".isPalindrome() == false, "Challenge 2 failed!")
print("Challenge 2 completed!")

//: Challenge 3 Test Cases
assert("abca".containsSameCharacters(comparison: "abca") == true, "Challenge 3 failed!")
assert("abc".containsSameCharacters(comparison: "cba") == true, "Challenge 3 failed!")
assert("a1 b2".containsSameCharacters(comparison: "b1 a2") == true, "Challenge 3 failed!")
assert("abc".containsSameCharacters(comparison: "abca") == false, "Challenge 3 failed!")
assert("abc".containsSameCharacters(comparison: "Abc") == false, "Challenge 3 failed!")
assert("abc".containsSameCharacters(comparison: "cbAa") == false, "Challenge 3 failed!")
print("Challenge 3 completed!")

//: Challenge 4 Test Cases
assert("Hello, world".doesContain("Hello") == true, "Challenge 4 failed!")
assert("Hello, world".doesContain("WORLD") == true, "Challenge 4 failed!")
assert("Hello, world".doesContain("Goodbye") == false, "Challenge 4 failed!")
print("Challenge 4 completed!")

//: Challenge 5 Test Cases
assert("The rain in Spain".getNumberOfSpecificCharacters(char: "a") == 2, "Challenge 5 failed!")
assert("Mississippi".getNumberOfSpecificCharacters(char: "i") == 4, "Challenge 5 failed!")
assert("Hacking with Swift".getNumberOfSpecificCharacters(char: "i") == 3, "Challenge 5 failed!")
print("Challenge 5 completed!")

//: Challenge 6 Test Cases
assert("wombat".removeDuplicateLetters() == "wombat", "Challenge 6 failed!")
assert("hello".removeDuplicateLetters() == "helo", "Challenge 6 failed!")
assert("Mississippi".removeDuplicateLetters() == "Misp", "Challenge 6 failed!")
print("Challenge 6 completed!")

//: Challenge 7 Test Cases
assert("a   b   c".condenseWhitespace() == "a b c", "Challenge 7 failed!")
assert("    a".condenseWhitespace() == " a", "Challenge 7 failed!")
assert("abc".condenseWhitespace() == "abc", "Challenge 7 failed!")
print("Challenge 7 completed!")

//: Challenge 8 Test Cases
assert("abcde".isRotation(of: "eabcd") == true, "Challenge 8 failed!")
assert("abcde".isRotation(of: "cdeab") == true, "Challenge 8 failed!")
assert("abcde".isRotation(of: "abced") == false, "Challenge 8 failed!")
assert("abc".isRotation(of: "a") == false, "Challenge 8 failed!")
print("Challenge 8 completed!")

//: Challenge 9 Test Cases
assert("The quick brown fox jumps over the lazy dog".isPangram() == true, "Challenge 9 failed!")
assert("The quick brown fox jumped over the lazy dog".isPangram() == false, "Challenge 9 failed!")
print("Challenge 9 completed!")

//: Challenge 10 Test Cases
assert("Swift Coding Challenges".countVowelsAndConsonants() == (6, 15), "Challenge 10 failed!")
assert("Mississippi".countVowelsAndConsonants() == (4, 7), "Challenge 10 failed!")
print("Challenge 10 completed!")

//: Challenge 11 Test Cases
assert("Clamp".onlyDifferentByThreeOrLess(comparison: "Cramp") == true, "Challenge 11 failed!")
assert("Clamp".onlyDifferentByThreeOrLess(comparison: "Crams") == true, "Challenge 11 failed!")
assert("Clamp".onlyDifferentByThreeOrLess(comparison: "Grams") == true, "Challenge 11 failed!")
assert("Clamp".onlyDifferentByThreeOrLess(comparison: "Grans") == false, "Challenge 11 failed!")
assert("Clamp".onlyDifferentByThreeOrLess(comparison: "Clam") == false, "Challenge 11 failed!")
assert("clamp".onlyDifferentByThreeOrLess(comparison: "maple") == false, "Challenge 11 failed!")
print("Challenge 11 completed!")

//: Challenge 12 Test Cases
assert("swift switch swill swim".getLongestPrefix() == "swi", "Challenge 12 failed!")
assert("flip flap flop".getLongestPrefix() == "fl", "Challenge 12 failed!")
assert("flip flip flip".getLongestPrefix() == "flip", "Challenge 12 failed!")
print("Challenge 12 completed!")

//: Challenge 13 Test Cases
assert("aabbcc".runLengthEncoding() == "a2b2c2", "Challenge 13 failed!")
assert("aaabaaabaaa".runLengthEncoding() == "a3b1a3b1a3", "Challenge 13 failed!")
assert("aaAAaa".runLengthEncoding() == "a2A2a2", "Challenge 13 failed!")
print("Challenge 13 completed!")

//: [Next](@next)
