//
//  func simpleMultiplication.swift
//  Katas
//
//  Created by Maks Vogtman on 04/11/2021.
//

import Foundation

// This kata is about multiplying a given number by eight if it is an even number and by nine otherwise.

func simpleMultiplication(_ num: Int) -> Int {
    if num % 2 == 0 {
        return num * 8
    } else {
        return num * 9
    }
}

