//
//  func findDigit.swift
//  Katas
//
//  Created by Maks Vogtman on 20/05/2022.
//

import Foundation

// Complete the function that takes two numbers as input, num and nth and return the nth digit of num (counting from right to left).

// Note

// If num is negative, ignore its sign and treat it as a positive value
// If nth is not positive, return -1
// Keep in mind that 42 = 00042. This means that findDigit(42, 5) would return 0
// Examples(num, nth --> output)

// 5673, 4 --> 5
// 129, 2 --> 2
// -2825, 3 --> 8
// -456, 4 --> 0
// 0, 20 --> 0
// 65, 0 --> -1
// 24, -8 --> -1


func findDigit(_ num:Int, _ nth: Int) -> Int {
    let positive = abs(num)
    
    guard nth > 0 else { return -1 }
    guard positive > 0 else { return 0 }
    // nth is a counter that is decremented with every recursion.
    // positive % 10 returns the remainder of positive / 10
    // For example 23 % 10 = 3
    // In this line it always returns a number from 0 - 9 IF nth <= 0
    guard nth > 1 else { return positive % 10 }
    // If none of the above conditions are true, calls itself using
    // the current absolute value divided by 10, decreasing nth.
    // nth serves to target a different digit in the original number
    return findDigit(positive / 10, nth - 1)
}




