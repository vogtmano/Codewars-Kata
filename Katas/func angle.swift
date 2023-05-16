//
//  func angle.swift
//  Katas
//
//  Created by Maks Vogtman on 16/02/2022.
//

import Foundation

// Find the total sum of internal angles (in degrees) in an n-sided simple polygon. N will be greater than 2.

func angle(_ n: Int) -> Int {
    return 180 * (n - 2)
}



// other solution for this kata

func angle2(_ n: Int) -> Int {
    return 180 * n - 360
}

