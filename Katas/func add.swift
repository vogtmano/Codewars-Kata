//
//  func add.swift
//  Katas
//
//  Created by Maks Vogtman on 23/09/2022.
//

import Foundation

// Create a function add(n)/Add(n) which returns a function that always adds n to any number

// addOne = add(1)
// addOne(3) // 4


func add(_ n: Int) -> ((Int) -> Int) {
    return { $0 + n }
}
