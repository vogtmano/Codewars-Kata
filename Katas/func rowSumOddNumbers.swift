//
//  func rowSumOddNumbers.swift
//  Katas
//
//  Created by Maks Vogtman on 28/07/2022.
//

import Foundation

// Given the triangle of consecutive odd numbers:

//               1                          1
//            3     5                       8
//         7     9    11                    27
//     13    15    17    19                 64
//  21    23    25    27    29              125
// ...
// Calculate the sum of the numbers in the nth row of this triangle (starting at index 1) e.g.: (Input --> Output)

// 1 -->  1
// 2 --> 3 + 5 = 8


func rowSumOddNumbers(_ row: Int) -> Int {
    row * row * row
}


