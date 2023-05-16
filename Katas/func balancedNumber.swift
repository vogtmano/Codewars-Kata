//
//  func balancedNumber.swift
//  Katas
//
//  Created by Maks Vogtman on 12/09/2022.
//

import Foundation

// Definition

// Balanced number is the number that * The sum of all digits to the left of the middle digit(s) and the sum of all digits to the right of the middle digit(s) are equal*.

// Task

// Given a number, find if it is Balanced or not.

// Notes

// If the number has an odd number of digits then there is only one middle digit, e.g. 92645 has middle digit 6; otherwise, there are two middle digits, e.g.  1301 has middle digits  3 and  0

// The middle digit(s) should not be considered when determining whether a number is balanced or not, e.g  413023 is a balanced number because the left sum and right sum are both 5.

// Number passed is always Positive.

// Return the result as String.

// Input >> Output Examples

// (balanced-num 7) ==> return "Balanced"
// Explanation:
// Since, The sum of all digits to the left of the middle digit (0), and the sum of all digits to the right of the middle digit (0) are equal, then It's Balanced

// (balanced-num 295591) ==> return "Not Balanced"
// Explanation:
// Since, The sum of all digits to the left of the middle digits (11), and the sum of all digits to the right of the middle digits (10) are Not equal, then It's Not Balanced
// Note: The middle digit(s) are 55.

// (balanced-num 959) ==> return "Balanced"
// Explanation:
// Since, The sum of all digits to the left of the middle digits (9), and the sum of all digits to the right of the middle digits (9) are equal, then It's Balanced
// Note : The middle digit is 5.

// (balanced-num 27102983) ==> return "Not Balanced"
// Explanation:
// Since, The sum of all digits to the left of the middle digits (10), and the sum of all digits to the right of the middle digits (20) are Not equal, then It's Not Balanced
// Note : The middle digit(s) are 02.


func balancedNumber(_ number: Int) -> String {
    guard number > 99 else { return "Balanced" }
    let digits = String(number).compactMap { $0.wholeNumberValue }
    
    if digits.count % 2 != 0 {
        let leftSum = digits.dropFirst(digits.count / 2).reduce(0, +)
        let rightSum = digits.dropLast(digits.count / 2).reduce(0, +)
        
        if leftSum != rightSum { return "Not Balanced" }
        
    } else {
        let leftSum = digits.dropFirst((digits.count / 2) - 1).reduce(0, +)
        let rightSum = digits.dropLast((digits.count / 2) - 1).reduce(0, +)
        
        if leftSum != rightSum { return "Not Balanced" }
    }
    
    return "Balanced"
}


// Other solution for this kata
func balancedNumber2(_ number: Int) -> String {
  let digits = String(number).compactMap { $0.wholeNumberValue }
  let part1 = digits.dropLast (digits.count/2 + 1).reduce(0,+)
  let part2 = digits.dropFirst(digits.count/2 + 1).reduce(0,+)
 return part1 == part2 ? "Balanced" : "Not Balanced"
}
