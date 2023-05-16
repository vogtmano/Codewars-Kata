//
//  func spinWords.swift
//  Katas
//
//  Created by Maks Vogtman on 04/10/2022.
//

import Foundation

// Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

// Examples:

// spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
// spinWords( "This is a test") => returns "This is a test"
// spinWords( "This is another test" )=> returns "This is rehtona test"


func spinWords(in sentence: String) -> String {
    sentence.components(separatedBy: " ").map { $0.count > 4 ? String($0.reversed()) : $0 }.joined(separator: " ")
}



// Same solution split
func spinWords2(in sentence: String) -> String {
    return sentence
        .components(separatedBy: " ")
        .map { $0.count > 4 ? String($0.reversed()) : $0 }
        .joined(separator: " ")
}
