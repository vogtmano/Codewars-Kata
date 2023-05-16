//
//  func evenChars.swift
//  Katas
//
//  Created by Maks Vogtman on 21/02/2022.
//

import Foundation

// Write a function that returns a sequence (index begins with 1) of all the even characters from a string. If the string is smaller than two characters or longer than 100 characters, the function should return "invalid string".

// For example:

// "abcdefghijklm" --> ["b", "d", "f", "h", "j", "l"]
// "a"             --> "invalid string"

func evenChars(string: String) -> String {
    let evenChars: [Character] = ["b", "d", "f", "h", "j", "l", "n", "p", "s", "u", "w", "y", "B", "D", "F", "H", "J", "L", "N", "P", "S", "U", "W", "Y"]
    
    if string.count < 2 && string.count > 100 {
        return "invalid string"
    } else {
        return string.filter({ evenChars.contains($0) })
    }
}

