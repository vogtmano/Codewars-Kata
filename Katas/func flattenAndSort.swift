//
//  func flattenAndSort.swift
//  Katas
//
//  Created by Maks Vogtman on 18/03/2022.
//

import Foundation

// Challenge:

// Given a two-dimensional array of integers, return the flattened version of the array with all the integers in the sorted (ascending) order.

// Example:

// Given [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]], your function should return [1, 2, 3, 4, 5, 6, 7, 8, 9].



func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
    
    //flatMap returns an array of containing the concatenated (połączone) results of calling the given transformation with each element of this sequence.
    return arr.flatMap{ $0 }.sorted()
}
