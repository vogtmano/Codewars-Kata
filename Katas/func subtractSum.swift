//
//  func subtractSum.swift
//  Katas
//
//  Created by Maks Vogtman on 14/07/2022.
//

import Foundation

// Complete the function which get an input number n such that n >= 10 and n < 10000, then:

// Sum all the digits of n.
// Subtract the sum from n, and it is your new n.
// If the new n is in the list below return the associated fruit, otherwise return back to task 1.
// Example

// n = 325
// sum = 3+2+5 = 10
// n = 325-10 = 315 (not in the list)
// sum = 3+1+5 = 9
// n = 315-9 = 306 (not in the list)
// sum = 3+0+6 = 9
// n =306-9 = 297 (not in the list)
// .
// .
// .
// ...until you find the first n in the list below.

// There is no preloaded code to help you. This is not about coding skills; think before you code

func subtractSum(_ n: Int) -> String {
    var givenNumber = n
    
    while givenNumber > 100 {
        let sum = String(n).compactMap{ $0.wholeNumberValue }.reduce(0, +)
        givenNumber -= sum
    }
    
    switch givenNumber {
    case 1, 3, 24, 26, 47, 49, 68, 70, 91, 93:
        return "kiwi"
    case 2, 21, 23, 42, 44, 46, 65, 67, 69, 88:
        return "pear"
    case 4, 6, 25, 29, 48, 50, 71, 73, 92, 94, 96:
        return "banana"
    case 5, 7, 28, 30, 32, 51, 53, 74, 76, 95, 97:
        return "melon"
    case 8, 10, 12, 31, 33, 52, 56, 75, 77, 79, 98, 100:
        return "pineapple"
    case 11, 13, 34, 55, 57, 59, 78, 80:
        return "cucumber"
    case 20, 22, 41, 43, 62, 64, 66, 85, 87, 89:
        return "cherry"
    case 15, 17, 19, 38, 40, 61, 82, 84, 86:
        return "grape"
    case 14, 16, 35, 37, 39, 58, 60, 83:
        return "orange"
    case 9, 18, 27, 36, 45, 54, 63, 72, 81, 90, 99:
        return "apple"
    default:
        return "let it work"
    }
}
