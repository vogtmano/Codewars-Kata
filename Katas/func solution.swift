//
//  func solution.swift
//  Katas
//
//  Created by Maks Vogtman on 03/10/2022.
//

import Foundation

// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

// Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).

// Note: If the number is a multiple of both 3 and 5, only count it once.


func solution(_ num: Int) -> Int {
    guard num >= 0 else { return 0 }
    var array = [Int]()
    
    for number in 0..<num {
        if number % 3 == 0 {
            array.append(number)
        }
        
        else if number % 5 == 0 {
            array.append(number)
        }
    }
    
    return array.reduce(0, +)
}



// other solution for this kata
func solution2(_ num: Int) -> Int {
    (0..<num).filter { $0.isMultiple(of: 3) || $0.isMultiple(of: 5) }.reduce(0, +)
}
