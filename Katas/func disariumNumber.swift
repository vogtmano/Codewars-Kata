//
//  func disariumNumber.swift
//  Katas
//
//  Created by Maks Vogtman on 17/08/2022.
//

import Foundation

// Definition

// Disarium number is the number that The sum of its digits powered with their respective positions is equal to the number itself.

// Task

// Given a number, Find if it is Disarium or not .

// Notes

// Number passed is always Positive .
// Return the result as String
// Input >> Output Examples

// disariumNumber(89) ==> return "Disarium !!"
// Explanation:

// Since , 81 + 92 = 89 , thus output is "Disarium !!"
// disariumNumber(564) ==> return "Not !!"
// Explanation:

// Since , 51 + 62 + 43 = 105 != 564 , thus output is "Not !!"


func disariumNumber(_ number: Int) -> String {
    var result = 0.0
    var index = 1.0
    
    for character in String(number) {
        result += pow(Double(String(character))!, index)
        index += 1
    }
    
    return Int(result) == number ? "Disarium !!" : "Not !!"
}


