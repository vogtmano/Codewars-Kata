//
//  func maps.swift
//  Katas
//
//  Created by Maks Vogtman on 19/04/2022.
//

import Foundation

//Given an array of integers, return a new array with each value doubled.

//For example:

//[1, 2, 3] --> [2, 4, 6]


func maps(a : Array<Int>) -> Array<Int> {
    return a.compactMap { $0 * 2 }
}



// same kata with other higher order function
func maps2(a : Array<Int>) -> Array<Int> {
    return a.map{ $0 * 2 }
}


// same kata, more expanded solution
func maps3(a : Array<Int>) -> Array<Int> {
    var b = a
    
    for i in 0..<a.count {
        b[i] = a[i] * 2
    }
    return b
}

