//
//  func sumOfTwoSmallestIntegersIn.swift
//  Katas
//
//  Created by Maks Vogtman on 24/02/2022.
//

import Foundation


// Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. No floats or non-positive integers will be passed.

// For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.



func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
    return array.sorted()[0...1].reduce(0, +)
}



// other solution for this kata

func sumOfTwoSmallestIntegersIn2(_ array: [Int]) -> Int {
    let sort = array.sorted()
    
    return sort[0] + sort[1]
}
