//
//  func take.swift
//  Katas
//
//  Created by Maks Vogtman on 02/02/2022.
//

import Foundation

// Create a function take that takes an Array<Int> and an Int, n, and returns an Array<Int> containing the first up to n elements from the array.

func take(_ arr: [Int], _ n: Int) -> [Int] {
    var myArray: [Int] = []
    
    if arr.count == 0 {
        return []
    }
    
    if arr.count < n {
        return arr
    }
    
    for i in 0..<n {
        myArray.append(arr[i])
    }
    return myArray
}




// other solution for this kata

func take2(_ arr: [Int], _ n: Int) -> [Int] {
    Array(arr.filter { $0 < n } )
}


// other solution for this kata

func take3(_ arr: [Int], _ n: Int) -> [Int] {
    Array(arr.prefix(n))
}


