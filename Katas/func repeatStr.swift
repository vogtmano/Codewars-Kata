//
//  func repeatStr.swift
//  Katas
//
//  Created by Maks Vogtman on 28/01/2022.
//

import Foundation

// Write a function called repeatStr which repeats the given string string exactly n times.

func repeatStr(_ n: Int, _ string: String) -> String {
    
    return String(repeating: string, count: n)
}


// other solution


func repeatStr2(_ n: Int, _ string: String) -> String {
    
    var sumString = ""
    if n > 0 {
        for _ in 1...n {
            sumString += string
        }
    }
    return sumString
}
