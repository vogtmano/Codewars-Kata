//
//  func quarter.swift
//  Katas
//
//  Created by Maks Vogtman on 21/04/2022.
//

import Foundation

// Given a month as an integer from 1 to 12, return to which quarter of the year it belongs as an integer number.

// For example: month 2 (February), is part of the first quarter; month 6 (June), is part of the second quarter; and month 11 (November), is part of the fourth quarter.


func quarter(of month: Int) -> Int {
    switch month {
    case 1, 2, 3:
        return 1
    case 4, 5, 6:
        return 2
    case 7, 8, 9:
        return 3
    default:
        return 4
    }
}


// other way to solve this with switch statement
func quarter2(of month: Int) -> Int {
    switch month {
    case 1...3:
        return 1
    case 4...6:
        return 2
    case 7...9:
        return 3
    default:
        return 4
    }
}


// this kata in one line of code
func quarter3(of month: Int) -> Int {
    return (month + 2) / 3
}
