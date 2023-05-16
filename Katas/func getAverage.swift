//
//  func getAverage.swift
//  Katas
//
//  Created by Maks Vogtman on 10/05/2022.
//

import Foundation

// It's the academic year's end, fateful moment of your school report. The averages must be calculated. All the students come to you and entreat you to calculate their average for them. Easy ! You just need to write a script.

// Return the average of the given array rounded down to its nearest integer.

// The array will never be empty.



func getAverage(_ marks: [Int]) -> Int {
    let sum = marks.reduce(0, +)
    let count = marks.count
    
    return sum / count
}




// Other solution for this kata
func getAverage2(_ marks: [Int]) -> Int {
    return marks.reduce(0, +) / marks.count
}
