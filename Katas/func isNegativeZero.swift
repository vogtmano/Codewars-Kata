//
//  func isNegativeZero.swift
//  Katas
//
//  Created by Maks Vogtman on 18/05/2022.
//

import Foundation


// There exist two zeroes: +0 (or just 0) and -0.

// Write a function that returns true if the input number is -0 and false otherwise (True and False for Python).


func isNegativeZero(_ n: Float) -> Bool {
    return String(n) == "-0.0" ? true : false
}


// other solution for this kata

func isNegativeZero2(_ n: Float) -> Bool {
 return n.sign == .minus && n == -0.0
}
