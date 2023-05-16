//
//  func countBits.swift
//  Katas
//
//  Created by Maks Vogtman on 09/11/2022.
//

import Foundation

// Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. You can guarantee that input is non-negative.

// Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case


func countBits(_ n: Int) -> Int {
    Int(String(n, radix: 10))!.nonzeroBitCount
}



// Simplest way to solve this kata (couse radix is equal to 10 by default)
func countBits2(_ n: Int) -> Int {
    n.nonzeroBitCount
}

