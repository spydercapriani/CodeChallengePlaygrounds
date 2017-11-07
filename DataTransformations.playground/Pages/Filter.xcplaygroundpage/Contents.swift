//: [Previous](@previous)

import Foundation

//: Filter - Loop over a collection and return an array containing only those elements that match an include condition
print("\nFILTERS EXAMPLES:")
let digits = [ 1, 4, 10, 15 ]
let even = digits.filter { $0 % 2 == 0}
print(even)

//: [Next](@next)
