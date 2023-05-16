//
//  func squareSum.swift
//  Katas
//
//  Created by Maks Vogtman on 21/01/2022.
//

import Foundation

// Complete the square sum function so that it squares each number passed into it and then sums the results together.

// For example, for [1, 2, 2] it should return 9 because 1^2 + 2^2 + 2^2 = 9.


func squareSum(_ vals: [Int]) -> Int {
    var result = 0
    
    for digit in vals {
        result += digit * digit
    }
    
    return result
}
