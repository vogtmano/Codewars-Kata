//
//  func sortTwisted37.swift
//  Katas
//
//  Created by Maks Vogtman on 13/03/2023.
//

import Foundation


// There is a planet... in a galaxy far far away. It is exactly like our planet, but it has one difference: #The values of the digits 3 and 7 are twisted. Our 3 means 7 on the planet Twisted-3-7. And 7 means 3.

// Your task is to create a method, that can sort an array the way it would be sorted on Twisted-3-7.

// 7 Examples from a friend from Twisted-3-7:

// [1,2,3,4,5,6,7,8,9] -> [1,2,7,4,5,6,3,8,9]
// [12,13,14] -> [12,14,13]
// [9,2,4,7,3] -> [2,7,4,3,9]

// There is no need for a precheck. The array will always be not null and will always contain at least one number.

// You should not modify the input array!


func sortTwisted37(_ arr: [Int]) -> [Int] {
    // Define a function to swap digits 3 and 7 in a number
    func twistedNumber(_ num: Int) -> Int {
        let str = String(num)
        
// The reason for replacing all occurrences of the digit 3 with "x" first and then replacing all occurrences of 7 with 3 is to ensure that the function doesn't accidentally replace a 3 that was originally part of a 7 with another 7.
        
// For example, if we were to replace all occurrences of 3 with 7 directly, a number like 37 would be converted to 77 instead of 73, because the original 7 would also be replaced. By first replacing all occurrences of 3 with "x", we avoid this issue, as the number 37 would be converted to 7x, and then replacing all occurrences of 7 with 3 would give us 73, which is the desired result.

// In other words, by using the intermediate step of replacing all occurrences of 3 with "x", we ensure that the digits 3 and 7 are swapped without any unintended consequences.
        let twistedStr = str.replacingOccurrences(of: "3", with: "x")
                            .replacingOccurrences(of: "7", with: "3")
                            .replacingOccurrences(of: "x", with: "7")
        return Int(twistedStr)!
    }
    
// Map the input array to an array of twisted numbers. Sort the twisted array in ascending order. Map the sorted twisted array back to the original numbers.
    return arr.map { twistedNumber($0) }.sorted().map { twistedNumber($0)}
}
