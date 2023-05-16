//
//  func descendingOrder.swift
//  Katas
//
//  Created by Maks Vogtman on 27/07/2022.
//

import Foundation

// Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

// Examples:

// Input: 42145 Output: 54421

// Input: 145263 Output: 654321

// Input: 123456789 Output: 987654321


func descendingOrder(of number: Int) -> Int {
    Int(String(number.description.sorted(by: >)))!
}
