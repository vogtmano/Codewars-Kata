//
//  func squareDigits.swift
//  Katas
//
//  Created by Maks Vogtman on 05/03/2022.
//

import Foundation

// Welcome. In this kata, you are asked to square every digit of a number and concatenate them.

// For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.

// Note: The function accepts an integer and returns an integer


func squareDigits(_ num: Int) -> Int {
  
    var myNum = num
      var remainder: Int = 0
      var runningTotal: String = ""
      var square: Int = 0
      
      repeat {
        remainder = myNum % 10
        myNum = myNum / 10
        
        square = remainder * remainder
        
        runningTotal = String(square) + runningTotal
      } while (myNum > 0)
      
      return Int(runningTotal)!
}
