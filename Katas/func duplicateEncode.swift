//
//  func duplicateEncode.swift
//  Katas
//
//  Created by Maks Vogtman on 12/10/2022.
//

import Foundation

// The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

// Examples

// "din"      =>  "((("
// "recede"   =>  "()()()"
// "Success"  =>  ")())())"
// "(( @"     =>  "))(("


func duplicateEncode(_ word: String) -> String {
    word.map { char in word.filter { $0.lowercased() == char.lowercased() }.count == 1 ? "(" : ")" }.joined()
}




// Other solution for this kata
func duplicateEncode2(_ word: String) -> String {
    var dict = [Character: Int](), word = word.lowercased()
    for letter in word { dict[letter, default: 0] += 1 }
    return word.map { dict[$0]! > 1 ? ")" : "(" }.joined()
}




// Other solution for this kata
func duplicateEncode3(_ word: String) -> String {
    let word = word.lowercased()
    var newWord = ""
    
    for char in word {
        let count = word.filter { $0 == char }.count
        newWord += count > 1 ? ")" : "("
    }
    
    return newWord
}




// Other solution for this kata
func duplicateEncode4(_ word: String) -> String {
    let word = word.lowercased()
    return String(word.map { word.firstIndex(of: $0) == word.lastIndex(of: $0) ? Character("(") : Character(")") })
}
