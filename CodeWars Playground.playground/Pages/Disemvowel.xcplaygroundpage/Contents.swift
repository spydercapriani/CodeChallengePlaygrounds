//: Playground - noun: a place where people can play

import UIKit
import XCTest

func disemvowel(_ s: String) -> String {
    let vowels: [Character] = [ "a", "e", "i", "o", "u", "A", "E", "I", "O", "U" ]
    
    let result = Array(s).filter{ !vowels.contains($0) }
    return String(result)
}

func basicTests() {
    XCTAssertEqual("Ths wbst s fr lsrs LL!", disemvowel("This website is for losers LOL!"))
    XCTAssertEqual("N ffns bt,\nYr wrtng s mng th wrst 'v vr rd", disemvowel("No offense but,\nYour writing is among the worst I've ever read"))
    XCTAssertEqual("Wht r y,  cmmnst?", disemvowel("What are you, a communist?"))
    print("All Tests Passed!")
}

basicTests()
