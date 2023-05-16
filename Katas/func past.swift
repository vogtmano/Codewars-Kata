//
//  func past.swift
//  Katas
//
//  Created by Maks Vogtman on 21/01/2022.
//

import Foundation


// Clock shows h hours, m minutes and s seconds after midnight.

// Your task is to write a function which returns the time since midnight in milliseconds.

// Example:

// h = 0
// m = 1
// s = 1

// result = 61000
// Input constraints:

// 0 <= h <= 23
// 0 <= m <= 59
// 0 <= s <= 59


func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
    return 1000 * (h * 3600 + m * 60 + s)
}


// other solution for this kata

func past2(_ h: Int, _ m: Int, _ s: Int) -> Int {
    let hours = h * 3600000
    let minutes = m * 60000
    let seconds = s * 1000
    
    return hours + minutes + seconds
}
