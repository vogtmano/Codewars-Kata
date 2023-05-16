//
//  func nthEven.swift
//  Katas
//
//  Created by Maks Vogtman on 25/02/2022.
//

import Foundation


// Return the Nth Even Number

// Example(Input --> Output)

// 1 --> 0 (the first even number is 0)
// 3 --> 4 (the 3rd even number is 4 (0, 2, 4))
// 100 --> 198
// The input will not be 0.

func nthEven(_ n: Int) -> Int {
    return 2 * n - 2
}
