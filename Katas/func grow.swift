//
//  func grow.swift
//  Katas
//
//  Created by Maks Vogtman on 21/01/2022.
//

import Foundation

// Given a non-empty array of integers, return the result of multiplying the values together in order. Example:

// [1, 2, 3, 4] => 1 * 2 * 3 * 4 = 24

func grow(_ arr: [Int]) -> Int {
    return arr.reduce(1, *)
}



// other solution for this kata

func grow2(_ arr: [Int]) -> Int {
    var product = 1
    
    for digit in arr {
        product *= digit
    }
    
    return product
}



// other solution for this kata

func grow3(_ arr: [Int]) -> Int {
    var result = 1
    
    for number in arr {
        result = result * number
    }
    
    return result
}
