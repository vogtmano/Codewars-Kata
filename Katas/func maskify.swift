//
//  func maskify.swift
//  Katas
//
//  Created by Maks Vogtman on 20/07/2022.
//

import Foundation

// Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.

// Your task is to write a function maskify, which changes all but the last four characters into '#'.

// Examples

// "4556364607935616" --> "############5616"
//      "64607935616" -->      "#######5616"
//                "1" -->                "1"
//                "" -->                 ""

// "What was the name of your first pet?"

// "Skippy" --> "##ippy"

// "Nananananananananananananananana Batman!"
// -->
// "####################################man!"


func maskify(_ string: String) -> String {
    let lastFour = string.dropFirst(string.count - 4)
    let hashtags = string.dropLast(4)
    
    return string.count < 5 ? string : hashtags.compactMap { Character in ("#") }.joined(separator: "") + lastFour
}


// solution in one line of code

func maskify2(_ string: String) -> String {
    string.count < 5 ? string : String(repeating: "#", count: string.count - 4) + String(string.suffix(4))
}


// other solution
func maskify3(_ string: String) -> String {
  
    if string.count <= 4 {
        return string
    }
    
    let index = string.count - 4
    var array = Array(string)
    
    for i in 0..<index {
        array[i] = "#"
    }

    return String(array)
}
