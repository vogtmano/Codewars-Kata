//
//  func numbersWithDigitInside.swift
//  Katas
//
//  Created by Maks Vogtman on 24/05/2022.
//

import Foundation

// You have to search all numbers from inclusive 1 to inclusive a given number x, that have the given digit d in it.
// The value of d will always be 0 - 9.
// The value of x will always be greater than 0.

// You have to return as an array

// the count of these numbers,
// their sum
// and their product.

// For example:
// x = 11
// d = 1
// ->
// Numbers: 1, 10, 11
// Return: [3, 22, 110]

// If there are no numbers, which include the digit, return [0,0,0].



func numbersWithDigitInside2(_ x: Int64, _ d: Int64) -> [Int64] {
    let numbers = (1...x).filter { "\($0)".contains("\(d)") }
    return numbers.isEmpty ? [0, 0 ,0] : [Int64(numbers.count), numbers.reduce(0, +), numbers.reduce(1, *)]
}
