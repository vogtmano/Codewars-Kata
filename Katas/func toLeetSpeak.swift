//
//  func toLeetSpeak.swift
//  Katas
//
//  Created by Maks Vogtman on 14/04/2022.
//

import Foundation


// Your task is to write a function toLeetSpeak that converts a regular english sentence to Leetspeak.

// Consider only uppercase letters (no lowercase letters, no numbers) and spaces.

// For example:

// toLeetSpeak("LEET") returns "1337"

// In this kata we use a simple LeetSpeak dialect. Use this alphabet:



func toLeetSpeak(_ s : String) -> String {
    
    let dicti: [Character : Character] =  [
                 "A": "@",
                 "B": "8",
                 "C": "(",
                 "D": "D",
                 "E": "3",
                 "F": "F",
                 "G": "6",
                 "H": "#",
                 "I": "!",
                 "J": "J",
                 "K": "K",
                 "L": "1",
                 "M": "M",
                 "N": "N",
                 "O": "0",
                 "P": "P",
                 "Q": "Q",
                 "R": "R",
                 "S": "$",
                 "T": "7",
                 "U": "U",
                 "V": "V",
                 "W": "W",
                 "X": "X",
                 "Y": "Y",
                 "Z": "2",
                 " ": " "
    ]
    

    return String(s.compactMap{ dicti[$0] })
}





// other solution for this kata
func toLeetSpeak2(_ s : String) -> String {
  let alphabet = ["A","B","C","D","E","F","G","H","I","J",
                  "K","L","M","N","O","P","Q","R","S","T",
                  "U","V","W","X","Y","Z"]
  let leet = ["@","8","(","D","3","F","6","#","!","J","K",
              "1","M","N","0","P","Q","R","$","7","U","V",
              "W","X","Y","2"]
              
  var result = s
  for i in 0..<26 {
    result = result.replacingOccurrences(of: alphabet[i], with: leet[i])
  }
 
  return result
}

