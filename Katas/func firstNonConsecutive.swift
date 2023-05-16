//
//  func firstNonConsecutive.swift
//  Katas
//
//  Created by Maks Vogtman on 22/04/2022.
//

import Foundation

// Your task is to find the first element of an array that is not consecutive.

// By not consecutive we mean not exactly 1 larger than the previous element of the array.

// E.g. If we have an array [1,2,3,4,6,7,8] then 1 then 2 then 3 then 4 are all consecutive but 6 is not, so that's the first non-consecutive number.

// If the whole array is consecutive then return null2.

// The array will always have at least 2 elements1 and all elements will be numbers. The numbers will also all be unique and in ascending order. The numbers could be positive or negative and the first non-consecutive could be either too!

func firstNonConsecutive (_ arr: [Int]) -> Int? {
    var first = arr[0]
    
    for number in arr {
        if number == first {
            first += 1
        } else {
            return number
        }
    }
    return nil
}




// other solution for this kata
func firstNonConsecutive2 (_ arr: [Int]) -> Int? {
    for (index, element) in arr.enumerated() {
          if index > 0 {
              if !(element == (arr[index - 1] + 1)) { return element }
          }
      }
      return nil
}


