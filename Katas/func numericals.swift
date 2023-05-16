//
//  func numericals.swift
//  Katas
//
//  Created by Maks Vogtman on 24/02/2023.
//

import Foundation

// You are given an input string.

// For each symbol in the string if it's the first character occurrence, replace it with a '1', else replace it with the amount of times you've already seen it.

// Examples:

// input   =  "Hello, World!"
// result  =  "1112111121311"

// input   =  "aaaaaaaaaaaa"
// result  =  "123456789101112"
// There might be some non-ascii characters in the string.


func numericals(_ str: String) -> String {
    var charCounts = [Character: Int]()
    var result = ""
    
    for char in str {
        if let count = charCounts[char] {
            charCounts[char] = count + 1
        } else {
            charCounts[char] = 1
        }
        
        result += String(charCounts[char]!)
    }
    
    return result
}


// Same solution, written neatly
func numericals2(_ str: String) -> String {
    var counts = [Character: Int]()
    var result = ""
    
    for char in str {
        counts[char] = (counts[char] ?? 0) + 1
        result += String(counts[char]!)
    }
    
    return result
}



// Other solution
func numericals3(_ str: String) -> String {
    var counter = [Character: Int]()
    
    return str.map {
        counter[$0, default: 0] += 1
        return String(counter[$0]!)
    }.joined()
}
