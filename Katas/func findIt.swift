//
//  func findIt.swift
//  Katas
//
//  Created by Maks Vogtman on 10/10/2022.
//

import Foundation

// Given an array of integers, find the one that appears an odd number of times.

// There will always be only one integer that appears an odd number of times.

// Examples

// [7] should return 7, because it occurs 1 time (which is odd).
// [0] should return 0, because it occurs 1 time (which is odd).
// [1,1,2] should return 2, because it occurs 1 time (which is odd).
// [0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
// [1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).


func findIt(_ seq: [Int]) -> Int {
    
// If you have an array containing various elements and you want to count how often each item appears, you can do so by combining the map() method with a Dictionary initializer.
    
// Convert that to an array of key-value pairs using tuples, where each value is the number 1:
    let mappedItems = seq.map { ($0, 1) }
    
// Finally, create a Dictionary from that tuple array, asking it to add the 1s together every time it finds a duplicate key:
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)

    guard let key = counts.first(where: { $0.value % 2 == 1 })?.key else { return 0 }
    
    return key
}



// Same solution for this kata but in one line

func findIt2(_ seq: [Int]) -> Int {
    Dictionary(seq.map {($0, 1)}, uniquingKeysWith: +).first(where: { $0.value % 2 == 1})?.key ?? 0
}



// Best soultion for this kata
func findIt3(_ seq: [Int]) -> Int {
    seq.reduce(0, ^)
}
