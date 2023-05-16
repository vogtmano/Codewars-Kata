//
//  func validParentheses.swift
//  Katas
//
//  Created by Maks Vogtman on 06/04/2023.
//

import Foundation

// Write a function that takes a string of parentheses, and determines if the order of the parentheses is valid. The function should return true if the string is valid, and false if it's invalid.

// Examples

// "()"              =>  true
// ")(()))"          =>  false
// "("               =>  false
// "(())((()())())"  =>  true


// Constraints
// 0 <= length of input <= 100

// All inputs will be strings, consisting only of characters ( and ).
// Empty strings are considered balanced (and therefore valid), and will be tested.
// For languages with mutable strings, the inputs should not be mutated.

// Protip: If you are trying to figure out why a string of parentheses is invalid, paste the parentheses into the code editor, and let the code highlighting show you!


func validParentheses(_ str: String) -> Bool {
    var balance = 0
    var openingBeforeClosing = true
    
    for char in str {
        if char == "(" {
            balance += 1
        } else if char == ")" {
            balance -= 1
            
            if balance < 0 {
                return false
            }
            
            if let openingParenth = str.firstIndex(of: "("),
                let closingParenth = str.firstIndex(of: ")"),
                openingParenth >= closingParenth {
                openingBeforeClosing = false
            }
        }
    }
    
    return balance == 0 && openingBeforeClosing
}


// Simpler solution
func validParentheses2(_ str: String) -> Bool {
    var answer = 0
    
    for i in str {
        answer = i == "(" ? answer + 1 : answer - 1
        if answer < 0 {return false}
    }
    
    return answer == 0
}



// In one line

func validParentheses3(_ str: String) -> Bool {
  str.isEmpty || (try? NSRegularExpression(pattern: str)) != nil
}
