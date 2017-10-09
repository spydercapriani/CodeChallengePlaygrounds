//: [Previous](@previous)

import Foundation

func getLatestVersion(version1: String, version2: String) -> String {
    let version1details = version1.components(separatedBy: ".")
    let version2details = version2.components(separatedBy: ".")
    
    for (index, component) in version1details.enumerated() {
        if component > version2details[index] {
            return version1
        }else if component < version2details[index]{
            return version2
        }
    }
    
    return "same versions"
}

//: Test Cases
assert(getLatestVersion(version1: "12.14.10", version2: "12.10.12") == "12.14.10", "Version Challenge failed!")
assert(getLatestVersion(version1: "12.14.10a", version2: "12.14.10c") == "12.14.10c", "Version Challenge failed!")
assert(getLatestVersion(version1: "12.14.10", version2: "12.14.10") == "same versions", "Version Challenge failed!")
print("Tests completed successfully!")

//: Abstract Classes vs Interfaces

/*:
 # Interfaces
 * Only events, delegates, properties, and methods can exist
 * Classes can implement multiple interfaces
 
 # Abstract Classes
 * Ability to specify default implementations of methods
 * Have slightly more control in how 'blueprint' methods are called
 * Able to provide behaviors related/unrelated to the interface
 * Can only subclass one abstract class
 
 # Protocol Oriented Programming
 
 
 */



//: [Next](@next)
