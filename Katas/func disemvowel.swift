//
//  func disemvowel.swift
//  Katas
//
//  Created by Maks Vogtman on 02/08/2022.
//

import Foundation

// Trolls are attacking your comment section!

// A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.

// Your task is to write a function that takes a string and return a new string with all vowels removed.

// For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".

// Note: for this kata y isn't considered a vowel.


func disemvowel(_ s: String) -> String {
    var vowels: String = ""
    var result: String = ""
    
    for letter in s {
        switch letter.lowercased() {
        case "a":
            vowels.append(contentsOf: "\(letter)")
        case "e":
            vowels.append(contentsOf: "\(letter)")
        case "i":
            vowels.append(contentsOf: "\(letter)")
        case "o":
            vowels.append(contentsOf: "\(letter)")
        case "u":
            vowels.append(contentsOf: "\(letter)")
        default:
            result.append(contentsOf: "\(letter)")
        }
    }
    return result
}



// Other solution for this kata
func disemvowel2(_ s: String) -> String {
    s.replacingOccurrences(of: "[aeiou]", with: "", options: [.regularExpression, .caseInsensitive])
}


// Other solution for this kata
func disemvowel3(_ s: String) -> String {
    let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    
    return s.filter { !vowels.contains($0) }
}



// Other solution for this kata
func disemvowel4(_ s: String) -> String {
    s.filter { !["a", "e", "i", "o", "u"].contains($0.lowercased())}
}
