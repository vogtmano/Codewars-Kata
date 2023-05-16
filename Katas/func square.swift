//
//  func square.swift
//  Katas
//
//  Created by Maks Vogtman on 18/04/2023.
//

import Foundation

// Now you have to write a function that takes an argument and returns the square of it.

func square(_ num: Int) -> Int {
    num * num
}




// other solution
func square2(_ num: Int) -> Int {
    Int(pow(Double(num), 2))
}

