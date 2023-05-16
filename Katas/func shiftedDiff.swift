//
//  func shiftedDiff.swift
//  Katas
//
//  Created by Maks Vogtman on 24/01/2023.
//

import Foundation

// Write a function that receives two strings and returns n, where n is equal to the number of characters we should shift the first string forward to match the second. The check should be case sensitive.

// For instance, take the strings "fatigue" and "tiguefa". In this case, the first string has been rotated 5 characters forward to produce the second string, so 5 would be returned.

// If the second string isn't a valid rotation of the first string, the method returns nil.

// Examples:

// shiftedDiff("coffee", "eecoff") => 2
// shiftedDiff("eecoff", "coffee") => 4
// shiftedDiff("moose", "Moose") => nil
// shiftedDiff("isn't", "'tisn") => 2
// shiftedDiff("Esham", "Esham") => 0
// shiftedDiff("dog", "god") => nil


func shiftedDiff(_ s1: String, _ s2: String) -> Int? {
    for i in 0..<s1.count {
        guard s1 != s2 else { return i }
        let index = s1.index(s1.startIndex, offsetBy: i)
        
        if s1.suffix(from: index) + s1.prefix(upTo: index) == s2 {
            return s1.count - i
        }
    }
    
    return nil
}





// Other solution for this kata
func shiftedDiff2(_ s1: String, _ s2: String) -> Int? {
    let dubs = s2 + s2
    
    if let str = dubs.range(of: s1) {
        return dubs.distance(from: dubs.startIndex, to: str.lowerBound) }
    else { return nil }
}


