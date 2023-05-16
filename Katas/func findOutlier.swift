//
//  func findOutlier.swift
//  Katas
//
//  Created by Maks Vogtman on 11/10/2022.
//

import Foundation

// You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

// Examples

// [2, 4, 0, 100, 4, 11, 2602, 36]
// Should return: 11 (the only odd number)

// [160, 3, 1719, 19, 11, 13, -21]
// Should return: 160 (the only even number)


func findOutlier(_ array: [Int]) -> Int {
    array.filter { $0.isMultiple(of: 2) }.count < 2 ? array.first(where: { $0 % 2 == 0 })! : array.first(where: { $0 % 2 != 0 })!
}



// Other solution for this kata
func findOutlier2(_ array: [Int]) -> Int {
  let even = array.filter { $0 % 2 == 0 }
  let odd = array.filter { $0 % 2 != 0 }
    
  return even.count < odd.count ? even[0] : odd[0]
}
