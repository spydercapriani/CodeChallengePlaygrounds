//: [Previous](@previous)

import Foundation

func FirstFactorial(_ num: Int) -> Int {
    return (1...num).reduce(1, *)
}

assert(FirstFactorial(4) == 24, "Test 1 Failed")
assert(FirstFactorial(8) == 40320, "Test 2 Failed")
print("All Tests Passed")

//: [Next](@next)
