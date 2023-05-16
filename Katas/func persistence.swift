//
//  func persistence.swift
//  Katas
//
//  Created by Maks Vogtman on 26/09/2022.
//

import Foundation

// Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

// For example (Input --> Output):

// 39 --> 3 (because 3*9 = 27, 2*7 = 14, 1*4 = 4 and 4 has only one digit)
// 999 --> 4 (because 9*9*9 = 729, 7*2*9 = 126, 1*2*6 = 12, and finally 1*2 = 2)
// 4 --> 0 (because 4 is already a one-digit number)


func persistence(for num: Int) -> Int {
    guard num > 9 else { return 0 }
    var multiPers = 1
    var result = String(num).compactMap { $0.wholeNumberValue }.reduce(1, *)
    
    while result > 9 {
        result = String(result).compactMap { $0.wholeNumberValue }.reduce(1, *)
        multiPers += 1
    }
    
    return multiPers
}




// Other solution for this kata
func persistence2(for num: Int) -> Int {
    return num < 10 ? 0 : 1 + persistence2(for: String(num).compactMap{$0.wholeNumberValue}.reduce(1, *))
}



