//
//  func findDeletedNumber.swift
//  Katas
//
//  Created by Maks Vogtman on 10/05/2022.
//

import Foundation

// An ordered sequence of numbers from 1 to N is given. One number might have deleted from it, then the remaining numbers were mixed. Find the number that was deleted.

// Example:

// The starting array sequence is [1,2,3,4,5,6,7,8,9]
// The mixed array with one deleted number is [3,2,4,6,7,8,1,9]
// Your function should return the int 5.
// If no number was deleted from the starting array, your function should return the int 0.

// Note: N may be 1 or less (in the latter case, the first array will be []).


func findDeletedNumber(_ array: [Int], _ mixArray: [Int]) -> Int {
    return array.reduce(0, +) - mixArray.reduce(0, +)
}



// other solution for this kata
func findDeletedNumber2(_ array: [Int], _ mixArray: [Int]) -> Int {
    return array.first(where: { !mixArray.contains($0) }) ?? 0
}


// another one solution
func findDeletedNumber3(_ array: [Int], _ mixArray: [Int]) -> Int {
    for item in array {
        if mixArray.contains(item) {
            return item
        }
    }
    return 0
}
