//
//  func sumOfPositives.swift
//  Katas
//
//  Created by Maks Vogtman on 14/02/2022.
//

import Foundation

// You get an array of numbers, return the sum of all of the positives ones.

// Example [1,-4,7,12] => 1 + 7 + 12 = 20

// Note: if there is nothing to sum, the sum is default to 0.


func sumOfPositives (_ numbers: [Int] ) -> Int {
    var myArray: [Int] = []
    
    for number in numbers {
        if number > 0 {
            myArray.append(number)
        }
    }
    return myArray.reduce(0, +)
}


// other solution for this kata

func sumOfPositives2 (_ numbers: [Int] ) -> Int {
    return numbers.filter{ $0 > 0 }.reduce(0, +)
}


// other solution for this kata

func sumOfPositives3 (_ numbers: [Int] ) -> Int {
    var sum = 0
    
    for number in numbers {
        if number > 0 {
            sum = sum + number
        }
    }
    return sum
}


