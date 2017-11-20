//: Arrays: Left Rotation

import Foundation

let sampleSize = 5
let rotations = 4
var sampleArray = ["1", "2", "3", "4", "5"]

for index in 1...sampleSize {
    let newLocation = (index + ((sampleSize - 1) - rotations)) % sampleSize
    
    sampleArray[newLocation] = String(index)
}

print(sampleArray.joined(separator: " "))
