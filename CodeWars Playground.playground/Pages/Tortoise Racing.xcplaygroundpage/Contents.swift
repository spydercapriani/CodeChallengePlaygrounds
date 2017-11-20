//: [Previous](@previous)

import Foundation
import XCTest

func race(v1: Int, v2: Int, g: Int) -> [Int]? {
    if v1 >= v2 {
        return nil
    }
    
    let aFtPerSec = v1 / (60 * 60)
    let bFtPerSec = v2 / (60 * 60)
    
    
    
    return []
}

func testing(_ v1: Int, _ v2: Int, _ g: Int, _ expected: [Int]?) {
    XCTAssert(race(v1: v1, v2: v2, g: g)! == expected!, "should return \(expected!)")
}
func testingNil(_ v1: Int, _ v2: Int, _ g: Int) {
    XCTAssertTrue(race(v1: v1,v2: v2,g: g) == nil, "Should return nil")
}

func testExample() {
    testing(720, 850, 70, [0, 32, 18])
    testing(80, 91, 37, [3, 21, 49])
    testing(80, 100, 40, [2, 0, 0])
    testing(720, 850, 37, [0, 17, 4])
    testingNil(820, 81, 550)
    print("All Tests Passed!")
}



//: [Next](@next)

// .2
// .23611

