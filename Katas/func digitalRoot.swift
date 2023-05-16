//
//  func digitalRoot.swift
//  Katas
//
//  Created by Maks Vogtman on 21/04/2022.
//

import Foundation

// Digital root is the recursive sum of all the digits in a number.

// Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. The input will be a non-negative integer.

// Examples:

//   16  -->  1 + 6 = 7
// 942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
// 132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
// 493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2

func digitalRoot(of number: Int) -> Int {
    if number < 10 {
      return number
    }
    
    let remainder = number % 10
    return digitalRoot(of: remainder + digitalRoot(of: (number-remainder)/10))
}


// other solution for this kata
func digitalRoot2(of number: Int) -> Int {
    return (number - 1) % 9 + 1
}


// other solution
func digitalRoot3(of number: Int) -> Int {
  if number < 10 {
    return number
  } else {
    return digitalRoot(of: number % 10 + digitalRoot(of: Int(number / 10)))
  }
}
