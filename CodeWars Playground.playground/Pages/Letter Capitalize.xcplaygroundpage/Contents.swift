//: [Previous](@previous)

import Foundation

func LetterCapitalize(_ str: String) -> String {
//    return str.capitalized
    var strArr = str.components(separatedBy: " ")
    var outArr = [String]()
    for str in strArr {
        let firstChar = Character(String(str.characters.first!).capitalized)
        let substring = str.substring(from: str.index(str.startIndex, offsetBy: 1))
        let outString = "\(firstChar)\(substring)"
        outArr.append(outString)
    }
    return outArr.joined(separator: " ")
}

LetterCapitalize("hello world")
//LetterCapitalize("i ran there")

//: [Next](@next)
