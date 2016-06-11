//: Playground - noun: a place where people can play

import UIKit

func printReverse(input: String) -> String? {
    var temp = ""
    for char in input.characters {
        temp.insert(char, atIndex: temp.startIndex)
    }
    if (input == temp) {
        return temp
    } else {
        return nil
    }
}
func filterPalindrome(arr: [String]) -> [String] {
    return arr.filter { (element) in printReverse(element) != nil }
}

let possiblePalindromes = ["racecar", "not", "wow"]
filterPalindrome(possiblePalindromes)

func convertToBaseSixteen (input: Int) -> String {
    let dictionary: [Int: String] = [10: "A", 11: "B", 12: "C", 13: "D", 14: "E", 15: "F"]
    var whole = abs(input)
    var remainder = 0
    var hex = ""
    repeat {
        remainder = whole % 16
        if remainder > 9 {
            hex.insertContentsOf(dictionary[remainder]!.characters, at: hex.startIndex)
        } else {
            hex.insertContentsOf(String(remainder).characters, at: hex.startIndex)
        }
        whole = whole / 16
    } while (whole > 0)
    if input > 0 {
        return "0x" + hex
    } else {
        return "-0x" + hex
    }
}

convertToBaseSixteen(31)
convertToBaseSixteen(314)
convertToBaseSixteen(43928235)
convertToBaseSixteen(2)
convertToBaseSixteen(-450)


//func findPalindrome(arr: [String]) -> [String] {
//    var palindromeArr = [String]()
//    for element in arr {
//        if (printReverse(element) != nil) {
//            palindromeArr.append(printReverse(element)!)
//        }
//    }
//    return palindromeArr
//}


//findPalindrome(possiblePalindromes)

//func baseSixteen (input: Int) -> String {
//    let dictionary: [Int: String] = [10: "A", 11: "B", 12: "C", 13: "D", 14: "E", 15: "F"]
//    var whole = input
//    var remainder: Double = 0.0
//    var hex = ""
//    repeat {
//        let division = Double(whole) / 16
//        remainder = (division - Double(whole / 16)) * 16
//        if remainder > 9 {
//            hex.insertContentsOf(dictionary[Int(remainder)]!.characters, at: hex.startIndex)
//        } else {
//            hex.insertContentsOf(String(Int(remainder)).characters, at: hex.startIndex)
//        }
//        whole = (whole / 16)
//    } while (whole > 0)
//    return "0x" + hex
//}


//baseSixteen(31)
//baseSixteen(314)
//baseSixteen(43928235)
//baseSixteen(2)



