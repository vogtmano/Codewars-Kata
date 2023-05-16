//
//  func jumpingNumber.swift
//  Katas
//
//  Created by Maks Vogtman on 07/09/2022.
//

import Foundation

// Definition

// Jumping number is the number that All adjacent digits in it differ by 1.

// Task
// Given a number, Find if it is Jumping or not.

// Notes

// Number passed is always Positive.

// Return the result as String.

// The difference between ‘9’ and ‘0’ is not considered as 1.

// All single digit numbers are considered as Jumping numbers.

// Input >> Output Examples

// jumpingNumber(9) ==> return "Jumping!!"
// Explanation:
// It's single-digit number

// jumpingNumber(79) ==> return "Not!!"
// Explanation:
// Adjacent digits don't differ by 1

// jumpingNumber(23) ==> return "Jumping!!"
// Explanation:
// Adjacent digits differ by 1

// jumpingNumber(556847) ==> return
// Explanation:
// Adjacent digits don't differ by 1

// jumpingNumber(4343456) ==> return "Jumping!!"
// Explanation:
// Adjacent digits differ by 1

// jumpingNumber(89098) ==> return "Not!!"
// Explanation:
// Adjacent digits don't differ by 1

// jumpingNumber(32) ==> return "Jumping!!"
// Explanation:
// Adjacent digits differ by 1


func jumpingNumber(_ number: Int) -> String {
    guard number > 12 else { return "Jumping!!" }
    let array = String(number).compactMap { Int(String($0)) }
    let zippedArray = zip(array, array[1...])
    
    for (x, y) in zippedArray {
        if abs(x - y) != 1 { return "Not!!" }
    }
    
    return "Jumping!!"
}



// Other solution for this kata
func jumpingNumber2(_ number: Int) -> String {
    let digits = String(number).compactMap { $0.wholeNumberValue }
    for (d1, d2) in zip(digits, digits[1...]) {
        if abs(d1 - d2) != 1 { return "Not!!" }
    }
    
    return "Jumping!!"
}
