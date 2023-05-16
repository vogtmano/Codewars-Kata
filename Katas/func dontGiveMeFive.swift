//
//  func dontGiveMeFive.swift
//  Katas
//
//  Created by Maks Vogtman on 17/03/2022.
//

import Foundation


// In this kata you get the start number and the end number of a region and should return the count of all numbers except numbers with a 5 in it. The start and the end number are both inclusive!

// Examples:

// 1,9 -> 1,2,3,4,6,7,8,9 -> Result 8
// 4,17 -> 4,6,7,8,9,10,11,12,13,14,16,17 -> Result 12
// The result may contain fives. ;-)
// The start number will always be smaller than the end number. Both numbers can be also negative!

// I'm very curious for your solutions and the way you solve it. Maybe someone of you will find an easy pure mathematics solution.

func dontGiveMeFive(_ start: Int, _ end: Int) -> Int {
    
    // The starting array
    let arrayOfNumbers = [Int](start...end)
    
    // Taking the absolute value of the starting array to account for potential negative numbers
    let absArrayOfNumbers = arrayOfNumbers.map{ abs($0) }
    
    // Array to hold the final result
    var finalResult = [Int]()
    
    for number in absArrayOfNumbers {
        // If a number % 10 == 5 OR a number / 10 == 5 then it contains a five
        // We want numbers that fit the opposite case e.g. do not contain five
        
        if number % 10 == 5 || number / 10 == 5 {
            finalResult.append(number)
        }
    }
    // Return the count of values in the final result array
    return finalResult.count
}



// other solution forthis Kata
func dontGiveMeFive2(_ start: Int, _ end: Int) -> Int {
    return (start...end).filter{ String($0).contains("5") }.count
}



// other solution

func dontGiveMeFive3(_ start: Int, _ end: Int) -> Int {
  return Array(start...end)
              .map({ String($0)} )
              .filter({ !$0.contains("5")})
              .count
}
