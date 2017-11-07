//: [Previous](@previous)

import Foundation

//: Reduce - Combines all items in a collection to create a single new value
print("\nREDUCE EXAMPLES:")
let items = [2.0, 4.0, 5.0, 7.0]
let total = items.reduce(0, +)
print(total)

let codes = ["abc", "def", "ghi"]
let text = codes.reduce("", +)
print(text)

let names = ["alan", "brian", "charlie"]
let csv = names.reduce("", {text, name in "\(text),\(name)"})
print(csv)

let cart = ["item1":24.00, "item2":16.00]
let cartTotal = cart.reduce(0.0) {
    (total, arg1) -> Double in
    
    let(_, nextValue) = arg1
    return total + nextValue
}
print(cartTotal)

//: [Next](@next)
