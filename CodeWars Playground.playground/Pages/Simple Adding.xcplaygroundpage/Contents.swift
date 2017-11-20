//: [Previous](@previous)

import Foundation

func SimpleAdding(_ num: Int) -> Int {
    return (1...num).reduce(0, +)
}

assert(SimpleAdding(12) == 78, "Test 1 Failed")
assert(SimpleAdding(4) == 10, "Test 2 Failed")

//: [Next](@next)
