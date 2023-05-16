//
//  func sum_str.swift
//  Katas
//
//  Created by Maks Vogtman on 01/04/2022.
//

import Foundation


// Create a function that takes 2 integers in form of a string as an input, and outputs the sum (also as a string):

// Example: (Input1, Input2 -->Output)

// "4",  "5" --> "9"
// "34", "5" --> "39"
// "", "" --> "0"
// "2", "" --> "2"
// "-5", "3" --> "-2"
// Notes:

// If either input is an empty string, consider it as zero.

// Inputs and the expected output will never exceed the signed 32-bit integer limit (2^31 - 1)




func sum_str(_ a:String, _ b:String) -> String {
    return String((Int(a) ?? 0 ) + (Int(b) ?? 0 ))
}



// other solution
func sum_str2(_ a:String, _ b:String) -> String {
    let firstNumInt = Int(a) ?? 0
     let secondNumInt = Int(b) ?? 0
     let sum = firstNumInt + secondNumInt
     
    return String(sum)
}
