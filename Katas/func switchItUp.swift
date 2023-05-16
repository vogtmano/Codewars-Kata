//
//  func switchItUp.swift
//  Katas
//
//  Created by Maks Vogtman on 16/02/2022.
//

import Foundation

// When provided with a number between 0-9, return it in words.

// Input :: 1

// Output :: "One".


func switchItUp(_ number: Int) -> String {
    switch number {
    case 1:
        return "One"
    case 2:
        return "Two"
    case 3:
        return "Three"
    case 4:
        return "Four"
    case 5:
        return "Five"
    case 6:
        return "Six"
    case 7:
        return "Seven"
    case 8:
        return "Eight"
    case 9:
        return "Nine"
    default:
        return "Zero"
    }
}




// other solution for this kata
func switchItUp2(_ number: Int) -> String {
    return ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"][number]
}


// other solution

func switchItUp3(_ number: Int) -> String {
  
  switch number {
  case 0...9: return ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"][number]
  case _: return "\(number)"
  }
}

