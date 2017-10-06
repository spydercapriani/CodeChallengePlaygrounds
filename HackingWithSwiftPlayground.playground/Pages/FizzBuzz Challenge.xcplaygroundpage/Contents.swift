/*:
 # Fizz Buzz Challenge
 Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz.
 */

import Foundation

for number in 1...100 {
    print(fizzBuzzChallenge(number: number))
}

func fizzBuzzChallenge(number: Int) -> String {
    if number % 3 == 0 {
        if number % 5 == 0 {
            return "FizzBuzz"
        }else {
            return "Fizz"
        }
    }else if number % 5 == 0 {
        return "Buzz"
    }else {
        return String(number)
    }
}

//: Test Cases
assert(fizzBuzzChallenge(number: 3) == "Fizz", "FizzBuzz Challenge Failed!")
assert(fizzBuzzChallenge(number: 5) == "Buzz", "FizzBuzz Challenge Failed!")
assert(fizzBuzzChallenge(number: 15) == "FizzBuzz", "FizzBuzz Challenge Failed!")
assert(fizzBuzzChallenge(number: 90) == "FizzBuzz", "FizzBuzz Challenge Failed!")
print("FizzBuzz Challenge completed!")

//: [Next](@next)
