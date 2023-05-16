//
//  func opposite.swift
//  Katas
//
//  Created by Maks Vogtman on 06/04/2022.
//

import Foundation


// Very simple, given an integer or a floating-point number, find its opposite.

// Examples:

// 1: -1
// 14: -14
// -34: 34



func opposite(number: Double) -> Double {
    if number < 0 {
        return abs(number)
    } else {
        return -number
    }
}




// same kata in the one line of code
func opposite2(number: Double) -> Double {
    return number < 0 ? abs(number) : -number
}




// the simplest
func opposite3(number: Double) -> Double {
    return -number
}

