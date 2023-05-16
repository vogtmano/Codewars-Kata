//
//  func pyramid.swift
//  Katas
//
//  Created by Maks Vogtman on 11/08/2022.
//

import Foundation

// Remember the triangle of balls in billiards? To build a classic triangle (5 levels) you need 15 balls. With 3 balls you can build a 2-level triangle, etc.

// For more examples:

// pyramid(1) == 1

// pyramid(3) == 2

// pyramid(6) == 3

// pyramid(10) == 4

// pyramid(15) == 5

// pyramid(21) == 6

// pyramid(28) == 7

// Write a function that takes number of balls (≥ 1) and calculates how many levels you can build a triangle.


func pyramid(_ balls: Int) -> Int {
    var l = 0
    var s = 0
    
    while s + l < balls {
        l += 1
        s += l
    }
    return l
}



// Other solution for this kata
func pyramid2(_ balls: Int) -> Int {
  var currLevel = 0
  var ballsLeft = balls
  
  repeat {
    currLevel += 1
    ballsLeft -= currLevel
  } while ballsLeft >= 0
  
  return currLevel - 1
}



// Other solution for this kata
func pyramid3(_ balls: Int) -> Int {
    var b = balls, n = 0
    while b > 0 {
        n += 1
        b = b - n
    }
    return b == 0 ? n : n - 1
}




// This kata in one line of code
func pyramid4(_ balls: Int) -> Int {
    (Int(sqrt(1.0 + 8.0 * Double(balls))) - 1) / 2
}
