//
//  func find_short.swift
//  Katas
//
//  Created by Maks Vogtman on 01/08/2022.
//

import Foundation

// Simple, given a string of words, return the length of the shortest word(s).

// String will never be empty and you do not need to account for different data types.


func find_short(_ str: String) -> Int {
    str.split(separator: " ").min(by: { $0.count < $1.count})!.count
}


// Other solution for this kata
func find_short2(_ str: String) -> Int {
    str.split(separator: " ").sorted{ $0.count < $1.count }[0].count
}



// Other solution for this kata
func find_short3(_ str: String) -> Int {
    str
        .components(separatedBy: " ")
        .map { $0.count }
        .min() ?? 0
}
