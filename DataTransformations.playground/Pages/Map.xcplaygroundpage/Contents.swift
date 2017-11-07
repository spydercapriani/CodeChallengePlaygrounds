//: Playground - noun: a place where people can play

import UIKit

//: Map - Loops over a collection and applies the same operation to each element in the clollection.
print("MAP EXAMPLES:")
let values = [2.0, 4.0, 5.0, 7.0]
let squares = values.map { $0 * $0 }
print(squares)

let squares2 = values.map { (value: Double) -> Double in
    return value * value
}
print(squares2)

let squares3 = values.map { value in value * value }
print(squares3)

let milesToPoint = ["point1":120.0, "point2":50.0, "point3":70.0]
let kmToPoint = milesToPoint.map { name, miles in miles * 1.6093 }
print(kmToPoint)

let lengthInMeters: Set = [4.0, 6.2, 8.9]
let lengthInFeet = lengthInMeters.map { $0 * 3.2808 }
print(lengthInFeet)
