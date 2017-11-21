//: Arrays: Left Rotation

import Foundation

let sampleSize = 5
let rotations = 4
var sampleArray = ["1", "2", "3", "4", "5"]

for index in 1...sampleSize {
    let newLocation = (index + ((sampleSize - 1) - 1)) % sampleSize
    
    sampleArray[newLocation] = String(index)
}

print(sampleArray.joined(separator: " "))

func permute<C: Collection>(items: C) -> [[C.Iterator.Element]] {
    var scratch = Array(items) // This is a scratch space for Heap's algorithm
    var result: [[C.Iterator.Element]] = [] // This will accumulate our result
    
    // Heap's algorithm
    func heap(_ n: Int) {
        if n == 1 {
            result.append(scratch)
            return
        }
        
        for i in 0..<n-1 {
            heap(n-1)
            let j = (n%2 == 1) ? 0 : i
            scratch.swapAt(j, n-1)
        }
        heap(n-1)
    }
    
    // Let's get started
    heap(scratch.count)
    
    // And return the result we built up
    return result
}


let perms = permute(items: "abc".characters).map { String($0) }
print(perms)
