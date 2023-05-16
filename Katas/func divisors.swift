//
//  func divisors.swift
//  Katas
//
//  Created by Maks Vogtman on 08/11/2022.
//

import Foundation

// Count the number of divisors of a positive integer n.

// Random tests go up to n = 500000.

// Examples (input --> output)

// 4 --> 3 (1, 2, 4)
// 5 --> 2 (1, 5)
// 12 --> 6 (1, 2, 3, 4, 6, 12)
// 30 --> 8 (1, 2, 3, 5, 6, 10, 15, 30)

// Note you should only return a number, the count of divisors. The numbers between parentheses are shown only for you to see which numbers are counted in each case.

func divisors(_ n: UInt32) -> UInt32 {
    var count: UInt32 = 0
    
    for i in 1...n {
        if n % i == 0 {
            count += 1
        }
    }
    
    return count
}


// Simpler solution for this kata
func divisors2(_ n: UInt32) -> UInt32 {
    UInt32((1...n).filter { n % $0 == 0 }.count)
}
