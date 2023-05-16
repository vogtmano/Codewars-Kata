//
//  func digitize.swift
//  Katas
//
//  Created by Maks Vogtman on 02/11/2021.
//

import Foundation

//Convert number to reversed array of digits

//Given a random non-negative number, you have to return the digits of this number within an array in reverse order.

//Example:

//348597 => [7,9,5,8,4,3]

func digitize(_ num: Int) -> [Int] {
// I declared a variable myArray which is of type Array of Ints
// I assigned a value of an empty array to a variable myArray
    var myArray : [Int] = []
// I declared a constant variable let myString
// I converted a String into a an Int
    let myString = String(num)
// for in loop that iretates through every digit in myString
    for digit in myString {
// unwrapping an optional 
        guard let digit = digit.wholeNumberValue else {
            print("It's not a number")
            continue
        }
        myArray.append(digit)
    }
    return myArray.reversed()
}


