//
//  func doesItContainSameCharacters.swift
//  Katas
//
//  Created by Maks Vogtman on 06/04/2022.
//

import Foundation


// Create a function that takes two string, and checks if they are made out of same characters
// "mama" and "mama" should return true
// "dada" and "adad" also should return true, they may be in a different order but they do contain the exact same characters: a a d d



// func doesItContainSameCharacters, that takes parameter labels: firstString and secondString, both are of type String and returns a Boolean
func doesItContainSameCharacters(firstString: String, secondString: String) -> Bool {
    // I declared a constant variable var named firstString which is of type String
    // I assigned a value of "firstString" to the variable var, named firstString
    var firstString: String = firstString
    // I declared a constant variable var named secondString which is of type String
    // I assigned a value of "secondString" to the constant variable var, named secondString
    var secondString: String = secondString
    // "if" conditional that checks if firstString with .sorted() method is equal to the secondString with .sorted() method
    if firstString.sorted() == secondString.sorted() {
        // if they are equal, return a Boolean true
        return true
    } else {
        // if they are NOT equal, return a Boolean false
        return false
    }
}



// func doesItContainSameCharacters2, that takes parameter labels: firstString and secondString, both are of type String and returns a Boolean
func doesItContainSameCharacters2(firstString: String, secondString: String) -> Bool {
    // return a Boolean true if left side of the equation IS equal to the right side of the equation, if it is NOT equal, return false
    return firstString.sorted() == secondString.sorted()
}
