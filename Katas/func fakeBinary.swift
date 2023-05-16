//
//  func fakeBinary.swift
//  Katas
//
//  Created by Maks Vogtman on 28/01/2022.
//

import Foundation

// Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.

// Note: input will never be an empty string


func fakeBin(digits: String) -> String {
    return digits.map({ $0 < "5" ? "1" : "0" }).joined()
}




// other solution for this kata

func fakeBin2(digits: String) -> String {
    var bin = ""
    
    for digit in digits {
        if Int("\(digit)")! < 5 {
            bin += "0"
        } else {
            bin += "1"
        }
    }
    return bin
}
    
