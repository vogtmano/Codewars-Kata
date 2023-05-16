//
//  func allNonConsecutive.swift
//  Katas
//
//  Created by Maks Vogtman on 12/05/2022.
//

import Foundation


// E.g., if we have an array [1,2,3,4,6,7,8,15,16] then 6 and 15 are non-consecutive.

// You should return the results as an array of tuples with two values: the index of the non-consecutive number and the non-consecutive number.

// If the whole array is consecutive or has one element then return an empty array.

// The array elements will all be numbers. The numbers will also all be unique and in ascending order. The numbers could be positive and/or negetive and the gap could be larger than one.


func allNonConsecutive (_ arr: [Int]) -> [(Int, Int)] {
    var tupleArray = [(Int, Int)]()
    
    for element in 1..<arr.count {
        if arr[element] != arr[element - 1] + 1 {
            tupleArray.append((element, arr[element]))
        }
    }
    return tupleArray
}



// other solution
func allNonConsecutive2 (_ arr: [Int]) -> [(Int, Int)] {
  
    var resultArray: [(Int, Int)] = []
    
    for i in 1..<arr.count {
        if arr[i] - arr[i - 1] != 1 {
            resultArray.append((i, arr[i]))
        }
    }
    
    return resultArray
}





// in one line of code
func allNonConsecutive3 (_ arr: [Int]) -> [(Int, Int)] {
  arr.enumerated().dropFirst().filter { arr[$0.0 - 1] != $0.1 - 1 }
}

