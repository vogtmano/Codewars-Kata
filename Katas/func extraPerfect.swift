//
//  func extraPerfect.swift
//  Katas
//
//  Created by Maks Vogtman on 18/02/2022.
//

import Foundation

// Extra perfect number is the number that first and last bits are set bits.

// Given a positive integer N , Return the extra perfect numbers in range from 1 to N .

// Notes

// Number passed is always Positive .

// Returned array/list should contain the extra perfect numbers in ascending order from lowest to highest

func extraPerfect(_ n: Int) -> [Int] {
    var myArray: [Int] = []
    
    if n > 0 {
        for _ in 1...1 {
            myArray.append(contentsOf: 1...n)
        }
    }
    return myArray.filter({ $0 % 2 != 0 })
}




// same exercise but in one line of code

func extraPerfect2(_ n: Int) -> [Int] {
    Array<Int>(1...n).filter({ $0 % 2 != 0 })
}





// with the usage of stride function
func extraPerfect3(_ n: Int) -> [Int] {
    return Array(stride(from: 1, through: n, by: 2))
}






