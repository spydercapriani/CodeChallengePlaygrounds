//: [Previous](@previous)

import Foundation

//: Chaining
let marks = [4, 5, 8, 2, 9, 7]
let totalPass = marks.filter{$0 >= 7}.reduce(0, +)
print(totalPass)

let countTotalPass = marks.filter{$0 >= 7}.count
print(countTotalPass)

//: [Next](@next)
