//
//  func createBox.swift
//  Katas
//
//  Created by Maks Vogtman on 16/03/2023.
//

import Foundation

// Given two positive integers m (width) and n (height), fill a two-dimensional list (or array) of size m-by-n in the following way:

// (1) All the elements in the first and last row and column are 1.

// (2) All the elements in the second and second-last row and column are 2, excluding the elements from step 1.

// (3) All the elements in the third and third-last row and column are 3, excluding the elements from the previous steps.

// And so on ...

// Examples

// Given m = 5, n = 8, your function should return

// [[1, 1, 1, 1, 1],
//  [1, 2, 2, 2, 1],
//  [1, 2, 3, 2, 1],
//  [1, 2, 3, 2, 1],
//  [1, 2, 3, 2, 1],
//  [1, 2, 3, 2, 1],
//  [1, 2, 2, 2, 1],
//  [1, 1, 1, 1, 1]]

// Given m = 10, n = 9, your function should return

// [[1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
//  [1, 2, 2, 2, 2, 2, 2, 2, 2, 1],
//  [1, 2, 3, 3, 3, 3, 3, 3, 2, 1],
//  [1, 2, 3, 4, 4, 4, 4, 3, 2, 1],
//  [1, 2, 3, 4, 5, 5, 4, 3, 2, 1],
//  [1, 2, 3, 4, 4, 4, 4, 3, 2, 1],
//  [1, 2, 3, 3, 3, 3, 3, 3, 2, 1],
//  [1, 2, 2, 2, 2, 2, 2, 2, 2, 1],
//  [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]]

func createBox(_ m: Int, _ n: Int) -> [[Int]] {
    if m <= 2 || n <= 2 {
        return Array(repeating: Array(repeating: 1, count: m), count: n)
    }
    
    var result = Array(repeating: Array(repeating: 0, count: m), count: n)
    
    for i in 0 ..< m {
        result[0][i] = 1
        result[n - 1][i] = 1
    }
    
    for i in 1 ..< n - 1 {
        result[i][0] = 1
        result[i][m - 1] = 1
    }
    
    for i in 1 ..< n - 1 {
        for j in 1 ..< m - 1 {
            let val = min(i, j, n - i - 1, m - j - 1) + 1
            result[i][j] = val
        }
    }
    
    return result
}



// My solution, written simpler
func createBox2(_ m: Int, _ n: Int) -> [[Int]] {
    var matrix = Array(repeating: Array(repeating: 0, count: m), count: n)
    
    for i in 0 ..< n {
        for j in 0 ..< m {
            let minIndex = min(i, j, n - i - 1, m - j - 1)
            matrix[i][j] = minIndex + 1
        }
    }
    
    return matrix
}







// Solution with one line of code.
func createBox3(_ m: Int, _ n: Int) -> [[Int]] {
    (0 ..< n).map { i in (0 ..< m).map { j in min(i, j, n - i - 1, m - j - 1) + 1 } }
}






