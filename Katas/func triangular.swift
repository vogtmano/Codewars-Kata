//
//  func triangular.swift
//  Katas
//
//  Created by Maks Vogtman on 18/07/2022.
//

import Foundation

// Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e.

// 1st (1)   2nd (3)    3rd (6)   4th (10)     5th (15)
// *          **        ***       ****         *****
//            *         **        ***          ****
//                      *         **           ***
//                                *            **
//                                             *


// You need to return the nth triangular number. You should return 0 for out of range values:

// For example: (Input --> Output)

// 0 --> 0
// 1 --> 1
// 2 --> 3
// 3 --> 6
// 4 --> 10
// 5 --> 15
// -10 --> 0

func triangular(_ n: Int) -> Int {
    n <= 0 ? 0 : (n + 1) * n / 2
}



// other solution for this kata
func triangular2(_ n: Int) -> Int {
    n > 0 ? (1...n).reduce(0, +) : 0
}
