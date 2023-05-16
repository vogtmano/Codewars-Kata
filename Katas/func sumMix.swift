//
//  func sumMix.swift
//  Katas
//
//  Created by Maks Vogtman on 21/03/2022.
//

import Foundation


// Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.

// Return your answer as a number.




func sumMix(_ arr: [Any]) -> Int {
// you need to write $0 as a String at first, and then wrap it up into an Int.
    return arr.compactMap { Int("\($0)") }.reduce(0, +)
}



// other solution for this kata
func sumMix2(_ arr: [Any]) -> Int {
    var sum = 0
    for item in arr {
        if let test = item as? String {
            sum += Int(test)!
        } else {
            sum += item as! Int
        }
    }
    return sum
}

