//
//  func squareOrSquareRoot.swift
//  Katas
//
//  Created by Maks Vogtman on 16/03/2022.
//

import Foundation

// #To square(root) or not to square(root)

// Write a method, that will get an integer array as parameter and will process every number from this array.
// Return a new array with processing every number of the input-array like this:

// If the number has an integer square root, take this, otherwise square the number.

// [4,3,9,7,2,1] -> [2,9,3,49,4,1]
// The input array will always contain only positive numbers and will never be empty or null.

// The input array should not be modified!

func squareOrSquareRoot(_ input: [Int]) -> [Int] {
    var result = [Int]()
    
    for number in input {
        
        let square = Double(number).squareRoot()
        
        // func floor that takes Double and returns Double
        if floor(square) == square {
            result.append(Int(square))
        } else {
            result.append(number * number)
        }
    }
    return result
}

    


