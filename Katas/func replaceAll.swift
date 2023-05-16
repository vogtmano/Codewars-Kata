//
//  func replaceAll.swift
//  Katas
//
//  Created by Maks Vogtman on 25/05/2022.
//

import Foundation


// Write function replaceAll that will replace all occurrences of an item with another.

// Example: replaceAll [1,2,2] 1 2 -> in list [1,2,2] we replace 1 with 2 to get new list [2,2,2]

// replaceAll(replaceAll(array: [1,2,2], old: 1, new: 2) // [2,2,2]


func replaceAll<T: Equatable>(array: [T], old: T, new: T) -> [T] {
    return array.map{ $0 == old ? new : $0}
}


// Other solution for this kata
func replaceAll2<T: Equatable>(array: [T], old: T, new: T) -> [T] {
    var myArray = array
    
    for i in 0..<myArray.count {
        if myArray[i] == old {
            myArray[i] = new
        }
    }
    return myArray
}
