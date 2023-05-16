//
//  func foldArray.swift
//  Katas
//
//  Created by Maks Vogtman on 14/12/2022.
//

import Foundation

// In this kata you have to write a method that folds a given array of integers by the middle x-times.

// An example says more than thousand words:

// Fold 1-times:
// [1,2,3,4,5] -> [6,6,3]

// A little visualization (NOT for the algorithm but for the idea of folding):

//  Step 1         Step 2        Step 3       Step 4       Step5
//                      5/           5|         5\
//                     4/            4|          4\
// 1 2 3 4 5      1 2 3/         1 2 3|       1 2 3\       6 6 3
// ----*----      ----*          ----*        ----*        ----*


// Fold 2-times:
// [1,2,3,4,5] -> [9,6]

// As you see, if the count of numbers is odd, the middle number will stay. Otherwise the fold-point is between the middle-numbers, so all numbers would be added in a way.

// The array will always contain numbers and will never be null. The parameter times will always be a positive integer greater than 0 and says how many times of folding your method has to do.

// If an array with one element is folded, it stays as the same array.

// The input array should not be modified!



func foldArray(_ arr: [Int], times: Int) -> [Int] {
    guard times > 0 else { return arr }
    let tail = arr.suffix(arr.count / 2).reversed() + [0]
    let head = arr.prefix(arr.count + 1 / 2)
    let arrBack = zip(head, tail) .compactMap { $0.0 + $0.1 }
    return foldArray(arrBack, times: -1)
}






func foldArray2(_ arr: [Int], times: Int) -> [Int] {
    guard times > 0, arr.count > 1 else { return arr }
    var myArray = [Int]()
    var array = arr
    
    while array.count > 1 {
        myArray.append(array.removeFirst() + array.removeLast())
    }
    
    return foldArray2(myArray, times: -1)
}





func foldArray3(_ arr: [Int], times: Int) -> [Int] {
    var result = arr
    
    for _ in 0..<times {
        for i in 0..<result.count / 2 {
            result[i] = result[i] + result.popLast()!
        }
    }
    
    return result
}

