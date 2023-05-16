//
//  func addOne.swift
//  Katas
//
//  Created by Maks Vogtman on 08/11/2021.
//

import Foundation

// Create a function oddOne that takes an [Int] as input and outputs the index at which the sole odd number is located.

// This method should work with arrays with negative numbers. If there are no odd numbers in the array, then the method should output nil.

// Examples:

// oddOne([2,4,6,7,10]) // => 3
// oddOne([2,16,98,10,13,78]) // => 4
// oddOne([4,-8,98,-12,-7,90,100]) // => 4
// oddOne([2,4,6,8]) // => nil

func oddOne(_ arr: [Int]) -> Int? {
    guard let index = arr.firstIndex(where: { $0 % 2 != 0 }) else {
        return nil
    }
    return index
}

// Second method to solve this exercise

func oddOne2(_ arr: [Int]) -> Int? {
    return arr.firstIndex { $0 % 2 != 0 }
}
