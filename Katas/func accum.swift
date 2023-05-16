//
//  File.swift
//  Katas
//
//  Created by Maks Vogtman on 05/03/2022.
//

import Foundation


// This time no story, no theory. The examples below show you how to write function accum:

// Examples:

// accum("abcd") -> "A-Bb-Ccc-Dddd"
// accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
// accum("cwAt") -> "C-Ww-Aaa-Tttt"
// The parameter of accum is a string which includes only letters from a..z and A..Z.



func accum(_ s: String) -> String {
    var result = ""
    var count = 1
    
    for character in s {
        result += "\(character)".uppercased()
        for _ in 1..<count {
            result += "\(character)".lowercased()
        }
        count += 1
        result += s.count == count - 1  ? "" : "-"
    }
    
    return result
}
