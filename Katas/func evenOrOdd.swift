//
//  func evenOrOdd.swift
//  Katas
//
//  Created by Maks Vogtman on 05/11/2021.
//

import Foundation

// Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.


func evenOrOdd(_ number:Int) -> String {
    if number % 2 == 0 {
        return "Even"
    } else {
        return "Odd"
    }
}



// Other way to solve this kata

func evenOrOdd2(_ number:Int) -> String {
    return number % 2 == 0 ? "Even" : "Odd"
}
