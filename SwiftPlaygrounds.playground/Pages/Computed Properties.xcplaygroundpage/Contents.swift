//: [Previous](@previous)

import Foundation

struct Person {
    var age: Int
    
    var ageInDogYears: Int {
        return age * 7
    }
}

var fan = Person(age: 25)
fan.ageInDogYears


//: [Next](@next)
