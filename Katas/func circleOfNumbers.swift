//
//  func circleOfNumbers.swift
//  Katas
//
//  Created by Maks Vogtman on 05/08/2022.
//

import Foundation

// Consider integer numbers from 0 to n - 1 written down along the circle in such a way that the distance between any two neighbouring numbers is equal (note that 0 and n - 1 are neighbouring, too).

// Given n and firstNumber, find the number which is written in the radially opposite position to firstNumber.

// Example

// For n = 4 and firstNumber = 1, the output should be 3
// For n = 6 and firstNumber = 1, the output should be 4
// For n = 8 and firstNumber = 1, the output should be 5
// For n = 10 and firstNumber = 1, the output should be 6
// For n = 12 and firstNumber = 1, the output should be 7

// [input] integer n - A positive even integer ; Constraints: 4 ≤ n ≤ 1000.

// [input] integer firstNumber - Constraints: 0 ≤ firstNumber ≤ n - 1

// [output] an integer


// My first solution
func circleOfNumbers(_ n: Int, _ fst: Int) -> Int {
    let circle = (0...n - 1).count
    let substract = circle / 2
    
    if fst < circle / 2 {
       return fst + substract
    } else {
        return fst - substract
    }
}

// Same solution after refactoring
func circleOfNumbers2(_ n: Int, _ fst: Int) -> Int {
    let circle = (0...n - 1).count
    return fst < circle / 2 ? fst + (circle / 2) : fst - (circle / 2)
}



// Simplest solution for this kata
func circleOfNumbers3(_ n: Int, _ fst: Int) -> Int {
    (n / 2 + fst) % n
}

