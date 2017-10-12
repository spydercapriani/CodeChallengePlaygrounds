//: [Previous](@previous)

import Foundation

//: Value Types

struct Person {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-Shirts", shoes: "Sneakers")
let other = Person(clothes: "Short skirts", shoes: "high heels")
taylor.describe()
other.describe()

//: [Next](@next)
