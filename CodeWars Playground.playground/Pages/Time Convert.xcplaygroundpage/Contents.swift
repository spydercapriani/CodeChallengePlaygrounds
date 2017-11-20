//: [Previous](@previous)

import Foundation

func TimeConvert(_ num: Int) -> String {
    let hours: Int = num / 60
    let minutes: Int = num % 60
    return String("\(hours):\(minutes)")
}

assert(TimeConvert(126) == "2:6", "Test Case Failed!")
assert(TimeConvert(45) == "0:45", "Test Case Failed!")

//: [Next](@next)
