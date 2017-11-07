//: [Previous](@previous)

import Foundation

//: FlatMap - Flattens a collection of collections, remove optionals from a collection
print("\nFLATMAP EXAMPLES:")
let collections = [[5,2,7],[4,8],[9,1,3]]
let flat = collections.flatMap { $0 }
print(flat)

let people: [String?] = ["Tom", nil, "Peter", nil, "Harry"]
let valid = people.flatMap{ $0 }
print(valid)

let onlyEven = collections.flatMap { $0.filter {$0 % 2 == 0}}
print(onlyEven)

let allSquared = collections.flatMap{ $0.map { $0 * $0 }}
print(allSquared)

//: [Next](@next)
