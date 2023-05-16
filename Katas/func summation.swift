//
//  func summation.swift
//  Katas
//
//  Created by Maks Vogtman on 14/02/2022.
//

import Foundation

// Write a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0.

// For example:

// summation(2) -> 3
// 1 + 2

// summation(8) -> 36
// 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8



func summation(_ n: Int) -> Int {
    return n * (n + 1) / 2
}


// other solution

func summation2(_ n: Int) -> Int {
    return [Int](1...n).reduce(0, +)
}

