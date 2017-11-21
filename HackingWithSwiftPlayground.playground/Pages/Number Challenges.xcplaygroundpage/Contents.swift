//: [Previous](@previous)

import Foundation

/*: # Challenge 16: Fizz Buzz
 Write a function that counts from 1 through 100, and
 prints “Fizz” if the counter is evenly divisible by 3,
 “Buzz” if it’s evenly divisible by 5, “Fizz Buzz” if
 it’s even divisible by three and five, or the counter
 number for all other cases.
 */
func fizzBuzz() -> [String] {
    var result = [String]()
    (0...100).forEach {
        result.append($0 % 3 == 0 ? $0 % 5 == 0 ? "FizzBuzz" : "Fizz" : $0 % 5 == 0 ? "Buzz" : "\($0)")
    }
    return result
}

let fizzTest = fizzBuzz()
assert(fizzTest[1] == "1", "Challenge 16 Failed!")
assert(fizzTest[2] == "2", "Challenge 16 Failed!")
assert(fizzTest[3] == "Fizz", "Challenge 16 Failed!")
assert(fizzTest[4] == "4", "Challenge 16 Failed!")
assert(fizzTest[5] == "Buzz", "Challenge 16 Failed!")
assert(fizzTest[15] == "FizzBuzz", "Challenge 16 Failed!")
print("Challenge 16 completed!")

/*: # Challenge 17: Generate a Random Number in a range
 Write a function that accepts positive minimum and maximum integers,
 and returns a random number between those two bounds, inclusive.
 */
func randomNumberGenerator(min: Int, max: Int) -> Int {
    return min + Int(arc4random_uniform(UInt32(max - min)))
}

randomNumberGenerator(min: 1, max: 5)

assert((1...5).contains(randomNumberGenerator(min: 1, max: 5)), "Challenge 17 Failed!")
assert((8...10).contains(randomNumberGenerator(min: 8, max: 10)), "Challenge 17 Failed!")
assert(randomNumberGenerator(min: 12, max: 12) == 12, "Challenge 17 Failed!")
assert(randomNumberGenerator(min: 12, max: 18) != 7, "Challenge 17 Failed!")
print("Challenge 17 completed!")

//: [Next](@next)
