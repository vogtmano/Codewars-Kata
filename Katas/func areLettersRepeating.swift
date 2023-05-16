//
//  func areLettersRepeating.swift
//  Katas
//
//  Created by Maks Vogtman on 06/04/2022.
//

import Foundation

// Write a function that will check if string contains more than one letter of the same type
// If it contains the same letter more than once, return true, if it does not return false
// Method should be case-sensitive (a != A, b != B)
// Example: "This is string" - should return true because "s" repeated
// Example: "Mother" - should return false as there are no repetitive letters

// func areLettersRepeating(in - argument label ;  string - parameter label [in string] which is of type String) and returns Boolean
func areLettersRepeating(in string: String) -> Bool {
    // I declared a constant variable let, named word that is of type String
    // I assigned a value of "string" to a constant variable let, named word
    let word: String = string
    // I declared a variable, named stringArray which is of type array of Character
    // I assagned a value of an empty array to a variable named stringArray
    var stringArray: [Character] = []
    // for in loop that ITERATES THROUGH each letter in constant variable word
    for letter in word {
        // check if array stringArray contains the letter
        if stringArray.contains(letter) {
            // if it does contain a letter, return true
            // if it's true, then it means we found more that one letter of the same type and we can return true
            // end of the function
            return true
        } else {
            // if it does not contain a letter, then it means that this letter was not in the array
            // append that letter to array stringArray
            stringArray.append(letter)
        }
    }
    // that will happen only when there are no repetitive letters
    return false
}









