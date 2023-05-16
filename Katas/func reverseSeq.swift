//
//  func reverseSeq.swift
//  Katas
//
//  Created by Maks Vogtman on 06/07/2022.
//

import Foundation


// Build a function that returns an array of integers from n to 1 where n>0.

// Example : n=5 --> [5,4,3,2,1]


func reverseSeq(n: Int) -> [Int] {
    var myArray = [Int]()
    
    for i in 1...n {
        myArray.append(i)
    }
    return myArray.reversed()
}



// other solution for this kata
func reverseSeq2(n: Int) -> [Int] {
    (1...n).reversed()
}
